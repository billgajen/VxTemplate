<!--<div class="search-box well blue-box site-search">
	<h2>Site Search</h2>-->
	<form method="post" action="/Search/simplesearch.aspx" accept-charset="utf-8">
		<fieldset>
			<div class="form-group">
				<input class="form-control default-value" id="filter-term"  placeholder="Keyword" type="text" name="searchValue" value="<%=Request["searchValue"]%>" maxlength="100" />
			</div>
			<div style="display:none">
				<div class="form-group half_width">
					<select class="form-control required" name="topicId" id="filter-topic">
						<option value="">-Select Topic-</option>
						<!-- Web.{SiteId}-alumnijoblisting Crosslink Block -->
						<Vuture:StoredProcedureRepeaterXMLParser ID="Vx609518181" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
						<Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
					  <parameter name="intMaxRecords" type="Integer" value='100' />
							<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-alumnijoblisting" />
							<ItemTemplate>
								<option value="<%# Container["SitePageId"] %>"  <%# Request["topicId"] == Container["sitepageid"] ? "selected" : ""%>><%# Container["PageName"] %></option>
							</ItemTemplate>
						</Vuture:StoredProcedureRepeaterXMLParser>
						<!-- End Web.{SiteId}-alumnijoblisting Crosslink Block -->
					</select>
				</div>
				<div class="form-group half_width">
					<select class="form-control required" name="officeId" id="filter-office">
						<option value="">-Select Office-</option>
						<!-- Start Web.Generic-alumni_office Crosslink Block -->
						<Vuture:StoredProcedureRepeaterXMLParser ID="Vx609518180" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
						<Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
					  <parameter name="intMaxRecords" type="Integer" value='100' />
							<Parameter Name="strContentType" Type="NVarChar" Value="Web.Generic-alumni_office" />
							<ItemTemplate>
								<option value="<%# Container["SitePageId"] %>"  <%# Request["officeId"] == Container["sitepageid"] ? "selected" : ""%>><%# Container["PageName"] %></option>
							</ItemTemplate>
						</Vuture:StoredProcedureRepeaterXMLParser>
						<!-- End Web.Generic-alumni_office Crosslink Block -->
					</select>
				</div>
				<h3>Date Published</h3> 
				<div class="form-group half_width">
					<input type="text" placeholder="Date From" class="form-control datepicker-two" name="startDate" value="<%=Request["startDate"]%>" id="filter-startdate">
				</div>
				<div class="form-group half_width">
					<input type="text" placeholder="Date To" class="form-control datepicker-two" name="endDate" value="<%=Request["endDate"]%>" id="filter-endate">
				</div>
			</div>
		</fieldset>
		<div class="form-group" style="display:none">
			<button class="btn btn-primary btn-md branded_button pull-right" type="submit" id="filter-button">Search &raquo;</button>
		</div>
	</form>
<!--</div>-->

