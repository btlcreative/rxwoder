<?php
$val .= '<section class="block ';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">
	<div class="row">
		<div class="large-8 large-centered columns request">
			<h3>';

$val .= $scope->locally()->XML_val('CTAText', null, true);
$val .= '</h3>
      <p>';

$val .= $scope->locally()->XML_val('CTATextArea', null, true);
$val .= '</p>
			<a href="';

$val .= $scope->locally()->obj('ButtonLink', null, true)->XML_val('Link', null, true);
$val .= '" class="button radius alert">';

$val .= $scope->locally()->XML_val('ButtonText', null, true);
$val .= '</a>
		</div>
	</div>
</section>


';

