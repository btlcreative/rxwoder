<?php
if ($scope->locally()->hasValue('AllChildren', null, true)) { 
$val .= '
	';

$scope->locally()->obj('AllChildren', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		';

$val .= $scope->locally()->XML_val('RenderRows', null, true);
$val .= '
	';


}; $scope->popScope(); 
$val .= '
';


}
$val .= '



';

if ($scope->locally()->hasValue('FacebookFeed', null, true)) { 
$val .= '
<section class="facebook">
	<div class="large-6 medium-10 medium-centered columns message">

		';

$scope->locally()->obj('FacebookFeed', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<article>
			<span class="icon-facebook-square"></span>
			<div>
				';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= $scope->locally()->XML_val('Message', null, true);

}
$val .= '
			</div>
		</article>

		';


}; $scope->popScope(); 
$val .= '
	</div>
</section>
';


}
$val .= '


';

if ($scope->locally()->hasValue('InstagramFeed', null, true)) { 
$val .= '
<section class="block instagram">
	<div class="medium-12 columns">
		';


$val .= '

		<ul class="small-block-grid-4 medium-block-grid-8">
		';

$scope->locally()->obj('InstagramFeed', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '

		<li>
			<a href="';

$val .= $scope->locally()->XML_val('SourceURL', null, true);
$val .= '" target="_blank" title="';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= $scope->locally()->XML_val('Message', null, true);

}
$val .= '">

			';

if ($scope->locally()->hasValue('PictureURL', null, true)) { 
$val .= '
				<div class="image-wrapper">
					<img src="';

$val .= $scope->locally()->XML_val('PictureURL', null, true);
$val .= '" alt="';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= $scope->locally()->XML_val('Message', null, true);

}
$val .= '">
				</div>
			';


}
$val .= '
			';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= $scope->locally()->XML_val('Message', null, true);

}
$val .= '
			</a>
		</li>

		';


}; $scope->popScope(); 
$val .= '
		</ul>

	</div>
</section>


';


}
$val .= '
';

