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
 * Synct die Gruppen und Teilnehmer vom FH-Complete ins LDAP damit
 * daraus Mailverteiler erstellt werden koennen
 */
/*
- alle Gruppen werden aus LDAP geholt
- alle Spezialgruppen werden aus FH-Complete geholt
- Schauen welche Gruppen im LDAP fehlen und ggf anlegen
- User aus den Gruppen holen
- Neue User hinzufügen
- User die nicht mehr hineingehoeren werden geloescht
- selbiges für Lehrverbandsgruppen
*/
require_once('../../../config/vilesci.config.inc.php');
require_once('../../../include/functions.inc.php');
require_once('../../../include/basis_db.class.php');
require_once('../../ldap/vilesci/ldap.class.php');
require_once('../../../include/studiensemester.class.php');
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

$stsem_obj = new studiensemester();
$stsem = $stsem_obj->getAktorNext();
echo "Verwendetes Studiensemester:".$stsem;
$db = new basis_db();

$qry = "SELECT
			lower(gruppe_kurzbz) as gruppe_kurzbz, gid
		FROM
			public.tbl_gruppe
		WHERE
			mailgrp=true
			AND aktiv=true
			";

//$qry.=" AND gruppe_kurzbz IN('STUDENTEN')";

$ldap = new ldap();
$ldap->connect();


// Alle Gruppen und Member aus AD laden
$gruppen = $ldap->getGroups('dc=fh-vie,dc=ac,dc=at','objectClass=Group');
$liste = array();

foreach($gruppen as $row_gruppen)
{
	// Alle Gruppen und zuteilten Member werden in ein Array gespeichert
	if($row_gruppen['cn'][0]!='')
	{
		$name = mb_strtolower($row_gruppen['cn'][0]);
		$liste[$name]['member']=array();
		$liste[$name]['dn']=$row_gruppen['dn'];
		$member = $ldap->getGroupMember($row_gruppen['cn'][0],'dc=fh-vie,dc=ac,dc=at','objectClass=Group');
		if(isset($member[0]['member']))
		{
			foreach($member[0]['member'] as $key=>$row_member)
			{
				if($key!=='count')
				{
					$liste[$name]['member'][]=$row_member;
				}
			}
		}
	}
}
//echo print_r($liste,true);
echo '<br><br>';

if($result = $db->db_query($qry))
{
	while($row = $db->db_fetch_object($result))
	{
		echo "\n<br>".$row->gruppe_kurzbz.' ';
		if(!isset($liste[$row->gruppe_kurzbz]))
		{
			// Wenn die Gruppe im LDAP nicht vorhanden ist
			// dann alegen
			GruppeAnlegen($row->gruppe_kurzbz, $row->gid);
			$liste[$row->gruppe_kurzbz]=array();
			$liste[$row->gruppe_kurzbz]['member']=array();
			$liste[$row->gruppe_kurzbz]['dn']= "cn=".$row->gruppe_kurzbz.",ou=Lehre,ou=Benutzer,dc=fh-vie,dc=ac,dc=at";
		}

		// Teilnehmer der Gruppe Laden
		$qry = "SELECT uid FROM public.tbl_benutzergruppe
			WHERE lower(gruppe_kurzbz)=".$db->db_add_param($row->gruppe_kurzbz).
			" AND (studiensemester_kurzbz is null OR studiensemester_kurzbz=".$db->db_add_param($stsem).")";

		$memberlist=array();
		if($result_member = $db->db_query($qry))
		{
			while($row_member = $db->db_fetch_object($result_member))
			{
				//echo '<br> - '.$row_member->uid.' ';

				// Wenn Person nicht in der LDAP Gruppe ist
				// dann hinzufuegen
				$user_dn = $ldap->GetUserDn($row_member->uid);
				if(!in_array($user_dn, $liste[$row->gruppe_kurzbz]['member']))
				{
					addMember($row_member->uid, $liste[$row->gruppe_kurzbz]['dn']);
				}
				$memberlist[]=$user_dn;
			}

			// Alle Teilnehmer die im LDAP der Gruppe zugeteilt sind
			// im FHComplete aber nicht, werden aus der Gruppe entfernt
			$diff = array_diff($liste[$row->gruppe_kurzbz]['member'],$memberlist);
			foreach($diff as $userdn)
			{
				removeMember($userdn, $liste[$row->gruppe_kurzbz]['dn']);
			}
		}
	}
}


