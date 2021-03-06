﻿<?php
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
require_once(dirname(__FILE__).'/../../ldap/vilesci/ldap.class.php');

/**
 * Prueft die Passwort Policy
 * Das Passwort muss zumindest 8 Zeichen enthalten, davon mindestens 1 Großbuchstabe,
 * 1 Kleinbuchstabe und eine Ziffer!
 * Das Passwort darf keine Leerzeichen und Umlaute enthalten!
 * Erlaubte Sonderzeichen sind: -$#[]{}!().,*:;_
 *
 * @param $passwort_neu das neue Passwort
 * @param $p Phrasen Objekt - Wenn nicht uebergeben werden die Fehler in der Default Langauge angezeigt
 * @return errormsg wenn Policy nicht erfuellt ist oder true wenn ok
 */
function check_policy($passwort_neu, $p=null)
{
	if(is_null($p))
		$p = new phrase(DEFAULT_LANGUAGE);

	// Prüfung des neuen Passwortes
	$errormsg='';
	$error=false;
	// Laenge mindestens 8 Zeichen
	if(mb_strlen($passwort_neu)<8)
	{
		$error=true;
		$errormsg .= $p->t('passwort/MinLaenge');
	}

	// Mindestens 1 Großbuchstabe
	if(!preg_match('/[A-Z]/', $passwort_neu))
	{
		$error=true;
	$errormsg .=$p->t('passwort/Grossbuchstabe');
	}
	// Mindestens 1 Kleinbuchstabe
	if(!preg_match('/[a-z]/', $passwort_neu))
	{
		$error=true;
		$errormsg .=$p->t('passwort/Kleinbuchstabe');
	}

	// Mindestens 1 Ziffer
	if(!preg_match('/[0-9]/', $passwort_neu))
	{
		$error=true;
		$errormsg .=$p->t('passwort/Ziffer');
	}

	// Keine Leerzeichen
	if(strstr($passwort_neu, ' '))
	{
		$error=true;
		$errormsg .=$p->t('passwort/Leerzeichen');
	}

	// keine Umlaute
	if(preg_match('/[ÄÖÜäöü]/', $passwort_neu))
	{
		$error=true;
		$errormsg .=$p->t('passwort/Umlaute');
	}

	// Sonderzeichen
	if(!preg_match('/^(?=.*\d)(?=.*[A-Za-z])[0-9A-Za-z\-\$#\[\]\{\}!\(\)\.,\*:;_]{8,1024}$/', $passwort_neu))
	{
		$error=true;
		$errormsg.=$p->t('passwort/Sonderzeichen');
	}

	if($error)
		return $errormsg;
	else
		return true;
}

/**
 * Aendert das Passwort im LDAP
 * @param $passwort_alt Altes (aktuelles) Passwort
 * @param $passwort_neu neues Passwort
 * @param $uid UID
 * @return true wenn erfolgreich sonst false
 */
function change_password($passwort_alt, $passwort_neu, $uid)
{
	// User DN holen
	$ldap = new ldap();
	$ldap->connect();
	$user_dn = $ldap->GetUserDN($uid);

	$oldpw64 = base64_encode(mb_convert_encoding('"'.$passwort_alt.'"', "UTF-16LE", "UTF-8"));
	$newpw64 = base64_encode(mb_convert_encoding('"'.$passwort_neu.'"', "UTF-16LE", "UTF-8"));

	/*
	 * Die PHP Funktionen koennen das Passwort nicht direkt weil im gleichen Schritt das
	 * alte Passwort entfernt und das neue gesetzt werden muss.
	 * Deshalb wird das Commandlinetool ldapmodify verwendet um das Passwort zu aendern.
	 *
	 * Dazu wird zuerst eine LDIF Datei erstellt mit den entsprechenden Informationen
	 * und danach an das Commandlinetool uebergeben.
	 */

	$ldif='';
	$ldif.="dn: $user_dn\n";
	$ldif.="changetype: modify\n";
	$ldif.="delete: unicodePwd\n";
	$ldif.="unicodePwd:: $oldpw64\n";
	$ldif.="-\n";
	$ldif.="add: unicodePwd\n";
	$ldif.="unicodePwd:: $newpw64\n";
	$ldif.="-\n";

	setlocale(LC_CTYPE, "de_AT.UTF-8");

	// ldapmodify auf der Commandline ausfuehren
	$cmd = sprintf("/usr/bin/ldapmodify -H %s -D %s -x -w %s", escapeshellarg(LDAP_SERVER_MASTER), escapeshellarg($user_dn), escapeshellarg($passwort_alt));
	if (($fh = popen($cmd, 'w')) === false )
		return 'LDAP Connect fehlgeschlagen.';

	// LDIF Anweisung uebergeben
	fwrite($fh, "$ldif\n");
	$retstatus=pclose($fh);

	if ($retstatus==0)
	{
		// Alles OK Passwort geaendert
		return true;
	}
	else 	
		return 'Passwortänderung fehlgeschlagen. Mögliche Gründe: Passwort wurde früher bereits verwendet; Passwort wurde innerhalb der letzten 24 Stunden bereits geändert.';
}
?>
