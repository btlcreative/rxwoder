<?php
$val .= '<!doctype html>
<html class="no-js" lang="';

$val .= $scope->locally()->obj('ContentLocale', null, true)->XML_val('ATT', null, true);
$val .= '" dir="';

$val .= $scope->locally()->obj('i18nScriptDirection', null, true)->XML_val('ATT', null, true);
$val .= '">
<head>
	';

$val .= SSViewer::get_base_tag($val);
$val .= '
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>';

if ($scope->locally()->hasValue('MetaTitle', null, true)) { 
$val .= $scope->locally()->XML_val('MetaTitle', null, true);

}else { 
$val .= $scope->locally()->XML_val('Title', null, true);

}
$val .= ' - ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</title>
	<meta name="description" content="';

$val .= $scope->locally()->obj('MetaDescription', null, true)->XML_val('ATT', null, true);
$val .= '" />
	';


$val .= '
	<meta property="og:site_name" content="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '" />
	<meta property="og:description" content="';

$val .= $scope->locally()->obj('MetaDescription', null, true)->XML_val('ATT', null, true);
$val .= '" />
	<meta property="og:url" content="';

$val .= $scope->locally()->obj('AbsoluteLink', null, true)->XML_val('ATT', null, true);
$val .= '" />
	';

if ($scope->locally()->hasValue('Image', null, true)) { 
$val .= '
	<meta property="og:image" content="';

$scope->locally()->obj('Image', null, true)->obj('SetSize', array('500', '500'), true); $scope->pushScope();
$val .= $scope->locally()->obj('AbsoluteURL', null, true)->XML_val('ATT', null, true);

; $scope->popScope(); 
$val .= '" />
	';


}
$val .= '
	<link rel="icon" type="image/png" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/favicon.ico" />
	';


$val .= '

	<link href=\'http://fonts.googleapis.com/css?family=Russo+One\' rel=\'stylesheet\' type=\'text/css\'>

	<link rel="stylesheet" href="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/css/app.css" />
	<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/bower_components/modernizr/modernizr.js"></script>
</head>
<body class="';

$val .= $scope->locally()->obj('ClassName', null, true)->XML_val('ATT', null, true);
$val .= '">

	<header class="header" role="banner">
		<div class="fixed contain-to-grid">
			';

$val .= SSViewer::execute_template('TopBar', $scope->getItem(), array(), $scope);

$val .= '
		</div>
	</header>

	<div class="main typography" role="main">
		';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
	</div>
	';

$val .= SSViewer::execute_template('Footer', $scope->getItem(), array(), $scope);

$val .= '


	';


$val .= '
	<div id="login-form-modal" class="reveal-modal medium" data-reveal>
		<h2>Login</h2>
		';

$val .= $scope->locally()->XML_val('LoginForm', null, true);
$val .= '
		<a class="close-reveal-modal">&#215;</a>
	</div>

	';


$val .= '
	<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/bower_components/foundation/js/foundation.min.js"></script>
	<script src="';

$val .= $scope->locally()->XML_val('ThemeDir', null, true);
$val .= '/javascript/app.js"></script>
</body>
</html>
';

