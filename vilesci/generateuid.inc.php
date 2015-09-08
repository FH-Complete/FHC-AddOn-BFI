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
* Authors: Andreas Oesterreicher <andreas.oesterreicher@technikum-wien.at> and
*/
/**
 * Benutzerdefinierte Funktion zur Generierung der UIDs
 */
/**
 * Generiert die UID für Studierende
 * FORMAT: fhb150001
 */
function generateUID($stgkzl,$jahr, $stgtyp, $matrikelnummer)
{
	$db = new basis_db();
	$uid = 'fhb'.date('y');
	$qry="
	SELECT
		lpad(id::text,4,'0') as freeid
	FROM
		generate_series(1,9999) as s(id)
	WHERE
		lpad(id::text,4,'0') not in(SELECT substring(uid,6) as ids FROM public.tbl_benutzer WHERE uid like '".$uid."%') limit 1
	";
	$lastid=0;
	if($result = $db->db_query($qry))
	{
		if($row = $db->db_fetch_object($result))
		{
			$freeid = $row->freeid;
		}
	}
	else
	{
		die('Fehler beim Generieren der UID');
	}
	$uid.= sprintf('%04s',($freeid));
	return $uid;
}

/**
 * Gerneriert die Mitarbeiter UID
 * Format 
 * Fixangestellte: vorname.nachname max 20 Zeichen
 * Freie Lektoren: fhb+JAHR+lfdNummer
 */
function generateMitarbeiterUID($vorname, $nachname, $lektor, $fixangestellt=true)
{
	$bn = new benutzer();
	$uid='';

	// Fixangestellte bekommen eine UID mit vorname.nachname alle anderen eine fhb15...
	if($fixangestellt)
	{
		// Nachname wird so lange verkuerzt bis eine eindeutige UID entsteht die noch nicht vergeben ist
		for($nn=mb_strlen($nachname);$nn!=0;$nn--)
		{
			$uid = mb_substr($vorname.'.'.mb_substr($nachname,0,$nn),0,20);

			$uid = mb_str_replace(' ','',$uid);
			$uid = mb_str_replace('-','',$uid);

			$uid = mb_strtolower($uid);
			if(!$bn->uid_exists($uid))
				return $uid;
		}
	}
	else
	{
		$db = new basis_db();
		$uid = 'fhb'.date('y');
		$qry="
		SELECT
			lpad(id::text,4,'0') as freeid
		FROM
			generate_series(1,9999) as s(id)
		WHERE
			lpad(id::text,4,'0') not in(SELECT substring(uid,6) as ids FROM public.tbl_benutzer WHERE uid like '".$uid."%') limit 1
		";
		$lastid=0;
		if($result = $db->db_query($qry))
		{
			if($row = $db->db_fetch_object($result))
			{
				$freeid = $row->freeid;
			}
		}
		else
		{
			die('Fehler beim Generieren der UID');
		}
		$uid.= sprintf('%04s',($freeid));
		return $uid;

	}
	return false;
}
