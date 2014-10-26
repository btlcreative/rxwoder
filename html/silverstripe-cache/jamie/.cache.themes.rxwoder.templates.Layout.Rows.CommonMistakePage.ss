<?php
$val .= '<section class="block ';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">
	<div class="row">
		<div class="large-4 medium-6 columns">
			<article>
				';

$val .= $scope->locally()->XML_val('RowImage', null, true);
$val .= '
			</article>
		</div>
		<div class="large-8 medium-6 columns">
			';

$val .= $scope->locally()->XML_val('RowText', null, true);
$val .= '
		</div>
	</div>
</section>
';

