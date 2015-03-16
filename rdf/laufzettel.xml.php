<?php
/* Copyright (C) 2006 Technikum-Wien
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
 * Authors: Manfred Kindl <manfred.kindl@technikum-wien.at>.
 */
/**
 * Erstellt das XML fuer den Laufzettel
 */
// content type setzen
header("Content-type: application/xhtml+xml");
require_once('../../../config/vilesci.config.inc.php');
require_once('../../../include/functions.inc.php');
require_once('../../../include/basis_db.class.php');
require_once('../../../include/benutzerberechtigung.class.php');
require_once('../../../include/prestudent.class.php');
require_once('../../../include/person.class.php');
require_once('../../../include/adresse.class.php');
require_once('../../../include/zgv.class.php');
require_once('../../../include/studiengang.class.php');
require_once('../../../include/mitarbeiter.class.php');
require_once('../../../include/dokument.class.php');
require_once('../../../include/akte.class.php');
require_once('../../../include/nation.class.php');
require_once('../../../include/bisberufstaetigkeit.class.php');

if(isset($_GET['prestudent_id']))
	$prestudent_id = $_GET['prestudent_id'];
else 
	die('Prestudent_ID muss uebergeben werden');

if(isset($_SERVER['REMOTE_USER']))
{
	// Wenn das Script direkt aufgerufen wird muss es ein Admin sein
	$user=get_uid();
	$berechtigung = new benutzerberechtigung();
	$berechtigung->getBerechtigungen($user);
	if(!$berechtigung->isBerechtigt('admin'))
		die('Sie haben keine Berechtigung fuer diese Seite');
}

$prestudent_id_arr = explode(";",$prestudent_id);
	
echo "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>";
echo '<laufzettel_prestudenten>';

$db = new basis_db();

