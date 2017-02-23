<form method="get" action="/Search/SearchResult.aspx" accept-charset="utf-8">
	<div class="form-group">
		<label> First Name * </label>
		<input value="" id="IAForm_firstName" class="form-control required" name="IAForm_firstName" maxlength="250">
	</div>
	<div class="form-group">
		<label> Last Name *</label>
		<input value="" id="IAForm_lastName" class="form-control required" name="IAForm_lastName" maxlength="250">
	</div>
	<div class="form-group">
		<label> Office : </label>
		<select name="IAForm_AdditionalField_Office" class="form-control">
			<option value="">--- Select ---</option>
			<vuture:storedprocedurerepeaterxmlparser id="Vx605652112search" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
				<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
				<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-office"></parameter>
				<itemtemplate>
					<option value="<%# Container["PageName"] %>"><%# Container["PageName"] %></option>
				</itemtemplate>
			</vuture:storedprocedurerepeaterxmlparser>
		</select>
	</div>
	<div class="form-group">
		<label>Start Date:</label>
		<select type="text" class="form-control" name="IAForm_AdditionalField_StartDate">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="Vx605652112123StartDate" runat="server" startyear="1979">
				<itemtemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</itemtemplate>
			</vuture:yearcontrol>
		</select>
	</div>
	<div class="form-group">
		<label>End Date:</label>
		<select type="text" class="form-control" name="IAForm_AdditionalField_EndDate">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="Vx605652112123EndDate" runat="server" startyear="1979">
				<itemtemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</itemtemplate>
			</vuture:yearcontrol>
		</select>
	</div>
	<div class="radio_button form-group">
		<vuture:storedprocedurerepeaterxmlparser id="Vx605652112123SEA" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
		<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
		<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnifolders"></parameter>
			<itemtemplate>
				<label><%# Container["DisplayText"] %></label>
				<input type="radio" name="FolderSitePageId" value="<%# Container["SitePageId"] %>" style="width:20px;display:inline;" checked="checked">
			</itemtemplate>
		</vuture:storedprocedurerepeaterxmlparser>
	</div>
	<div class="form-group">
		<button value="" name="submit" id="subtmit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-right" type="submit" class="btn btn-success">
			Search
		</button>
	</div>
</form>
