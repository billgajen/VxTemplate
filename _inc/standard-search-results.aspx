<vuture:sitesearchresultcontrol id="Vx605652112123" storedprocedurename="usp_Vx_SimpleSiteSearchResults_Get" runat="server">
	<parameter name="intMaxRecords" type="Integer" value='10'></parameter>
	<parameter name="intPage" type="Integer" value="<%$ QueryString: page %>"></parameter>
	<headertemplate>
		<div class="bar">
			<!-- Display result text -->
			<div class="count">
				Your search has turned out <vuture:totalrecordscontrol id="VxTotalRecordsControl" runat="server"></vuture:totalrecordscontrol> results.
			</div>
			<div class="previous_next">
				<vuture:searchpager id="Vx605652112123" runat="server" recordsperpage="10" maxpages="5" nexttext="Next" previoustext="Previous"></vuture:searchpager>
			</div>
		</div>
	</headertemplate>
	<itemtemplate>
		<div class="result">
			<div class="copy">
				<p class="pageLink">
					<a href='<%# Container.GetPageUrl(Container["SiteUrl"], Container["Path"],Container["FileName"], Container["PageType"])%>'><strong><%# Container["PageName"] %></strong></a>
				</p>
				<%# Container["Description"] != "" ? "<p>" + Container["Description"] + "</p>" : "" %>				
			</div>
		</div>
	</itemtemplate>                                
</vuture:sitesearchresultcontrol>
