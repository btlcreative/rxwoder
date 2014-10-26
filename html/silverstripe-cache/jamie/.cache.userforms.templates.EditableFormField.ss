<?php
$val .= '<!-- JS Relys on EditableFormField as a class - and the 3 ids in this order - do not change -->
<li class="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= ' EditableFormField" id="';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('ATT', null, true);
$val .= ' EditableItem_';

$val .= $scope->locally()->XML_val('Pos', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '">
	<div class="fieldInfo">
		';

if ($scope->locally()->hasValue('canEdit', null, true)) { 
$val .= '
			<img class="fieldHandler" src="';

$val .= $scope->locally()->XML_val('ModulePath', array('framework'), true);
$val .= '/images/drag.gif" alt="';

$val .= _t('EditableFormField.DRAG','Drag to rearrange order of fields');
$val .= '" />
		';


}else { 
$val .= '
			<img class="fieldHandler" src="';

$val .= $scope->locally()->XML_val('ModulePath', array('framework'), true);
$val .= '/images/drag_readonly.gif" alt="';

$val .= _t('EditableFormField.LOCKED','These fields cannot be modified');
$val .= '" />
		';


}
$val .= '
	
		<img class="icon" src="';

$val .= $scope->locally()->XML_val('Icon', null, true);
$val .= '" alt="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '" title="';

$val .= $scope->locally()->XML_val('singular_name', null, true);
$val .= '" />
	
		';

$val .= $scope->locally()->XML_val('TitleField', null, true);
$val .= '
	</div>
	
	<div class="fieldActions">
		';

if ($scope->locally()->hasValue('showExtraOptions', null, true)) { 
$val .= '
			<a class="moreOptions" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" title="';

$val .= _t('EditableFormField.SHOWOPTIONS','Show Options');
$val .= '">';

$val .= _t('EditableFormField.SHOWOPTIONS','Show Options');
$val .= '</a>
		';


}
$val .= '
		
		';

if ($scope->locally()->hasValue('canDelete', null, true)) { 
$val .= '
			<a class="delete" href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" title="';

$val .= _t('EditableFormField.DELETE','Delete');
$val .= '">';

$val .= _t('EditableFormField.DELETE','Delete');
$val .= '</a>
		';


}
$val .= ' 	
	</div>
	
	';

if ($scope->locally()->hasValue('showExtraOptions', null, true)) { 
$val .= '
		<div class="extraOptions hidden" id="';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('ATT', null, true);
$val .= '-extraOptions">
			';

if ($scope->locally()->hasValue('HasAddableOptions', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t('EditableFormField.OPTIONS','Options');
$val .= '</legend>
					<ul class="editableOptions" id="';

$val .= $scope->locally()->obj('FieldName', null, true)->XML_val('ATT', null, true);
$val .= '-list">

						';

if ($scope->locally()->hasValue('canEdit', null, true)) { 
$val .= '
							';

$scope->locally()->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

$val .= $scope->locally()->XML_val('EditSegment', null, true);
$val .= '
							';


}; $scope->popScope(); 
$val .= '
							';

if ($scope->locally()->hasValue('HasAddableOptions', null, true)) { 
$val .= '
								<li class="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= 'Option">
									<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" rel="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="addableOption" title="';

$val .= _t('EditableFormField.ADD','Add option to field');
$val .= '">
										';

$val .= _t('EditableFormField.ADDLabel','Add option');
$val .= '
									</a>
								</li>
							';


}
$val .= '
						';


}else { 
$val .= '
							';

$scope->locally()->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

$val .= $scope->locally()->XML_val('ReadonlyOption', null, true);
$val .= '
							';


}; $scope->popScope(); 
$val .= '
						';


}
$val .= '
					</ul>
				</fieldset>
			';


}
$val .= '
			
			';

if ($scope->locally()->hasValue('FieldConfiguration', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t('EditableFormField.FIELDCONFIGURATION','Field Configuration');
$val .= '</legend>
					';

$scope->locally()->obj('FieldConfiguration', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</fieldset>
			';


}
$val .= '
			
			';

if ($scope->locally()->hasValue('FieldValidationOptions', null, true)) { 
$val .= '
				<fieldset class="fieldOptionsGroup">
					<legend>';

$val .= _t('EditableFormField.VALIDATION','Validation');
$val .= '</legend>
					';

$scope->locally()->obj('FieldValidationOptions', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
					';


}; $scope->popScope(); 
$val .= '
				</fieldset>
			';


}
$val .= '
		
			<fieldset class="customRules fieldOptionsGroup">
				<legend>';

$val .= _t('EditableFormField.CUSTOMRULES','Custom Rules');
$val .= '</legend>
				<ul id="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '-customRules">
					<li>
						<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="addCondition" title="';

$val .= _t('EditableFormField.ADD','Add');
$val .= '">';

$val .= _t('EditableFormField.ADDRULE','Add Rule');
$val .= '</a>
					</li>
					<li class="addCustomRule">					
						<select name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[CustomSettings][ShowOnLoad]">
							<option value="Show" ';

if ($scope->locally()->hasValue('ShowOnLoad', null, true)) { 
$val .= 'selected="selected"';


}
$val .= '>';

$val .= _t('EditableFormField.SHOW','Show');
$val .= '</option>
							<option value="Hide" ';

if ($scope->locally()->hasValue('ShowOnLoad', null, true)) { 

}else { 
$val .= 'selected="selected"';


}
$val .= '>';

$val .= _t('EditableFormField.HIDE','Hide');
$val .= '</option>
						</select>

						<label class="left">';

$val .= _t('EditableFormField.FIELDONDEFAULT','Field On Default');
$val .= '</label>
					</li>
					<li class="hidden">
						<select class="displayOption customRuleField" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[CustomRules][Display]">
							<option value="Show">';

$val .= _t('EditableFormField.SHOWTHISFIELD','Show This Field');
$val .= '</option>
							<option value="Hide">';

$val .= _t('EditableFormField.HIDETHISFIELD','Hide This Field');
$val .= '</option>
						</select>

						<label>';

$val .= _t('EditableFormField.WHEN','When');
$val .= '</label>
						<select class="fieldOption customRuleField" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[CustomRules][ConditionField]">
							<option></option>
							';

$scope->locally()->obj('Parent', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
								';

if ($scope->locally()->hasValue('Fields', null, true)) { 
$val .= '
									';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
										<option value="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '">';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= $scope->locally()->XML_val('Title', null, true);

}else { 
$val .= $scope->locally()->XML_val('Name', null, true);

}
$val .= '</option>
									';


}; $scope->popScope(); 
$val .= '
								';


}
$val .= '
							';


}; $scope->popScope(); 
$val .= '
						</select>

						<label>';

$val .= _t('EditableFormField.IS','Is');
$val .= '</label>
						<select class="conditionOption customRuleField" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[CustomRules][ConditionOption]">
							<option value=""></option>
							<option value="IsBlank">';

$val .= _t('EditableFormField.BLANK','Blank');
$val .= '</option>
							<option value="IsNotBlank">';

$val .= _t('EditableFormField.NOTBLANK','Not Blank');
$val .= '</option>
							<option value="HasValue">';

$val .= _t('EditableFormField.VALUE','Value');
$val .= '</option>
							<option value="ValueNot">';

$val .= _t('EditableFormField.NOTVALUE','Not Value');
$val .= '</option>
							<option value="ValueLessThan">';

$val .= _t('EditableFormField.LESSTHAN','Value Less Than');
$val .= '</option>
							<option value="ValueLessThanEqual">';

$val .= _t('EditableFormField.LESSTHANEQUAL','Value Less Than Or Equal');
$val .= '</option>
							<option value="ValueGreaterThan">';

$val .= _t('EditableFormField.GREATERTHAN','Value Greater Than');
$val .= '</option>
							<option value="ValueGreaterThanEqual">';

$val .= _t('EditableFormField.GREATERTHANEQUAL','Value Greater Than Or Equal');
$val .= '</option>
						</select>

						<input type="text" class="ruleValue hidden customRuleField" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[CustomRules][Value]" />

						<a href="' . (Config::inst()->get('SSViewer', 'rewrite_hash_links') ? strip_tags( $_SERVER['REQUEST_URI'] ) : "") . 
				'#" class="deleteCondition" title="';

$val .= _t('EditableFormField.DELETE','Delete');
$val .= '"><img src="cms/images/delete.gif" alt="';

$val .= _t('EditableFormField.DELETE','Delete');
$val .= '" /></a>
					</li>
					';

if ($scope->locally()->hasValue('CustomRules', null, true)) { 
$val .= '
						';

$scope->locally()->obj('CustomRules', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
							<li>
								';

$val .= SSViewer::execute_template('CustomRule', $scope->getItem(), array(), $scope);

$val .= '
							</li>
						';


}; $scope->popScope(); 
$val .= '
					';


}
$val .= '
				</ul>
			</fieldset>
		</div>
	';


}
$val .= '
	
	<!-- Hidden option Fields -->
	<input type="hidden" class="typeHidden" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[Type]" value="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '" /> 
	<input type="hidden" class="sortHidden" name="';

$val .= $scope->locally()->XML_val('FieldName', null, true);
$val .= '[Sort]" value="';

$val .= $scope->locally()->XML_val('Sort', null, true);
$val .= '" />
</li>
';

