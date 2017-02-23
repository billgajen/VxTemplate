<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!--<![endif]-->

<head>
	<title>Wunderbar | Events</title>
	<!--#include file="../_inc/meta.aspx"-->
	<!--#include file="../_inc/js.aspx"-->
	<!--#include file="../_inc/css.aspx"-->
</head>

<body>
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
							<img src="/_images/hero-05.jpg" alt="hero">
						</div>
					</div>
				</div>
			</div>
			<div class="vx_block row text-area" id="blk_03">
				<div class="row-content">
					<div class="col-sm-4 vx_text" id="txt_01">
						<h1>Events</h1>
						<p>Past and Upcoming Events</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area">
			<div class="row">
				<div class="row-content">
					<div class="col-sm-12">
						<div class="vx-placeholder">
							<img src="../_images/placeholder-news.jpg" alt="Placeholder" />
						</div>
						<div class="row article-listing home">
							<vuture:storedprocedurerepeaterxmlparser id="Vx776911828" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
								<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
								<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-demo_event"></parameter>
								<parameter name="intMaxRecords" type="Integer" value='6'></parameter>
								<headertemplate>
									<div class="total-results">
										<vuture:totalrecordscontrol id='InsightsCountControl' runat='server'></vuture:totalrecordscontrol>
									</div>
								</headertemplate>
								<itemtemplate>
									<article class="col-sm-6 col-md-4 article-item">
										<div class="thumbnail">
											<a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><img src="<%# Container["Event Image"] != "" ? Container["Event Image"] : "../_images/placeholder.jpg" %>" alt="Preview"></a>
										</div>
										<div class="category-date"><%# Container["Location (City,State.County)"] != "" ? Container["Location (City,State.County)"] : "" %><span><%# Container["Start Date"] != "" ? Container["Start Date"] : "" %></span></div>
										<h3><a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><%# Container["Event Name"] %></a></h3>
										<p><%# Container["Description"] != "" ? Container["Description"] : "" %></p>
									</article>
								</itemtemplate>
							</vuture:storedprocedurerepeaterxmlparser>
						</div>
						<div class="standard-btn center load-more news-insight">
							<a href="/events/">Load more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--#include file="../_inc/footer.aspx"-->
	</div>
</body>

</html>
