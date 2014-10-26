<?php
$val .= '<label id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</label>';