foreach ($prestudent_id_arr as $prestd)
{
	$prestudent = new prestudent();
	//$prestudent->load($prestd);

	if($prestd=='') //???
		continue;
		
	if($prestudent->load($prestd))
	{
		$person = new person();
		$person->load($prestudent->person_id);
		
		$zgv = new zgv();
		$zgv->load($prestudent->zgv_code);
		
		$zgvmas = new zgv();
		$zgvmas->load_mas($prestudent->zgvmas_code);
		
		$studiengang = new studiengang();
		$studiengang->load($prestudent->studiengang_kz);
		
		$berufstaetigkeit = new bisberufstaetigkeit();
		$berufstaetigkeit->load($prestudent->berufstaetigkeit_code);
		
		$stgleiter = $studiengang->getLeitung($prestudent->studiengang_kz);
		$stgl='';
		$i = 0;
		foreach ($stgleiter as $stgleiter_uid)
		{
			$stgl_ma = new mitarbeiter($stgleiter_uid);
			$stgl .= trim(($i>0?', ':'').$stgl_ma->titelpre.' '.$stgl_ma->vorname.' '.$stgl_ma->nachname.' '.$stgl_ma->titelpost);
			$i++;
		}
		
		$gebdatum = date('d.m.Y',strtotime($person->gebdatum));
		$svnr = ($person->svnr == '')?$person->ersatzkennzeichen:$person->svnr;
		$zgv_datum = date('d.m.Y',strtotime($prestudent->zgvdatum));
		$zgvmas_datum = date('d.m.Y',strtotime($prestudent->zgvmadatum));
	
		echo "\t<laufzettel>\n";
		echo "\t\t<anrede>".$person->anrede."</anrede>\n";
		echo "\t\t<vorname>".$person->vorname." ".$person->vornamen."</vorname>\n";
		echo "\t\t<vornamen>".$person->vornamen."</vornamen>\n";
		echo "\t\t<nachname>".$person->nachname."</nachname>\n";
		echo "\t\t<titelpre>".$person->titelpre."</titelpre>\n";
		echo "\t\t<titelpost>".$person->titelpost."</titelpost>\n";
		echo "\t\t<name>".$person->titelpre." ".$person->vorname." ".$person->vornamen." ".$person->nachname." ".$person->titelpost."</name>\n";
		echo "\t\t<gebdatum>".$gebdatum."</gebdatum>\n";
		echo "\t\t<gebort>".$person->gebort."</gebort>\n";
		echo "\t\t<svnr>".$svnr."</svnr>\n";
		echo "\t\t<anmerkungpre><![CDATA[".$prestudent->anmerkung."]]></anmerkungpre>\n";
		echo "\t\t<studiengang_bezeichnung>".$studiengang->bezeichnung."</studiengang_bezeichnung>\n";
		echo "\t\t<studiengang_studiengangsleitung>".$stgl."</studiengang_studiengangsleitung>\n";
		echo "\t\t<zgv_bez>".$zgv->zgv_bez."</zgv_bez>\n";
		echo "\t\t<zgv_ort>".$prestudent->zgvort."</zgv_ort>\n";
		echo "\t\t<zgv_datum>".$zgv_datum."</zgv_datum>\n";
		echo "\t\t<zgvmas_bez>".$zgvmas->zgvmas_bez."</zgvmas_bez>\n";
		echo "\t\t<zgvmas_ort>".$prestudent->zgvmaort."</zgvmas_ort>\n";
		echo "\t\t<zgvmas_datum>".$zgvmas_datum."</zgvmas_datum>\n";
		echo "\t\t<berufstaetigkeit>".$berufstaetigkeit->berufstaetigkeit_bez."</berufstaetigkeit>\n";
		
		$adresse = new adresse();
		$adresse->load_pers($prestudent->person_id);
		
		foreach($adresse->result as $row_adresse)
		{
			$nation = new nation();
			$nation->load($row_adresse->nation);
			if($row_adresse->zustelladresse)
			{
				echo "\t\t<strasse>".$row_adresse->strasse."</strasse>\n";
				echo "\t\t<plz>".$row_adresse->plz." ".$row_adresse->ort."</plz>\n";
				echo "\t\t<nation>".$nation->langtext."</nation>\n";
				break;
			}
		}
		
		$dokumente = new dokument();
		$dokumente->getFehlendeDokumente($prestudent->studiengang_kz,$prestudent->prestudent_id);
		
		$akte = new akte();
		$akte->getAkten($prestudent->person_id);
		$akten = array();
		foreach($akte->result as $dokument)
		{
			$akten[] = $dokument->dokument_kurzbz;
		}
		
		foreach($dokumente->result as $row_dokument)
		{
			$vorhanden = false;
			if (in_array($row_dokument->dokument_kurzbz, $akten))
				$vorhanden = true;
			
			echo "\t\t<dokumente>\n";			
				echo "\t\t\t<bezeichnung>".$row_dokument->bezeichnung."</bezeichnung>\n";
				echo "\t\t\t<vorhanden>".($vorhanden==true?"vorhanden":"nicht vorhanden")."</vorhanden>\n";			
			echo "\t\t</dokumente>\n";
		}
		
		//$prestudenten = new prestudent();
		//$prestudenten->getPrestudenten($prestudent->person_id);
		
		$qry = "SELECT 
					prestudent_id,studiengang_kz,tbl_prestudentstatus.anmerkung AS anmerkung_status,orgform_kurzbz,studiensemester_kurzbz
				FROM 
					public.tbl_prestudent
				JOIN
					public.tbl_prestudentstatus USING (prestudent_id) 
				WHERE 
					prestudent_id IN (SELECT prestudent_id FROM public.tbl_prestudent WHERE person_id=".$prestudent->person_id.")
				AND 
					status_kurzbz='Bewerber'";
		
		$prestudenten=array();
		if($result_prestudentstatus = $db->db_query($qry))
		{
			while($row_prestudentstatus = $db->db_fetch_object($result_prestudentstatus))
			{
				$prestudenten[$row_prestudentstatus->prestudent_id.$row_prestudentstatus->studiensemester_kurzbz]['prestudent_id']=$row_prestudentstatus->prestudent_id;
				$prestudenten[$row_prestudentstatus->prestudent_id.$row_prestudentstatus->studiensemester_kurzbz]['studiengang_kz']=$row_prestudentstatus->studiengang_kz;
				$prestudenten[$row_prestudentstatus->prestudent_id.$row_prestudentstatus->studiensemester_kurzbz]['anmerkung_status']=$row_prestudentstatus->anmerkung_status;
				$prestudenten[$row_prestudentstatus->prestudent_id.$row_prestudentstatus->studiensemester_kurzbz]['orgform_kurzbz']=$row_prestudentstatus->orgform_kurzbz;
			}
		}
		//var_dump($prestudenten);
		foreach($prestudenten as $row_prestudenten)
		{		
			if ($row_prestudenten['prestudent_id'] != $prestudent->prestudent_id)
			{
				$studiengang->load($row_prestudenten['studiengang_kz']);
					echo "\t\t<prestudenten>\n";			
						echo "\t\t\t<studiengang>".strtoupper($studiengang->typ.$studiengang->kurzbz).($row_prestudenten['orgform_kurzbz']!=''?"-".$row_prestudenten['orgform_kurzbz']:"")."</studiengang>\n";
						echo "\t\t\t<anmerkung_status>".StringCut($row_prestudenten['anmerkung_status'],'30','','[...]')."</anmerkung_status>\n";
					echo "\t\t</prestudenten>\n";
			}
		}
		
		echo "\t</laufzettel>\n";
	}
}
echo '</laufzettel_prestudenten>';
?>
