<?php
/* Copyright (C) 2015 fhcomplete.org
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 *
 * Authors: Andreas Oesterreicher <andreas.oesterreicher@technikum-wien.at> 
 *
 */
/**
 * Sync_user
 */
require_once('../../../config/vilesci.config.inc.php');
require_once('../../../include/functions.inc.php');
require_once('../../../include/basis_db.class.php');
require_once('../../../include/phrasen.class.php');
require_once('../../ldap/vilesci/ldap.class.php');
require_once('../../../include/mail.class.php');
require_once('../../../include/datum.class.php');
require_once('../../../include/benutzerberechtigung.class.php');

// Wenn das Script nicht ueber Commandline gestartet wird, muss eine
// Authentifizierung stattfinden
if(php_sapi_name() != 'cli')
{
	$uid = get_uid();
	$rechte = new benutzerberechtigung();
	$rechte->getBerechtigungen($uid);
	if(!$rechte->isBerechtigt('admin'))
		die('Sie haben keine Berechtigung fuer diese Seite');
}

$p = new phrasen(DEFAULT_LANGUAGE);
ini_set('display_errors','1');
error_reporting(E_ALL);

$db = new basis_db();
$datum_obj = new datum();

//LDAP Verbindung herstellen
$ldap = new ldap();
$ldap->debug=false;
if(!$ldap->connect())
	die($ldap->errormsg);

if(isset($_GET['uid']))
	$uid = $_GET['uid'];
else
	$uid='';

$qry = "SELECT  
			vorname, nachname, uid, gebdatum, (SELECT matrikelnr FROM public.tbl_student WHERE student_uid=tbl_benutzer.uid) as matrikelnr, alias,
			(SELECT lektor FROM public.tbl_mitarbeiter WHERE mitarbeiter_uid=tbl_benutzer.uid) as lektor,
			(SELECT fixangestellt FROM public.tbl_mitarbeiter WHERE mitarbeiter_uid=tbl_benutzer.uid) as fixangestellt,
			(SELECT true FROM public.tbl_student WHERE student_uid=tbl_benutzer.uid) as student,
			(SELECT kontakt FROM public.tbl_kontakt WHERE kontakttyp='email' AND person_id=tbl_benutzer.person_id ORDER BY zustellung desc LIMIT 1) as email_privat, aktivierungscode,
			(SELECT bezeichnung FROM public.tbl_studiengang JOIN public.tbl_student USING(studiengang_kz) WHERE tbl_student.student_uid=tbl_benutzer.uid) as studiengang
		FROM
			public.tbl_benutzer
			JOIN public.tbl_person USING(person_id)
		WHERE
			tbl_benutzer.aktiv
		AND uid NOT IN('administrator','_DummyLektor')
		AND 
			(EXISTS (SELECT 1 FROM public.tbl_mitarbeiter WHERE mitarbeiter_uid=tbl_benutzer.uid AND NOT fixangestellt
				AND NOT EXISTS(SELECT 1 FROM public.tbl_benutzergruppe WHERE uid=tbl_mitarbeiter.mitarbeiter_uid AND gruppe_kurzbz='KEIN_ACCOUNT'))
			OR
			EXISTS (SELECT 1 FROM public.tbl_student JOIN public.tbl_prestudentstatus USING(prestudent_id) 
					WHERE tbl_student.student_uid=tbl_benutzer.uid AND get_rolle_prestudent(prestudent_id,null) in('Student','Incoming') AND tbl_prestudentstatus.studiensemester_kurzbz in(SELECT studiensemester_kurzbz FROM public.tbl_studiensemester where start>now())
					)
			)
		AND length(uid)<10";

if($uid!='')
	$qry.=" AND uid=".$db->db_add_param($uid);