// Lehrverbandsgruppen synchronisieren
$qry = "SELECT uid, studiengang_kz, semester, verband, gruppe, lower(typ || kurzbz) as kuerzel
	FROM campus.vw_student JOIN public.tbl_studiengang USING(studiengang_kz)
	WHERE vw_student.aktiv AND tbl_studiengang.aktiv
	AND EXISTS(SELECT 1 FROM public.tbl_prestudentstatus WHERE prestudent_id=vw_student.prestudent_id AND studiensemester_kurzbz=".$db->db_add_param($stsem).")
	AND NOT EXISTS(SELECT 1 FROM public.tbl_prestudentstatus WHERE prestudent_id=vw_student.prestudent_id AND status_kurzbz='Abbrecher')
	AND NOT (uid like 'fhb%' AND length(uid)>10)";

//$qry.=" AND tbl_studiengang.studiengang_kz=389";

if($result = $db->db_query($qry))
{
	$lvbgruppen=array();

	while($row = $db->db_fetch_object($result))
	{
		// Semesterverteiler bel1@example.com
		$bezeichnung=mb_strtolower($row->kuerzel.$row->semester);
		if(!isset($lvbgruppen[$bezeichnung]))
		{
			$lvbgruppen[$bezeichnung]=array();
			$lvbgruppen[$bezeichnung]['gid']=getGID($row->studiengang_kz, $row->semester);
		}
		$lvbgruppen[$bezeichnung]['member'][]=$row->uid;
		if(trim($row->verband)!='')
		{
			// Verbandsverteiler bel1a@example.com
			$bezeichnung=mb_strtolower($row->kuerzel.$row->semester.$row->verband);
			if(!isset($lvbgruppen[$bezeichnung]))
			{
				$lvbgruppen[$bezeichnung]=array();
				$lvbgruppen[$bezeichnung]['gid']=getGID($row->studiengang_kz, $row->semester, $row->verband);
			}
			$lvbgruppen[$bezeichnung]['member'][]=$row->uid;
			if(trim($row->gruppe)!='')
			{
				// Gruppenverteiler bel1a1@example.com
				$bezeichnung=mb_strtolower($row->kuerzel.$row->semester.$row->verband.$row->gruppe);
				if(!isset($lvbgruppen[$bezeichnung]))
				{
					$lvbgruppen[$bezeichnung]=array();
					$lvbgruppen[$bezeichnung]['gid']=getGID($row->studiengang_kz, $row->semester, $row->verband, $row->gruppe);
				}
				$lvbgruppen[$bezeichnung]['member'][]=$row->uid;
			}
		}
	}
	//var_dump($lvbgruppen);
}
foreach($lvbgruppen as $gruppe_kurzbz=>$row)
{
	if(!isset($liste[$gruppe_kurzbz]))
	{
		// Wenn die Gruppe im LDAP nicht vorhanden ist
		// dann alegen
		GruppeAnlegen($gruppe_kurzbz, $row['gid']);
		$liste[$gruppe_kurzbz]=array();
		$liste[$gruppe_kurzbz]['member']=array();
		$liste[$gruppe_kurzbz]['dn']= "cn=$gruppe_kurzbz,ou=Lehre,ou=Benutzer,dc=fh-vie,dc=ac,dc=at";
	}

	$memberlist=array();
	if(isset($row['member']))
	{
		foreach($row['member'] as $row_member)
		{
			// Wenn Person nicht in der LDAP Gruppe ist
			// dann hinzufuegen
			$user_dn = $ldap->GetUserDn($row_member);
			if(!in_array($user_dn, $liste[$gruppe_kurzbz]['member']))
			{
				addMember($row_member, $liste[$gruppe_kurzbz]['dn']);
			}
			$memberlist[]=$user_dn;
		}
	}
	// Alle Teilnehmer die im LDAP der Gruppe zugeteilt sind
	// im FHComplete aber nicht, werden aus der Gruppe entfernt
	$diff = array_diff($liste[$gruppe_kurzbz]['member'],$memberlist);
	foreach($diff as $userdn)
	{
		removeMember($userdn, $liste[$gruppe_kurzbz]['dn']);
	}
}

