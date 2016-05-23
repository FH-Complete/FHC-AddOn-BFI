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
require_once('../../../include/datum.class.php');

$uid = get_uid();
$rechte = new benutzerberechtigung();
$rechte->getBerechtigungen($uid);
if(!$rechte->isBerechtigt('lehre/lvplan'))
	die('Keine Berechtigung:'.$rechte->errormsg);

$db = new basis_db();
if(isset($_GET['von']) && isset($_GET['bis']))
{
	$von = $_GET['von'];
	$bis = $_GET['bis'];
}
else
{
	$von = date('Y-m-d');
	$bis = date('Y-m-d');
}
?>

<!DOCTYPE HTML>
<html>
<head>
	<title>Stockwerksauslastung</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="../../../skin/vilesci.css" type="text/css">
	<link rel="stylesheet" href="../../../skin/tablesort.css" type="text/css">
	<link rel="stylesheet" href="../../../skin/jquery-ui-1.9.2.custom.min.css" type="text/css">
	<script type="text/javascript" src="../../../include/js/jquery1.9.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function()
	{
	    $(".datepicker").datepicker($.datepicker.regional['de']);

		$(document).ready(function()
			{
				$("#t1").tablesorter(
				{
					sortList: [[0,0]],
					widgets: ["zebra"]
				});
			});
	});

	</script>
</head>
<body>
<h1>Stockwerksauslastung</h1>

<form method="get" >
	<table>
		<tbody>
			<tr>
				<td>Von</td>
				<td><input type="text" name="von" class="datepicker" id="von" size="10" autocomplete="off" value="<?php echo $db->convert_html_chars($von);?>"/></td>
			</tr>
			<tr>
				<td>Bis</td>
				<td><input type="text" name="bis" class="datepicker" id="bis" size="10" autocomplete="off" value="<?php echo $db->convert_html_chars($bis);?>"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Erstellen"/></td>
			</tr>
		</tbody>
	</table>
</form>

<?php
if(isset($_GET['von']) && isset($_GET['bis']))
{
	$von = $_GET['von'];
	$bis = $_GET['bis'];

	$datum_obj = new datum();
	$von = $datum_obj->formatDatum($von, 'Y-m-d');
	$bis = $datum_obj->formatDatum($bis, 'Y-m-d');

	$qry="
	SELECT
		datum, stunde, sum(teilnehmer) as anzahl
	FROM
		(
			SELECT
				datum, stunde, stockwerk,
				(SELECT count(*) FROM campus.vw_student_lehrveranstaltung WHERE lehreinheit_id=a.lehreinheit_id
					AND NOT EXISTS(SELECT 1 FROM lehre.tbl_zeugnisnote JOIN lehre.tbl_note USING(note)
					WHERE tbl_zeugnisnote.prestudent_id=vw_student_lehrveranstaltung.prestudent_id AND lehrveranstaltung_id=vw_student_lehrveranstaltung.lehrveranstaltung_id AND tbl_note.positiv))
				as teilnehmer
			FROM
			(
				SELECT distinct datum, stunde, stockwerk, lehreinheit_id
				FROM lehre.tbl_stundenplan JOIN public.tbl_ort USING(ort_kurzbz)
				WHERE datum>=".$db->db_add_param($von)." AND datum<=".$db->db_add_param($bis)." AND stockwerk is not null AND standort_id=3
			) a
		) b
	WHERE stockwerk in(1,2,3)
	GROUP BY datum, stunde
	HAVING sum(teilnehmer)>600
	ORDER BY datum, stunde";

	echo 'Zu folgenden Zeiten sind mehr als 600 Personen in Stockwerk 1, 2 und 3:';
	if($result = $db->db_query($qry))
	{
		echo '<table id="t1" class="tablesorter">
				<thead>
			<tr>
				<th>Datum</th>
				<th>Stunde</th>
				<th>Anzahl Studierende</th>
			</tr>
			<tbody>';
		while($row = $db->db_fetch_object($result))
		{
			echo '<tr>';
			echo '<td>'.$row->datum.'</td>';
			echo '<td>'.$row->stunde.'</td>';
			echo '<td>'.$row->anzahl.'</td>';
			echo '</tr>';
		}
		echo '</tbody></table>';
	}
}
?>
</body>
</html>
