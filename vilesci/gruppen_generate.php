<?php
/* Copyright (C) 2014 fhcomplete.org
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
 */
/**
 * Erstellt automatische Gruppenzuordnungen fuer Studenten/Mitarbeiter Gruppen
 */
require_once('../../../config/vilesci.config.inc.php');
require_once('../../../include/functions.inc.php');
require_once('../../../include/studiensemester.class.php');
require_once('../../../include/organisationseinheit.class.php');
require_once('../../../include/gruppe.class.php');

$error_msg='';
?>
<HTML>
<HEAD>
	<TITLE>Gruppen</TITLE>
	<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<LINK rel="stylesheet" href="../../../skin/vilesci.css" type="text/css">
</HEAD>
<BODY>
	<h1>Gruppen abgleich</h1>
	<?php
	$db = new basis_db();
	
   	// aktuelles Studiensemester ermitteln
	$sql_query="SELECT studiensemester_kurzbz FROM public.vw_studiensemester ORDER BY delta LIMIT 1";
	if(!($result = $db->db_query($sql_query)))
		$error_msg.=$db->db_last_error();
	if($row = $db->db_fetch_object($result))
		$studiensemester=$row->studiensemester_kurzbz;
	else
		$error_msg.= $db->db_last_error().$sql_query;
	
	$stsem_obj = new studiensemester();
	
	if(mb_substr($studiensemester,0,1)=='W')
		$stsem2 = $stsem_obj->getPreviousFrom($studiensemester);
	else 
		$stsem2 = $stsem_obj->getNextFrom($studiensemester);
	
	function setGeneriert($gruppe)
	{
		$db = new basis_db();
		$qry = "UPDATE public.tbl_gruppe SET generiert=true WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($gruppe).")";
		$db->db_query($qry);
	}
	
   	// **************************************************************
	// Mitarbeiter Verteiler abgleichen
	$mlist_name='mitarbeiter';
	setGeneriert($mlist_name);
	// MitarbeiterInnen holen die nicht mehr in den Verteiler gehoeren
	echo $mlist_name.' wird abgeglichen!<BR>';
	flush();
	$sql_query="SELECT uid FROM public.tbl_benutzergruppe 
			WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name).") 
			AND uid NOT IN (SELECT mitarbeiter_uid 
					FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON (mitarbeiter_uid=uid) 
					WHERE aktiv AND personalnummer >=0)";
	
	if(!($result = $db->db_query($sql_query)))
		$error_msg.=$db->db_last_error();

	while($row = $db->db_fetch_object($result))
	{
     	$sql_query="DELETE FROM public.tbl_benutzergruppe WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name).") AND uid=".$db->db_add_param($row->uid);
		if(!$db->db_query($sql_query))
			$error_msg.=$db->db_last_error().$sql_query;
		echo '-';
		flush();
	}
	// MitarbeiterInnen holen die nicht im Verteiler sind
	echo '<BR>';
	$sql_query="SELECT mitarbeiter_uid AS uid 
			FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON (mitarbeiter_uid=uid) 
			WHERE aktiv AND personalnummer >=0 
			AND mitarbeiter_uid NOT IN (SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name)."))";
	if(!($result = $db->db_query($sql_query)))
		$error_msg.= $db->db_last_error();
	while($row = $db->db_fetch_object($result))
	{
     	$sql_query="INSERT INTO public.tbl_benutzergruppe(uid, gruppe_kurzbz, insertamum, insertvon) 
			VALUES (".$db->db_add_param($row->uid).",".$db->db_add_param(strtoupper($mlist_name)).", now(), 'mlists_generate')";
		if(!$db->db_query($sql_query))
			$error_msg.=$db->db_last_error().$sql_query;
		echo '-';
		flush();
	}
	
	// **************************************************************
	// Verteiler fuer alle externen Lektoren abgleichen
	$mlist_name='lehrende_ext';
	setGeneriert($mlist_name);
	// Lektoren holen die nicht mehr in den Verteiler gehoeren
	echo '<BR>'.$mlist_name.' wird abgeglichen!<BR>';
	flush();
	$sql_query="SELECT uid FROM public.tbl_benutzergruppe 
			WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name).") 
			AND uid NOT IN (SELECT mitarbeiter_uid 
					FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) 
					WHERE aktiv AND NOT fixangestellt AND lektor)";
	if(!($result = $db->db_query($sql_query)))
		$error_msg.=$db->db_last_error();
	while($row=$db->db_fetch_object($result))
	{
     	$sql_query="DELETE FROM public.tbl_benutzergruppe WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name).") AND uid=".$db->db_add_param($row->uid);
		if(!$db->db_query($sql_query))
			$error_msg.=$db->db_last_error().$sql_query;
		echo '-';
		flush();
	}
	// Lektoren holen die nicht im Verteiler sind
	echo '<BR>';
	$sql_query="SELECT mitarbeiter_uid AS uid 
			FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) 
			WHERE NOT fixangestellt AND lektor AND aktiv
				AND mitarbeiter_uid NOT IN (SELECT uid FROM public.tbl_benutzergruppe 
					WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist_name)."))";
	if(!($result = $db->db_query($sql_query)))
		$error_msg.=$db->db_last_error();
	while($row = $db->db_fetch_object($result))
	{
     	$sql_query="INSERT INTO public.tbl_benutzergruppe(uid, gruppe_kurzbz, insertamum, insertvon) 
			VALUES (".$db->db_add_param($row->uid).",".$db->db_add_param(strtoupper($mlist_name)).", now(), 'mlists_generate')";

		if(!$db->db_query($sql_query))
			$error_msg.=$db->db_last_error().$sql_query;
		echo '-';
		flush();
	}

	// ***************************
	// Studierende abgleichen
    flush();
	$mlist = 'studierende';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

    //Abbrecher bleiben noch 3 Wochen im Verteiler
    //andere inaktive noch fuer 20 Wochen
    //damit im CIS die Menuepunkte fuer Studierende richtig angezeigt werden    
	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(SELECT uid FROM campus.vw_student WHERE aktiv
					UNION
					SELECT uid FROM campus.vw_student WHERE aktiv=false AND get_rolle_prestudent(vw_student.prestudent_id, null)='Abbrecher' AND updateaktivam>now()-'3 weeks'::interval
					UNION
					SELECT uid FROM campus.vw_student WHERE aktiv=false AND get_rolle_prestudent(vw_student.prestudent_id, null)!='Abbrecher' AND updateaktivam>now()-'20 weeks'::interval
				)";
	if($result = $db->db_query($sql_query))
	{
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	}
	else
	{
		$error_msg.=$db->db_last_error();
	}
	
	// Studenten holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM campus.vw_student 
				WHERE (aktiv 
						OR 
						(aktiv=false AND get_rolle_prestudent(vw_student.prestudent_id, null)='Abbrecher' AND updateaktivam>now()-'3 weeks'::interval)
						OR
						(aktiv=false AND get_rolle_prestudent(vw_student.prestudent_id, null)!='Abbrecher' AND updateaktivam>now()-'20 weeks'::interval))
				AND uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";
	if($result = $db->db_query($sql_query))
	{
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	}
	else
		$error_msg.=$db->db_last_error();


	// ******* Papercut ************ Alle Studenten und alle Mitarbeiter
    flush();
	$mlist = 'papercut';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(
					SELECT uid FROM public.tbl_benutzer
				)";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	else
		$error_msg.=$db->db_last_error();
	
	// Studenten holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM public.tbl_benutzer
				WHERE uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	else
		$error_msg.=$db->db_last_error();
	

	// ******* WLAN ************ Studenten und lektoren
    flush();
	$mlist = 'wlan-access';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(
					SELECT mitarbeiter_uid FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) WHERE NOT fixangestellt AND lektor AND aktiv
					UNION
					SELECT student_uid FROM public.tbl_student JOIN public.tbl_benutzer ON(uid=student_uid) WHERE aktiv AND get_rolle_prestudent(prestudent_id, null) in('Student','Incoming','Diplomand')
				)";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	else
		$error_msg.=$db->db_last_error();
	
	// Personen holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM 
					(SELECT mitarbeiter_uid as uid FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) WHERE NOT fixangestellt AND lektor AND aktiv
					UNION
					SELECT student_uid as uid FROM public.tbl_student JOIN public.tbl_benutzer on(uid=student_uid) WHERE aktiv AND get_rolle_prestudent(prestudent_id, null) in('Student','Incoming','Diplomand')
					) as a
				WHERE uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	else
		$error_msg.=$db->db_last_error();

	// ******* VPN ************ Alle Studenten
    flush();
	$mlist = 'vpn-access';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(SELECT uid FROM campus.vw_student WHERE aktiv AND get_rolle_prestudent(vw_student.prestudent_id, null) IN ('Student','Incoming','Diplomand')
				)";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	else
		$error_msg.=$db->db_last_error();
	
	// Studenten holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM campus.vw_student 
				WHERE aktiv AND get_rolle_prestudent(vw_student.prestudent_id, null) IN ('Student','Incoming','Diplomand')
				AND uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	else
		$error_msg.=$db->db_last_error();

	// ******* lektoren ************
    flush();
	$mlist = 'lektoren';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(
						SELECT mitarbeiter_uid 
						FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) 
						WHERE NOT fixangestellt AND aktiv AND lektor
				)";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	else
		$error_msg.=$db->db_last_error();
	
	// lektoren holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT mitarbeiter_uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM public.tbl_mitarbeiter JOIN public.tbl_benutzer ON(uid=mitarbeiter_uid) 
				WHERE NOT fixangestellt AND aktiv AND lektor
				AND mitarbeiter_uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	else
		$error_msg.=$db->db_last_error();

	// ******* Absolventen ************
    flush();
	$mlist = 'absolventen';
    setGeneriert($mlist);
    echo '<br>'.$mlist.' wird abgeglichen!<br>';

	$sql_query="DELETE FROM public.tbl_benutzergruppe 
				WHERE UPPER(gruppe_kurzbz)=UPPER(".$db->db_add_param($mlist).")	
				AND uid not in 
					(SELECT 
						student_uid 
					FROM 
						public.tbl_student 
					WHERE EXISTS(SELECT 1 FROM public.tbl_prestudentstatus WHERE prestudent_id=tbl_student.prestudent_id AND status_kurzbz='Absolvent')					
				)";
	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege entfernt<br>';
	else
		$error_msg.=$db->db_last_error();
	
	// Absolventen holen die nicht im Verteiler sind
	$sql_query="INSERT INTO public.tbl_benutzergruppe (uid, gruppe_kurzbz, insertamum, insertvon) 
				SELECT student_uid,UPPER('".$mlist."'),now(),'mlists_generate' 
				FROM 
					public.tbl_student 
				WHERE EXISTS(SELECT 1 FROM public.tbl_prestudentstatus WHERE prestudent_id=tbl_student.prestudent_id AND status_kurzbz='Absolvent')
				AND student_uid NOT in(SELECT uid FROM public.tbl_benutzergruppe 
								WHERE UPPER(gruppe_kurzbz)=UPPER('".$mlist."'))";

	if($result = $db->db_query($sql_query))
		echo $db->db_affected_rows($result).' Eintraege hinzugefuegt<br>';
	else
		$error_msg.=$db->db_last_error();

	echo $error_msg;
	?>
	<BR>
	<P>
  		Die Gruppen wurden abgeglichen. <BR>
  	</P>
</BODY>
</HTML>
