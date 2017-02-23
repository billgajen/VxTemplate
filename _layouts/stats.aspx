<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!--<![endif]-->

<head>
	<title>Wunderbar | Stats</title>
	<!--#include file="../_inc/meta.aspx"-->
	<script type="text/javascript" src="/_js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="/_js/libs/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="/_js/angular-1.4.7.min.js"></script>
	<script type="text/javascript" src="/_js/fusioncharts.js"></script>
	<script type="text/javascript" src="/_js/fusioncharts.maps.js"></script>
	<script type="text/javascript" src="/_js/fusioncharts.europe.js"></script>
	<script type="text/javascript" src="/_js/themes/fusioncharts.theme.fint.js"></script>
	<script type="text/javascript" src="/_js/fusion-chart-api.js"></script>
	<script type="text/javascript" src="/_js/app.js"></script>
	<script type="text/javascript" src="../_js/controllers/ChartController.js"></script>
	<script type="text/javascript" src="/_js/main.js"></script>
	<!--#include file="../_inc/css.aspx"-->
</head>

<body ng-app="vxChartApp">
	<div class="wrapper">
		<div id="col_01" class="vx_drag vx_blocks_file_blocks-header">
			<div class="vx_block" id="blk_01">
				<!--#include file="../_inc/header.aspx"-->
			</div>
		</div>
		<div id="col_02" class="vx_drag vx_blocks_file_blocks-hero page-intro">
			<div class="vx_block row hero" id="blk_02">
				<div class="row-content">
					<div class="col-sm-12">
						<div class="vx_image" id="img_01" style="">
							<img src="/_images/hero-07.jpg" alt="hero">
						</div>
					</div>
				</div>
			</div>
			<div class="vx_block row text-area" id="blk_03">
				<div class="row-content">
					<div class="col-sm-4 vx_text" id="txt_01">
						<h1>Stats</h1>
						<p>Data center of Wunderbar</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area">
			<div class="row stats" ng-controller="ChartController">
				<div class="row-content">
					<div class="col-sm-12 pie-chart chart-block">
						<div class="row">
							<div class="col-sm-6 info">
								<div class="vx_text">
									<h2>Split of Revenue by Product Categories</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sodales sapien. Maecenas auctor augue vel cursus tempus. Ut tincidunt vestibulum ullamcorper. Donec non placerat lorem. Nulla ut enim varius, malesuada leo a, scelerisque est. Donec faucibus ex vel vestibulum pharetra.</p>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="hidden">
									<Vuture:StoredProcedureRepeaterXMLParser ID="Vx218816316" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
									<Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
									<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-chart_pie_product" />
									<ItemTemplate>
										<div ng-init="getAllRevenueProduct('<%# Container["PageName"] %>', '<%# Container["Revenue"] %>')"></div>
									</ItemTemplate>
									</Vuture:StoredProcedureRepeaterXMLParser>
								</div>
								<div id="pie-chart-container"></div>
							</div>
						</div>
					</div>
					<div class="col-sm-12 area-chart chart-block">
						<div class="row">
							<div class="col-sm-6">
								<div class="hidden">
									<Vuture:StoredProcedureRepeaterXMLParser ID="Vx743927834" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
									<Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
									<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-chart_sales" />
									<ItemTemplate>
										<div ng-init="getAllSalesValues('<%# Container["PageName"] %>', '<%# Container["Sales amount"] %>')"></div>
									</ItemTemplate>
									</Vuture:StoredProcedureRepeaterXMLParser>
								</div>
								<div id="area-chart-container"></div>
							</div>
							<div class="col-sm-6 info">
								<div class="vx_text">
									<h2>Sales of Novel</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sodales sapien. Maecenas auctor augue vel cursus tempus. Ut tincidunt vestibulum ullamcorper. Donec non placerat lorem. Nulla ut enim varius, malesuada leo a, scelerisque est. Donec faucibus ex vel vestibulum pharetra.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12 map-chart chart-block">
						<div class="row">
							<div class="col-sm-6 info">
								<div class="vx_text">
									<h2>Country data</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sodales sapien. Maecenas auctor augue vel cursus tempus. Ut tincidunt vestibulum ullamcorper. Donec non placerat lorem. Nulla ut enim varius, malesuada leo a, scelerisque est. Donec faucibus ex vel vestibulum pharetra.</p>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="hidden">
									<Vuture:StoredProcedureRepeaterXMLParser ID="Vx714610407" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
									<Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
									<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-chart_map_country" />
									<ItemTemplate>
										<div ng-init="getAllCountryData('<%# Container["Country ID"] %>', '<%# Container["GDP Value"] %>')"></div>
									</ItemTemplate>
									</Vuture:StoredProcedureRepeaterXMLParser>
								</div>
								<div id="map-chart-container"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--#include file="../_inc/footer.aspx"-->
	</div>
</body>

</html>
