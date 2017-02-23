<header class="row type-one">
	<div class="row-content">
		<div class="col-lg-12 logo">
			<!--[if lt IE 9]>
				<a href="/" class="ie-logo"></a>
			<![endif]-->
			<a href="/">
				<!--#include file="../_inc/svg-logo.aspx"-->
			</a>
		</div>
		<!--#include file="../_inc/menu-area.aspx"-->
		<div class="profile-pic">
			<vuture:viewprofilecontrol id="VxVireProfileControl4" runat="server" enableofflineload="true">
				<itemtemplate>
					<a href="/manageprofile/viewprofile.aspx"><img src="/API/ProfileImage/<%# Container["ProfileGuid"] %>.jpg?width=175&height=175" alt="Profile Picture"></a>
				</itemtemplate>
			</vuture:viewprofilecontrol>
		</div>
		<div class="mobile-nav"><i class="icon icon-burger"></i></div>
		<div class="search-button"><i class="icon icon-search"></i></div>
	</div>
</header>
