<?php
/* Copyright (C) 2013 FH Technikum-Wien
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
 * Initialisierung des Addons
 */
require_once('../../../config/vilesci.config.inc.php');
?>
addon.push( 
{
	init: function() 
	{		
	},
	selectMitarbeiter: function(person_id, mitarbeiter_uid)
	{
	},
	selectStudent: function(person_id, prestudent_id, student_uid)
	{
	},
	selectVerband: function(item)
	{
	},
	selectInstitut: function(institut)
	{
	},
	selectLektor: function(lektor)
	{
	}
});

function AddonFHBDokumenteErfolgsnachweis()
{
	netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");

	tree = document.getElementById('student-tree');

	//Markierte Studenten holen
	var start = new Object();
	var end = new Object();
	var numRanges = tree.view.selection.getRangeCount();
	var paramList= '';

	for (var t = 0; t < numRanges; t++)
	{
  		tree.view.selection.getRangeAt(t,start,end);
		for (var v = start.value; v <= end.value; v++)
		{			
			var uid = getTreeCellText(tree, 'student-treecol-uid', v);
			paramList += ';'+uid;
		}
	}
	//Studiensemester holen
	var ss = getStudiensemester();
	var xsl_stg_kz = document.getElementById('student-prestudent-menulist-studiengang_kz').value
	
	if(paramList.replace(";",'')=='')
	{
		alert('Bitte einen Studenten auswaehlen');
		return false;
	}
	
	//PDF erzeugen
	window.open('<?php echo APP_ROOT; ?>content/pdfExport.php?xml=erfolgsnachweis.rdf.php&xsl=Erfolgsnachweis&style_xsl=ErfolgsnwHead&uid='+paramList+'&ss='+ss+'&xsl_stg_kz='+xsl_stg_kz+'&output=pdf','Erfolgsnachweis', 'height=200,width=350,left=0,top=0,hotkeys=0,resizable=yes,status=no,scrollbars=yes,toolbar=no,location=no,menubar=no,dependent=yes');
}
