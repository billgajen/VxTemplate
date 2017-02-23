<div class='<%= !String.IsNullOrEmpty(Request.QueryString["errorMessage"]) ? "alert alert-danger" : "" %>'><%= Request.QueryString["errorMessage"]%></div>
<div class="login-form registration">
	<form method="post" action="/API/AlumniRegisterProfile" accept-charset="utf-8" enctype="multipart/form-data" class="form" role="form">
		<p class="form-group">
	        <label for="IAForm_FirstName">First Name</label>
			<input type="text" value="" id="IAForm_FirstName" class="form-control required" name="IAForm_FirstName" maxlength="250" placeholder="first name" />
		</p>
		<p class="form-group">
			<label for="IAForm_LastName">Last Name</label>
			<input type="text" value="" id="IAForm_LastName" class="form-control required" name="IAForm_LastName" maxlength="250" placeholder="last name" />
		</p>
		<p class="form-group">
	        <label for="VxForm_Email">Email</label>
			<input type="text" value="" id="IAForm_Email" class="form-control email required" name="IAForm_businessElectronicAddress" maxlength="250" placeholder="email address" />
		</p>
		<div class="form-group">
			<div class="radio-list">
				<vuture:storedprocedurerepeaterxmlparser id="Vx605652112123" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
					<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
					<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnifolders"></parameter>
					<itemtemplate>
						<div class="radio"><input type="radio" name="FolderSitePageId" value="<%# Container["SitePageId"] %>" /><span><%# Container["DisplayText"] %></span></div>
					</itemtemplate>
				</vuture:storedprocedurerepeaterxmlparser>    
			</div>
		</div>
	<p class="form-group">
			<button class="btn btn-default branded_button" type="submit">Join Now</button>
	</p>
		
	</form>
</div>
