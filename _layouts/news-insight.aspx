<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="no-js"><!--<![endif]-->
<head>
	<title>Wunderbar | News &amp; insight</title>
	<!--#include file="../_inc/meta.aspx"-->
	<!--#include file="../_inc/js.aspx"-->
	<!--#include file="../_inc/css.aspx"-->
</head>

<body>
	<div class="wrapper">
		<div id="col_01" class="vx_drag vx_blocks_file_blocks-header">
			<div class="vx_block">
				<!--#include file="../_inc/header.aspx"-->
			</div>
		</div>
		<div id="col_02" class="vx_drag vx_blocks_file_blocks-hero page-intro">
			<div class="vx_block row hero">
				<div class="row-content">
					<div class="col-sm-12">
						<div class="vx_image" id="img_01" style="">
							<img src="/_images/hero-02.jpg" alt="hero">
						</div>
					</div>
				</div>
			</div>
			<div class="vx_block row text-area">
				<div class="row-content">
					<div class="col-sm-4 vx_text" id="txt_01">
						<h1>Latest news&nbsp;and insight</h1>
						<p>Updates from the firm</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area">
			<div class="row">
				<div class="row-content">
					<div class="col-sm-12">
						<div class="filter">
							<form>
								<div class="form-group">
									<label for="news-type">Filter news type</label>
									<select class="filter-item" name="news-type" id="news-type">
										<vuture:storedprocedurerepeaterxmlparser id="Vx994454579" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
										<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
										<parameter name="intMaxRecords" type="Integer" value='100'></parameter>
										<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-demo_newstype"></parameter>
											<headertemplate><option value="">Select news type</option></headertemplate>
											<itemtemplate>
												<option value="<%# Container["SitePageId"] %>"><%# Container["PageName"] %></option>
											</itemtemplate>
										</vuture:storedprocedurerepeaterxmlparser>
									</select>
								</div>
							</form>
						</div>
						<div class="vx-placeholder">
							<img src="../_images/placeholder-news.jpg" alt="Placeholder" />
						</div>
						<div class="row article-listing home">
							<vuture:storedprocedurerepeaterxmlparser id="Vx650495110" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFieldsSortByData_Get" runat="server">
								<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
								<parameter name="strContentType" type="NVarChar" value="Web.Generic-demo_news"></parameter>
								<parameter name="sortExpression" type="NVarChar" value="Date Published"></parameter>
								<parameter name="sortExpressionDataType" type="NVarChar" value="DATETIME"></parameter>
								<parameter name="intMaxRecords" type="Integer" value='6'></parameter>
								<headertemplate>
									<div class="total-results">
										<vuture:totalrecordscontrol id='InsightsCountControl' runat='server'></vuture:totalrecordscontrol>
									</div>
								</headertemplate>
								<itemtemplate>
									<article class="col-sm-6 col-md-4 article-item">
										<div class="thumbnail">
											<a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><img src="<%# Container["Preview Image"] != "" ? Container["Preview Image"] : "../_images/placeholder.jpg" %>" alt="Preview"></a>
										</div>
										<div class="category-date">
											<vuture:storedprocedurerepeaterxmlparser id="Vx788469899" storedprocedurename="usp_Vx_FrontEnd_LinkedCustomFields_Get" runat="server" parentdata='<%# Container["SitePageId"] %>'>
												<parameter name="intSitePageId" type="Integer" value='ParentData'></parameter>
												<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-demo_newstype"></parameter>
												<itemtemplate>
													<%# Container["PageName"] %>
												</itemtemplate>
											</vuture:storedprocedurerepeaterxmlparser>
											<span><%# Container["Date Published"] != "" ? Container["Date Published"] : "" %></span>
										</div>
										<h3><a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><%# Container["News Headline"] != "" ? Container["News Headline"] : "" %></a></h3>
										<p><%# Container["Short Description"] != "" ? Container["Short Description"] : "" %></p>
									</article>
								</itemtemplate>
							</vuture:storedprocedurerepeaterxmlparser>
						</div>
						<div class="standard-btn center load-more news-insight">
							<a href="/news-and-insight/">Load more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--#include file="../_inc/footer.aspx"-->
	</div>
</body>

</html>
