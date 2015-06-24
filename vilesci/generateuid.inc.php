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
	$qry="SELECT substring(uid,6) as lastid FROM public.tbl_benutzer WHERE uid like '".$db->db_escape($uid)."%' ORDER BY 1 desc LIMIT 1";
	$lastid=0;
	if($result = $db->db_query($qry))
	{
		if($row = $db->db_fetch_object($result))
		{
			$lastid = $row->lastid;
		}
	}
	else
	{
		die('Fehler beim Generieren der UID');
	}
	$uid.= sprintf('%04s',($lastid+1));
	return $uid;
}

/**
 * Gerneriert die Mitarbeiter UID
 * Format v.nachname max 20 Zeichen
 */
function generateMitarbeiterUID($vorname, $nachname, $lektor)
{
	$bn = new benutzer();
	$uid='';
	
	// Nachname wird so lange verkuerzt bis eine eindeutige UID entsteht die noch nicht vergeben ist
	for($nn=18;$nn!=0;$nn--)
	{
		$uid = mb_substr($vorname,0,1);
		$uid .= '.'.mb_substr($nachname,0,$nn);
				
		$uid = mb_str_replace(' ','',$uid);
		$uid = mb_str_replace('-','',$uid);

		$uid = mb_strtolower($uid);
		if(!$bn->uid_exists($uid))
			return $uid;
	}
	return false;
}
