<?php
$val .= '<nav class="top-bar" role="navigation" data-topbar>
	<ul class="title-area">
		<li class="name">
			<h1><a href="';

$val .= $scope->locally()->XML_val('baseUrl', null, true);
$val .= '">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</a></h1>
		</li>
		<li class="toggle-topbar menu-icon"><a href=""><span>Menu</span></a></li>
	</ul>
	<section class="top-bar-section">
		';


$val .= '
		<ul class="left">
			';

$scope->locally()->obj('Menu', array('1'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<li class="';

if ($scope->locally()->XML_val('LinkingMode', null, true)=='current'||$scope->locally()->XML_val('LinkingMode', null, true)=='section') { 
$val .= 'active';


}
if ($scope->locally()->hasValue('Children', null, true)) { 
$val .= ' has-dropdown';


}
$val .= '">
				<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="Go to the ';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '</a>
				';

if ($scope->locally()->hasValue('Children', null, true)) { 
$val .= '
				<ul class="dropdown">
					<li><label>';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '</label></li>
					';

$scope->locally()->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<li class="';

if ($scope->locally()->XML_val('LinkingMode', null, true)=='current'||$scope->locally()->XML_val('LinkingMode', null, true)=='section') { 
$val .= 'active';


}
if ($scope->locally()->hasValue('Children', null, true)) { 
$val .= ' has-dropdown';


}
$val .= '">
						<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="Go to the ';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '</a>
						';

if ($scope->locally()->hasValue('Children', null, true)) { 
$val .= '
						<ul class="dropdown">
							';

$scope->locally()->obj('Children', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
							<li class="';

if ($scope->locally()->XML_val('LinkingMode', null, true)=='current'||$scope->locally()->XML_val('LinkingMode', null, true)=='section') { 
$val .= 'active';


}
$val .= '"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="Go to the ';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('MenuTitle', null, true);
$val .= '</a></li>
							';


}; $scope->popScope(); 
$val .= '
						</ul>
						';


}
$val .= '
					</li>
					';


}; $scope->popScope(); 
$val .= '
					<li><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '">See all &rarr;</a></li>
				</ul>
				';


}
$val .= '
			</li>
			';

if (!$scope->locally()->hasValue('Last', null, true)) { 
$val .= '<li class="divider"></li>';


}
$val .= '
			';


}; $scope->popScope(); 
$val .= '
		</ul>
		';


$val .= '
		<ul class="right hide-for-medium-up">
			';

if ($scope->locally()->hasValue('CurrentMember', null, true)) { 
$val .= '
			<li class="has-dropdown">
				<a href="admin/myprofile">Hi ';

$val .= $scope->locally()->obj('CurrentMember', null, true)->XML_val('FirstName', null, true);
$val .= '</a>
				<ul class="dropdown">
					<li><a href="admin/">Admin</a></li>
					<li><a href="admin/myprofile">My Profile</a></li>
					<li><a href="Security/logout">Logout</a></li>
				</ul>
			</li>
			';


}else { 
$val .= '
			<li><a href="Security/login?BackURL=%2Fadmin" data-reveal-id="login-form-modal">Login</a></li>
			';


}
$val .= '
		</ul>
	</section>
</nav>
';

