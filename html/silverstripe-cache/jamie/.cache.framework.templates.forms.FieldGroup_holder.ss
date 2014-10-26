<?php
$val .= '<div ';

if ($scope->locally()->hasValue('Name', null, true)) { 
$val .= 'id="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '"';


}
$val .= ' class="field ';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= '<label class="left">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</label>';


}
$val .= '
	
	<div class="middleColumn fieldgroup';

if ($scope->locally()->hasValue('Zebra', null, true)) { 
$val .= ' fieldgroup-';

$val .= $scope->locally()->XML_val('Zebra', null, true);

}
$val .= '">
		';

$scope->locally()->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<div class="fieldgroup-field ';

$val .= $scope->locally()->XML_val('FirstLast', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('EvenOdd', null, true);
$val .= '">
				';

$val .= $scope->locally()->XML_val('SmallFieldHolder', null, true);
$val .= '
			</div>
		';


}; $scope->popScope(); 
$val .= '
	</div>
	';

if ($scope->locally()->hasValue('RightTitle', null, true)) { 
$val .= '<label class="right">';

$val .= $scope->locally()->XML_val('RightTitle', null, true);
$val .= '</label>';


}
$val .= '
	';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '<span class="message ';

$val .= $scope->locally()->XML_val('MessageType', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</span>';


}
$val .= '
	';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= '<span class="description">';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</span>';


}
$val .= '
</div>
';

