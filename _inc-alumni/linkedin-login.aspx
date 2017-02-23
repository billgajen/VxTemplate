<div class='loginError' style='padding-bottom:10px;color:#FFFFFF'> 
	<%= Request.QueryString["loginWithLinkedInMessage"]%>
</div>
<div class="login-form">
	<vx:loginform 
		runat="server"
		id="LoginBox"
		redirecturl="/home/home.aspx"
		redirecturlfirst="/change-password/change-password.aspx">
	</vx:loginform>
	<div class="forgot-password">
		<p><a href="/forgotten-password/forgotten-password.aspx">Forgot Your Password?</a></p>
	</div>
</div>
<div class="linkedin-login">
	<span>Log In With</span>
	<a href='/API/LinkedInLoginInitiator?action=login'>
		<img src="../_images/button-linkedin-login.jpg" alt="LinkedIn" />
	</a>
</div>
