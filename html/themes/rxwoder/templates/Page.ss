<!doctype html>
<html class="no-js" lang="$ContentLocale.ATT" dir="$i18nScriptDirection.ATT">
<head>
	<% base_tag %>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
	<meta name="description" content="$MetaDescription.ATT" />
	<%--http://ogp.me/--%>
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="$Title.ATT" />
	<meta property="og:description" content="$MetaDescription.ATT" />
	<meta property="og:url" content="$AbsoluteLink.ATT" />
	<% if $Image %>
	<meta property="og:image" content="<% with $Image.SetSize(500,500) %>$AbsoluteURL.ATT<% end_with %>" />
	<% end_if %>
	<link rel="icon" type="image/png" href="$ThemeDir/favicon.ico" />
	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	<link rel="stylesheet" href="$ThemeDir/css/app.css" />
	<script src="$ThemeDir/bower_components/modernizr/modernizr.js"></script>
	<%-- <script src="//use.typekit.net/qcd1rgg.js"></script>
	<script>try{Typekit.load();}catch(e){}</script> --%>
	<link href='http://fonts.googleapis.com/css?family=Russo+One|Open+Sans:400italic,400,700,800' rel='stylesheet' type='text/css'>
</head>
<body class="$ClassName.ATT">

			<% include TopBar %>
		

	<div class="main typography" role="main">
		$Layout
	</div>

	<% include Footer %>

	<%--Login Modal--%>
	<div id="login-form-modal" class="reveal-modal medium" data-reveal>
		<h2>Login</h2>
		$LoginForm
		<a class="close-reveal-modal">&#215;</a>
	</div>

	<%--See [Requirements](http://doc.silverstripe.org/framework/en/reference/requirements) for loading from controller--%>
	<script src="$ThemeDir/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="$ThemeDir/bower_components/foundation/js/foundation.min.js"></script>
	<script src="$ThemeDir/javascript/app.js"></script>
</body>
</html>
