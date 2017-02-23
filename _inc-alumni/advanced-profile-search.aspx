<form method="get" action="/Search/SearchResult.aspx" accept-charset="utf-8" class="form" role="form">
	<div class="form-group">
		<label>First Name * </label>
		<input value="" id="IAForm_firstName" class="form-control required" name="IAForm_firstName" maxlength="250">
	</div>
	<div class="form-group">
		<label>Last Name * </label>
		<input value="" id="IAForm_lastName" class="form-control required" name="IAForm_lastName" maxlength="250">
	</div>
	<div class="form-group">
	   <label>Office : </label>
		<select class="form-control" name="IAForm_AdditionalField_Office">
							<option value="">--Select--</option>
							<vuture:viewiapossiblevaluescontrol id="AdditionalField_Office" runat="server" additonalfieldname="AdditionalField_Office">
								<itemtemplate>
									<option value="<%# Container["PossibleValue"] %>"><%# Container["PossibleValue"] %></option>
								</itemtemplate>
							</vuture:viewiapossiblevaluescontrol>
						</select>
	</div>
	<div class="form-group">
		 <label>Start Date:</label>
		<select id="start" type="text" name="IAForm_AdditionalField_StartDate" value="" class="form-control">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="IAForm_AdditionalField_StartDate" runat="server" startyear="1979">
				<ItemTemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</ItemTemplate>
			</vuture:yearcontrol>
		</select>
	</div>
	<div class="form-group">
		<label>End Date:</label>
		<select id="end" type="text" name="IAForm_AdditionalField_EndDate" value="" class="form-control">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="IAForm_AdditionalField_EndDate" runat="server" startyear="1979">
				<ItemTemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</ItemTemplate>
			</vuture:yearcontrol>
		</select>
	</div> 
	<div class="hide form-group">
		<label>Government Experience:</label>
		<select name="IAForm_AdditionalField_GovernmentExperience" multiple="">
			<option value="">--- Select ---</option>
			<vuture:storedprocedurerepeaterxmlparser id="Vx605652112_GovernmentExperience" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
				<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
				<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-government-experience"></parameter>
				<parameter name="intMaxRecords" type="Integer" value="200"></parameter>
				<itemtemplate>
					<option value="<%# Container["PageName"] %>"><%# Container["PageName"] %></option>
				</itemtemplate>
			</vuture:storedprocedurerepeaterxmlparser>
		</select>
	</div>
	<div class="form-group">
		<label>Law School:</label>
		<input type="text" name="IAForm_AdditionalField_LawSchool" value="" class="form-control">
	</div>
	<div class="hide form-group">
		 <label>Law School Grad Year:</label>
		<select type="text" name="IAForm_AdditionalField_LawSchoolGradYear" value="" class="form-control">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="IAForm_AdditionalField_LawSchoolGradYear" runat="server" startyear="1979">
				<ItemTemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</ItemTemplate>
			</vuture:yearcontrol>
		</select>
	</div>
	<div class="form-group">
		<label> Undergrad School:</label>
		<input type="text" name="IAForm_AdditionalField_UndergradSchool" value="" class="form-control">            
	</div>
	<div class="hide class=" form-group""="">
		<label>  Undergrad Year:</label>
		<select type="text" name="IAForm_AdditionalField_UndergradGradYear" value="" class="form-control">
			<option value="">--- Select ---</option>
			<vuture:yearcontrol id="IAForm_AdditionalField_UndergradGradYear" runat="server" startyear="1979">
				<ItemTemplate>
					<option value="<%# Container["year"] %>"><%# Container["year"] %></option>
				</ItemTemplate>
			</vuture:yearcontrol>
		</select>
	</div>
	<div class="form-group">
		<label> Other Degrees:</label>
		<input type="text" name="IAForm_AdditionalField_OtherDegrees" value="" class="form-control">
	</div>
	<div class="form-group" style="display:none;">
		<label>Practice Group : </label>
		<select name="IAForm_AdditionalField_PracticeGroups">
			<option value="">--- Select ---</option>
			<vuture:storedprocedurerepeaterxmlparser id="Vx605652112_PracticeGroup" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
				<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
				<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-practice-groups"></parameter>
				<parameter name="intMaxRecords" type="Integer" value="200"></parameter>
				<itemtemplate>
					<option value="<%# Container["PageName"] %>"><%# Container["PageName"] %></option>
				</itemtemplate>
			</vuture:storedprocedurerepeaterxmlparser>
		</select>
	</div>
	<div class="radio_button form-group">
		<vuture:storedprocedurerepeaterxmlparser id="Vx605652112123_CurrentPast" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
			<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
			<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnifolders"></parameter>
			<itemtemplate>
			
			<label><%# Container["DisplayText"] %></label>
				<input type="radio" name="FolderSitePageId" value="<%# Container["SitePageId"] %>" style="width:20px;display:inline;" checked="checked">
			</itemtemplate>
		</vuture:storedprocedurerepeaterxmlparser>    
	</div>
	<div class="form-group">
		<button value="" name="submit" id="submit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-right" type="submit">Search</button>
	</div>
</form>