if($result = $db->db_query($qry))
{
	while($row = $db->db_fetch_object($result))
	{

		//Suchen ob der User bereits vorhanden ist
		if(!$dn = $ldap->GetUserDN($row->uid))
		{
			if($row->matrikelnr=='')
			{
				$cn = $row->nachname.' '.$row->vorname.' ('.$row->uid.')';
				//Mitarbeiter
				$dn = 'CN='.$cn.',OU=Lehre,OU=Benutzer,DC=fh-vie,DC=ac,DC=at';
			}
			else
			{
				$cn = $row->nachname.' '.$row->vorname.' ('.$row->uid.')';
				//Studierende
				$dn = 'CN='.$cn.',OU=Lehre,OU=Benutzer,DC=fh-vie,DC=ac,DC=at';
			}
			
			//Active Directory will das Passwort in doppelten Hochkomma und UTF16LE codiert
			$utf16_passwort = 	mb_convert_encoding('"'.ACCOUNT_ACTIVATION_PASSWORD.'"', "UTF-16LE", "UTF-8");

			$data = array();
			$data['cn'] = $cn;
			$data['objectclass'] = array("top","person","organizationalPerson","user");
			$data['sn'] = $row->nachname;
			$data['givenName'] = $row->vorname;
			$data['displayName'] = $row->nachname.", ".$row->vorname;
			$data['name'] = "$row->nachname $row->vorname ($row->uid)";
			$data['mail'] = $row->uid.'@'.DOMAIN;
			$data['sAMAccountName'] = $row->uid;
			$data['userPrincipalName'] = $row->uid.'@'.DOMAIN;
		
			$data['profilePath'] = '\\\\file.fh-vie.ac.at\\p.schule$\\allgemein';
		
			if($row->gebdatum=='')
			{
				echo "<br>Ueberspringe $row->nachname $row->vorname weil kein Geburtsdatum eingetragen ist";
				continue;
			}
	
			$data['birthdate'] = $datum_obj->formatDatum($row->gebdatum,'d.m.Y');
/*
			if($row->uid==$row->alias)
				$data['proxyAddresses']=array('SMTP:'.$row->alias.'@'.DOMAIN);
			else
				$data['proxyAddresses']=array('smtp:'.$row->uid.'@'.DOMAIN, 'SMTP:'.$row->alias.'@'.DOMAIN);
*/

			if($row->lektor=='t')
			{
				$data['title']='Lehrbeauftragte/r';
				$data['eduPersonAffiliation'] = 'faculty;member';
				$data['description'] = 'Lehrbeauftragte/r';
			}
			if($row->student=='t')
			{
				$data['title']='Student/in';
				$data['eduPersonAffiliation'] = 'student;member';
				$data['department'] = $row->studiengang;
				$data['description'] = 'Studenten '.$row->studiengang;
			}
				
			
			//Passwort und UserAccountControl kann nicht beim Anlegen direkt gesetzt werden
			//Es muss nach dem Anlegen des Users gesetzt werden
			
			// UserAccountControl gibt den Status des Accounts an. Per default sind diese deaktiviert (514)
			// 512 = Normal Account
			// http://support.microsoft.com/kb/305144/en-us
			//$data["UserAccountControl"] = "512";  
			//$data["unicodepwd"] = $utf16_passwort;			
//echo "<br>$cn";
			
			if(!$ldap->Add($dn, $data))
			{
				echo "<br>Fehler beim Anlegen von $row->uid: ".$ldap->errormsg;
				continue;
			}
			else
			{

				// Nur fuer Active Directory

				// Moegliche Fehlerquellen beim setzten des Passworts:
				// - Richtigen BIND User verwenden
				// - im AD muss das setzen des Passwortes aktiviert sein
				// - Damit das Passwort gesetzt werden darf, muss die Verbindung zum AD verschluesselt sein
				// - Passwort muss der Passwort Policy des AD entsprechen (Sonderzeichen, Gross-/Kleinschreibung etc, Mind. 6 Zeichen)
				// - Passwort muss korrekt UTF16LE kodiert sein und unter doppelten Hochkomma stehen

				$data = array();
				$data['useraccountcontrol']='66048'; // Normaler Account, Passwort laeuft nicht aus
				$data['unicodepwd']=$utf16_passwort;
				if(!$ldap->Modify($dn, $data))
				{
					echo "<br>Fehler beim Setzten von UserAccountControl und Passwort von $row->uid: ".$ldap->errormsg;
					continue;
				}					

				echo "<br>$row->uid erfolgreich angelegt";
				
				/*
				$to = $row->email_privat;
				$from = 'no-reply@'.DOMAIN;
				$subject = 'Account Aktivierung';
				$link = CIS_ROOT."cis/public/accountactivation.php?username=".$row->uid."&code=".$row->aktivierungscode;

				if($row->studiengang!='')
					$stg='Studiengang:'.$row->studiengang;
				else
					$stg='Lehrender / Bediensteter';

				$text = $p->t('mail/accountaktivierung',array($row->vorname,$row->nachname,$row->uid,$row->aktivierungscode,$stg,$row->uid.'@'.DOMAIN, $link, CIS_ROOT));

				$mail = new mail($to, $from, $subject,'Wechseln Sie in die HTML Ansicht um den Inhalt anzuzeigen');
				$mail->setHTMLContent($text);
				if($mail->send())
					echo " Aktivierungsmail versandt an $to";
				else
					echo " Fehler beim senden des Mails an $to";
				*/
			}
		}
	}
}

$ldap->unbind();
echo "Done";
?>
