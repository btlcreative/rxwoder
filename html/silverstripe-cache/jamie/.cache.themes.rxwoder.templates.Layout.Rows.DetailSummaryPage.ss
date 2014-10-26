<?php
$val .= '<section class="block ';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">
	<div class="row">
		<div class="large-6 columns">
			<article>
				';

$val .= $scope->locally()->XML_val('ValuePropText', null, true);
$val .= '
			</article>
		</div>
		<div class="large-3 columns">
			<article>
				';

$val .= $scope->locally()->XML_val('Ingredients', null, true);
$val .= '
			</article>
		</div>
		<div class="large-3 columns">
			<article>
				';

$val .= $scope->locally()->XML_val('Affects', null, true);
$val .= '
			</article>
		</div>
	</div>
</section>
';

