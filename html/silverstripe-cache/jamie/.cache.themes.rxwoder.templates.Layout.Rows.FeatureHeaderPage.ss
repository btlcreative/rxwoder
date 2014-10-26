<?php
$val .= '<section class="';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '" ';

if ($scope->locally()->hasValue('RowImage', null, true)) { 
$val .= 'style="background-image: url(';

$val .= $scope->locally()->obj('RowImage', null, true)->XML_val('Url', null, true);
$val .= ');"';


}
$val .= ' >
	<div class="row">
		<div class="large-8 medium-6 columns">
			';

$val .= $scope->locally()->XML_val('RowText', null, true);
$val .= '
		</div>
	</div>
</section>
';