/**
 * Laedt die GID der Lehrverbandsgruppe
 * @param $studiengang_kz
 * @param $semester
 * @param $verband
 * @param $gruppe
 */
function getGID($studiengang_kz, $semester, $verband='', $gruppe='')
{
	global $db;

	$qry = "SELECT gid FROM public.tbl_lehrverband
		WHERE studiengang_kz=".$db->db_add_param($studiengang_kz).
	" AND semester=".$db->db_add_param($semester);

	if($verband!='')
		$qry.=" AND verband=".$db->db_add_param($verband);

	if($gruppe!='')
		$qry.=" AND verband=".$db->db_add_param($gruppe);

	if($result = $db->db_query($qry))
		if($row = $db->db_fetch_object($result))
			return $row->gid;
}

/**
 * Legt eine neue Gruppe im LDAP an
 * @param $gruppe_kurzbz
 * @param $gid
 */
function GruppeAnlegen($gruppe_kurzbz, $gid)
{
	global $ldap;

	echo "<br>ADD GROUP ".$gruppe_kurzbz;

    $data = array();

    $data["cn"] = $gruppe_kurzbz;
    $data["description"] = $gruppe_kurzbz;
    $data['proxyAddresses']=array('SMTP:'.$gruppe_kurzbz.'@'.DOMAIN);
    $data['displayName'] = $gruppe_kurzbz;
    $data['mail'] = $gruppe_kurzbz.'@'.DOMAIN;

	/*
    $data["objectClass"] = array('top','posixGroup');
	$data["gidnumber"]=(int)$gid;
	*/
	$data["objectClass"]=array('top','group');
	$data["groupType"]="2";
	$data["sAMAccountName"]=$gruppe_kurzbz;

	$dn = "cn=$gruppe_kurzbz,ou=Lehre,ou=Benutzer,dc=fh-vie,dc=ac,dc=at";
echo "DN: ".$dn;
	$ldap->Add($dn, $data);
}

/**
 * Fuegt einen Teilnehmer in eine Gruppe hinzu
 * @param $uid
 * @param $gruppe_kurzbz
 */
function addMember($uid, $group_dn)
{
	global $ldap;

	echo "<br> ADD MEMBER $uid to $group_dn";

	$user_dn = $ldap->GetUserDn($uid);
	//echo "UserDN:".$user_dn;
	if($user_dn=='')
	{
		echo "<br>SKIP User $uid - nicht im AD";
		return false;
	}
	$data=array();
	$data['member'][] = $user_dn;

	ldap_mod_add ($ldap->ldap_conn, $group_dn, $data);

	//$ldap->AddGroupMember($dn, $uid);
}

/**
 * Entfernt einen Teilnehmer aus einer Gruppe
 * @param $uid
 * @param $gruppe_kurzbz
 */
function removeMember($user_dn, $group_dn)
{
	global $ldap;

	// Alle die in cn=Users drinnen sind nicht rauswerfen
	if(stristr($user_dn,'cn=Users'))
		return;

	// Nur Leute in der Lehre ou werden automatisch aus Gruppen entfernt
	if(!stristr($user_dn,'ou=Lehre'))
		return;

	echo "<br> REMOVE MEMBER $user_dn from $group_dn";

	$data=array();
	$data['member'][] = $user_dn;

	ldap_mod_del ($ldap->ldap_conn, $group_dn, $data);

}
?>
