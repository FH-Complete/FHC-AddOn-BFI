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
		// Menuepunkt fuer Laufzettel hinzufuegen
		dokumentemenue = document.getElementById("menu-dokumente-popup");
		var menuseparator = document.createElement("menuseparator");
		dokumentemenue.appendChild(menuseparator);

		var menuentry = document.createElement("menuitem");
		menuentry.setAttribute("id","addons-bfi-dokumente-laufzettel");
		menuentry.setAttribute("label","Laufzettel");
		menuentry.addEventListener("command",AddonBFIDokumenteLaufzettel, true);

		dokumentemenue.appendChild(menuentry);
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

function AddonBFIDokumenteLaufzettel(event)
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
			var prestudent_id = getTreeCellText(tree, 'student-treecol-prestudent_id', v);
			paramList += ';'+prestudent_id;
		}
	}

	if(paramList.replace(";",'')=='')
	{
		alert('Bitte einen Studenten auswaehlen');
		return false;
	}

	var output = 'pdf';
	if(typeof(event)!=='undefined')
	{
		if (event.shiftKey)
		{
		    var output = 'odt';
		}
		else if (event.ctrlKey)
		{
			var output = 'doc';
		}
		else
		{
			var output = 'pdf';
		}
	}

	//PDF erzeugen
	window.open('<?php echo APP_ROOT; ?>content/pdfExport.php?xml=laufzettel.xml.php&xsl=Laufzettel&prestudent_id='+paramList+'&output='+output,'Laufzettel', 'height=200,width=350,left=0,top=0,hotkeys=0,resizable=yes,status=no,scrollbars=yes,toolbar=no,location=no,menubar=no,dependent=yes');
}
