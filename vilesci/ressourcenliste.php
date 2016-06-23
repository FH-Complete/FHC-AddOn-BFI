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
 * Authors: Andreas Österreicher <oesi@technikum-wien.at>
 */

require_once('../../../config/vilesci.config.inc.php');
require_once('../../../include/functions.inc.php');
require_once('../../../include/benutzerberechtigung.class.php');

$uid = get_uid();
$rechte = new benutzerberechtigung();
$rechte->getBerechtigungen($uid);
if(!$rechte->isBerechtigt('lehre/lvplan'))
	die('Keine Berechtigung:'.$rechte->errormsg);
?>

<!DOCTYPE HTML>
<html>
<head>
	<title>Ressourcen</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="../../../skin/vilesci.css" type="text/css">
	<link rel="stylesheet" href="../../../skin/jquery-ui-1.9.2.custom.min.css" type="text/css">
	<script type="text/javascript" src="../../../include/js/jquery1.9.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function()
	{
	    $(".datepicker").datepicker($.datepicker.regional['de']).datepicker("setDate", new Date());
	});

	</script>
</head>
<body>
<h1>Ressourcenliste</h1>
	<form method="get" action="../../../content/pdfExport.php" >
		<input type="hidden" name="xsl" value="Ressource" />
		<input type="hidden" name="output" value="pdf" />
		<input type="hidden" name="xmlformat" value="xml" />
		<input type="hidden" name="xml" value="stundenplan_betriebsmittel.rdf.php" />

		<table>
		<tbody>
			<tr>
				<td>Von</td>
				<td><input type="text" name="von" class="datepicker" id="von" size="10" autocomplete="off" /></td>
			</tr>
			<tr>
				<td>Bis</td>
				<td><input type="text" name="bis" class="datepicker" id="bis" size="10" autocomplete="off" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Erstellen"/></td>
			</tr>
		</tbody>
		</table>
	</form>
</body>
</html>
