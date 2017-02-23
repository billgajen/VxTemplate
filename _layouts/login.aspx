<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="no-js"><!--<![endif]-->
<head>
	<title>Wunderbar</title>
	<!--#include file="../_inc/meta.aspx"-->
	<script type="text/javascript" src="/_js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="/_js/angular-1.4.7.min.js"></script>
	<script type="text/javascript" src="/_js/libs/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="/_js/app.js"></script>
	<script type="text/javascript" src="../_js/controllers/tabController.js"></script>
	<script type="text/javascript" src="/_js/main.js"></script>
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
			<div class="login-box" ng-controller="tabController">
				<ul class="tabs">
					<li ng-class="{selected: tab == 'tab-one'}"><a href="javascript:void(0)" ng-click="tabbing('tab-one')">Login</a></li>
					<li ng-class="{selected: tab == 'tab-two'}"><a href="javascript:void(0)" ng-click="tabbing('tab-two')">Register</a></li>
				</ul>
				<div class="content-area">
					<div class="login-content" ng-show="tab == 'tab-one'">
						<header>
							<h2>Enter your email and password <strong>to sign in</strong></h2>
						</header>
						<section class="form">
							<form accept-charset="utf-8" action="#" class="simform">
								<div class="form-group">
									<label for="user-name">Email*</label>
									<input maxlength="255" id="user-email" placeholder="Email" type="email">
								</div>
								<div class="form-group">
									<label for="user-pw">Password *</label>
									<input class="string optional" id="user-pw" placeholder="Password" type="password">
								</div>
								<div class="form-group">
									<span><a class="special" role="link" href="#">Forgot your password?<br>Click here</a></span>
									<input class="sumbit" name="commit" type="submit" value="Log In">
								</div> 
							</form>
						</section>
					</div>
					<div class="register-content" ng-show="tab == 'tab-two'">
						<header>
							<h2>Enter your personal details <strong>to create an acount</strong></h2>
						</header>
						<section class="form">
							<form accept-charset="utf-8" action="#" class="simform">
								<div class="form-group">
									<label for="firstname">Firstname*</label>
									<input maxlength="255" id="user-email" placeholder="First name" type="text">
								</div>
								<div class="form-group">
									<label for="lastname">Lastname*</label>
									<input maxlength="255" id="user-email" placeholder="Last name" type="text">
								</div>
								<div class="form-group">
									<label for="user-name">Email*</label>
									<input maxlength="255" id="user-email" placeholder="Email" type="email">
								</div>
								<div class="form-group">
									<span>By creating an account you agree<br />to our Terms & Privacy</span>
									<input class="sumbit" name="commit" type="submit" value="Register">
								</div> 
							</form>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
