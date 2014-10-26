<?php
$val .= '<div class="ss-gridfield-buttonrow ss-gridfield-buttonrow-';

$val .= $scope->locally()->XML_val('TargetFragmentName', null, true);
$val .= '">
	<div class="left">';

$val .= $scope->locally()->XML_val('LeftFragment', null, true);
$val .= '</div>
	<div class="right">';

$val .= $scope->locally()->XML_val('RightFragment', null, true);
$val .= '</div>
</div>';

