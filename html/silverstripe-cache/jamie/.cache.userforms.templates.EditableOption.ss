<?php
$val .= '<li>
	<img class="handle" src="';

$val .= $scope->locally()->XML_val('ModulePath', array('framework'), true);
$val .= '/images/drag.gif" alt="';

$val .= _t('EditableOption.DRAG','Drag to rearrange order of options');
$val .= '" />
	<input type="text" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[Title]" value="';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '" />
	<input type="hidden" class="sortOptionHidden hidden" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[Sort]" value="';

$val .= $scope->locally()->XML_val('Sort', null, true);
$val .= '" />
	
	';

if ($scope->locally()->hasValue('canEdit', null, true)) { 
$val .= '
		<a href="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="deleteOption"><img src="';

$val .= $scope->locally()->XML_val('ModulePath', array('framework'), true);
$val .= '/images/delete.gif" alt="';

$val .= _t('EditableOption.DELETE','Remove this option');
$val .= '" /></a>
	';


}else { 
$val .= '
		<img src="cms/images/locked.gif" alt="';

$val .= _t('EditableOption.LOCKED','These fields cannot be modified');
$val .= '" />	
	';


}
$val .= '
</li>';

