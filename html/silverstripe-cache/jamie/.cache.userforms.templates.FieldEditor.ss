<?php
Requirements::css('userforms/css/FieldEditor.css');
$val .= '
';

Requirements::javascript('userforms/javascript/UserForm.js');
$val .= '

<div class="FieldEditor ';

if ($scope->locally()->hasValue('canEdit', null, true)) { 

}else { 
$val .= 'readonly';


}
$val .= '" id="Fields" ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
	
	<div class="FieldListHold">
		<ul class="FieldList" id="Fields_fields">
			';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				';

$val .= $scope->locally()->XML_val('EditSegment', null, true);
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</ul>
	</div>
	 
	';

if ($scope->locally()->hasValue('canEdit', null, true)) { 
$val .= '
	<div class="MenuHolder no-change-track">
		<h2>';

$val .= _t('FieldEditor.ADD','Add');
$val .= '</h2>

		<select name="AddUserFormField" id="AddUserFormField">
			<option value="">';

$val .= _t('FieldEditor.SELECTAFIELD','Select a Field');
$val .= '</option>

			';

$scope->locally()->obj('CreatableFields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<option value="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</option>
			';


}; $scope->popScope(); 
$val .= '
		</select>

		<input type="hidden" name="SecurityID" value="';

$val .= $scope->locally()->XML_val('SecurityID', null, true);
$val .= '" />
		<input type="submit" class="action" value="';

$val .= _t('FieldEditor.ADD','Add');
$val .= '" /> 
	</div>
	';


}
$val .= '

</div>
';

