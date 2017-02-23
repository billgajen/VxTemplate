<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="no-js"><!--<![endif]-->
<head>
	<title>Wunderbar</title>
	<!--#include file="../_inc/meta.aspx"-->
	<!--#include file="../_inc/js.aspx"-->
	<!--#include file="../_inc/css.aspx"-->
</head>
<body class="login" ng-app="vxChartApp">
	<div class="wrapper">
		<header class="row type-two">
			<div class="row-content">
				<div class="col-lg-12 logo">
					<a href="/">
						<!--#include file="../_inc/svg-logo.aspx"-->
					</a>
				</div>
			</div>
		</header>
		<div class="login-container">
			<div class="login-box">
				<ul class="tabs">
					<li><a href="javascript:void(0)">Forgotten Password</a></li>
				</ul>
				<div class="content-area">
					<div class="login-content" ng-show="tab == 'tab-one'">
						<header>
							<h2>Please type in your alumni account <strong>email address</strong></h2>
						</header>
						<section class="form">
							<vx:forgottenpasswordform runat="server" id="ForgottenPassword" redirecturl="/forgotten-password/thank-you.aspx" sitepageid='<%$ Vx: SITE_PAGE_ID %>'></vx:forgottenpasswordform>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
