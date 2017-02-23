<vuture:iasearchresultcontrol id="IASearchResultControl" runat="server">
	<parameter name="intInstanceId" type="Integer" value='1'></parameter>
	<parameter name="intExternalContactId" type="NVarChar" value="8589944274"></parameter>
	<parameter name="intMaxRecords" type="Integer" value='10'></parameter>
	<parameter name="page" type="Integer" value='<%$ QueryString: page %>'></parameter>
	<parameter name="sortExpression" type="NVarChar" value='lastName'></parameter>
	<parameter name="sortOrder" type="NVarChar" value='asc'></parameter>
	<headertemplate>
		<div class="previous_next">
			<vuture:searchpager id="VxPage605652112123" runat="server" recordsperpage="10" maxpages="10" nexttext="Next" previoustext="Previous"></vuture:searchpager>
		</div>
		<div id="people-listing-header" class="row people-listing-title">
			<div class="col-sm-4">NAME</div>
			<div class="col-sm-3">COMPANY</div>
			<div class="col-sm-5">JOB TITLE</div>
		</div>
        <input id="total-results" type="hidden" value="<vuture:totalrecordscontrol id='InsightsCountControl' runat='server'></vuture:totalrecordscontrol>" />
        <div id="results-text" style="display:none">Sorry, there are no results that match your search criteria</div>                
	</headertemplate>
	<itemtemplate>
		<div class="row people-listing-item search">
			<div class="col-sm-4">
				<h3><a href="../ManageProfile/ViewProfile.aspx?ProfileGuid=<%# Container["profileGuid"] %>"><%# Container["firstName"] %> <%# Container["lastName"] %></a></h3>
			</div>
			<div class="col-sm-3">
				<%# Container["companyName"] %>
			</div>
			<div class="col-sm-5">
				<%# Container["jobTitle"] %>
			</div>
		</div>
	</itemtemplate>
</vuture:iasearchresultcontrol>
