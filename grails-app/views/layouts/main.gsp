<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Elabora Tu Mundo"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		
  		<asset:stylesheet src="rrssb.css"/> <!-- Para iconos sociales -->
  		
  		<asset:stylesheet src="bootstrap.min.css"/>
  		<asset:stylesheet src="font-awesome.min.css"/>
  		<asset:stylesheet src="prettyPhoto.css"/>
  		<asset:stylesheet src="price-range.css"/>
  		<asset:stylesheet src="animate.css"/>
  		<asset:stylesheet src="main.css"/>
  		<asset:stylesheet src="responsive.css"/>
  		
		<asset:javascript src="application.js"/>

		<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
	    <![endif]-->       
	    <link rel="shortcut icon" href="images/ico/favicon.ico">
	    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

		<g:layoutHead/>
	</head>
	<body>
		<script>
			window.fbAsyncInit = function() {
			  FB.init({
			    appId      : '1402573210050212',
			    xfbml      : true,
			    version    : 'v2.2'
			  });
			};
			
			(function(d, s, id){
			   var js, fjs = d.getElementsByTagName(s)[0];
			   if (d.getElementById(id)) {return;}
			   js = d.createElement(s); js.id = id;
			   js.src = "//connect.facebook.net/es_ES/sdk.js";
			   fjs.parentNode.insertBefore(js, fjs);
			 }(document, 'script', 'facebook-jssdk'));
		</script>
		
		
		<g:render template="/layouts/header" />
		<g:layoutBody/>
		<g:render template="/layouts/footer" />


		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/price-range.js"></script>
	    <script src="js/jquery.prettyPhoto.js"></script>
	    <script src="js/main.js"></script>
	</body>
</html>
