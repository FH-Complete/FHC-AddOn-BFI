<?php
/* Copyright (C) 2016 fhcomplete.org
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
 */
/**
 * Hinzufuegen von neuen Menuepunkten bei CIS Lehrveranstaltungen
 */

 //LV-Plan Link zu den verplanten Terminen der Lehrveranstaltung
//if($studiengang_kz!='0' && CIS_LEHRVERANSTALTUNG_NEWSGROUPS_ANZEIGEN  && $angemeldet || in_array($user, $newsgroup_user))
{
	$menu[]=array
	(
		'id'=>'addon_bfi_menu_lvplan_lva',
		'position'=>'121',
		'name'=>$p->t('lehre/termineImLvPlan'),
		'icon'=>'../../../skin/images/button_lvplan.png',
		'link'=>'../../../cis/private/lvplan/stpl_week.php?type=lva&lva='.$lvid,
		'text'=>''
	);
}
?>