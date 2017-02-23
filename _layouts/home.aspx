<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="no-js"><!--<![endif]-->
<head>
	<title>Wunderbar</title>
	<!--#include file="../_inc/meta.aspx"-->
	<!--#include file="../_inc/js.aspx"-->
	<!--#include file="../_inc/css.aspx"-->
</head>
<body>
<div class="wrapper home">
	<div id="col_01" class="vx_drag vx_blocks_file_blocks-header">
		<div class="vx_block">
			<!--#include file="../_inc/header-type-two.aspx"-->
		</div>
	</div>
	<div id="col_02" class="vx_drag vx_blocks_file_blocks-hero page-intro">
		<div class="vx_block row hero two-column">
			<div class="row-content">
				<div class="col-md-8 wide hero-two-column-item">
					<div class="row">
						<div class="col-sm-5 image">
							<div class="vx_image">
								<img src="../_images/image-02.jpg" alt="Hero">
							</div>
						</div>
						<div class="col-sm-7 info">
							<div class="vx_text">
								<h3><a href="#">Amazon Eco dot Review</a></h3>
							</div>
							<div class="vx_text">
								<p>Some description text comes here description text comes here text comes here</p>	
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 narrow hero-two-column-item">
					<div class="image">
						<div class="vx_image">
							<img src="../_images/image-03.jpg" alt="Hero">
						</div>
					</div>
					<div class="info">
						<div class="vx_text">
							<h3><a href="#">Gadget gift ideas for this Chritmas/New year</a></h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="vx_block row hero two-column">
			<div class="row-content">
				<div class="col-md-4 narrow hero-two-column-item">
					<div class="image">
						<div class="vx_image">
							<img src="../_images/image-04.jpg" alt="Hero">
						</div>
					</div>
					<div class="info">
						<div class="vx_text">
							<h3><a href="#">Facebook goal: deliver internet remote areas in Krakozhia</a></h3>
						</div>
					</div>
				</div>
				<div class="col-md-8 wide hero-two-column-item">
					<div class="row">
						<div class="col-sm-7 info">
							<div class="vx_text">
								<h3><a href="#">CHINA'S NEW ELECTRIC SUPERCAR</a></h3>
							</div>
							<div class="vx_text">
								<p>Some description text comes here description text comes here text comes here</p>
							</div>
						</div>
						<div class="col-sm-5 image">
							<div class="vx_image">
								<img src="../_images/image-01.jpg" alt="Hero">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content-area">
		<div class="row">
			<div class="row-content banner">
				<div class="banner-container">
					<div class="col-sm-6 left vx_text">
						<p>Acessunt verum que volorer sperum et audio quam, lanisimi, ut dolorum re pliqu aipsam nonsntiis modi nihitatis ducitem perion nient.</p>
						<p>- Steven Thesai</p>
					</div>
					<div class="col-sm-6 right vx_text">
						<h3><a href="#">HOW GOOGLE MADE ITS VIEW VR HEADSET A REALITY</a></h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="row-content">
				<div class="col-md-8">
					<h3><i class="icon icon-three-star"></i>Latest News</h3>
					<div class="vx-placeholder">
						<img src="../_images/placeholder-home-news.jpg" alt="Placeholder" />
					</div>
					<div class="row article-listing home">
						<vuture:storedprocedurerepeaterxmlparser id="Vx650495110" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFieldsSortByData_Get" runat="server">
						<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
						<parameter name="strContentType" type="NVarChar" value="Web.Generic-demo_news"></parameter>
						<parameter name="sortExpression" type="NVarChar" value="Date Published"></parameter>
						<parameter name="sortExpressionDataType" type="NVarChar" value="DATETIME"></parameter>
						<parameter name="intMaxRecords" type="Integer" value='6'></parameter>
						<itemtemplate>
							<article class="article-item two-col">
								<div class="col-sm-5 thumbnail">
									<a href="<%# Container.GetPageUrl(Container["SiteUrl"], Container["Path"], Container["FileName"], Container["PageType"])%>"><img src="<%# Container["Preview Image"] != "" ? Container["Preview Image"] : "../_images/placeholder.jpg" %>" alt=""></a>
									<div class="category">
										<Vuture:StoredProcedureRepeaterXMLParser ID="Vx788469899" StoredProcedureName="usp_Vx_FrontEnd_LinkedCustomFields_Get" runat="server" ParentData='<%# Container["SitePageId"] %>'>
											<Parameter Name="intSitePageId" Type="Integer" Value='ParentData' />
											<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-demo_newstype" />
											<ItemTemplate><%# Container["PageName"] %></ItemTemplate>
										</Vuture:StoredProcedureRepeaterXMLParser>
									</div>
								</div>
								<div class="col-sm-7 info">
									<h3><a href="<%# Container.GetPageUrl(Container["SiteUrl"], Container["Path"], Container["FileName"], Container["PageType"])%>"><%# Container["News Headline"] != "" ? Container["News Headline"] : "" %></a></h3>
									<div class="category-date">
										<Vuture:StoredProcedureRepeaterXMLParser ID="Vx788469899X" StoredProcedureName="usp_Vx_FrontEnd_LinkedCustomFields_Get" runat="server" ParentData='<%# Container["SitePageId"] %>'>
											<Parameter Name="intSitePageId" Type="Integer" Value='ParentData' />
											<Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-demo_newstype" />
											<ItemTemplate>
												<%# Container["PageName"] %>
											</ItemTemplate>
										</Vuture:StoredProcedureRepeaterXMLParser>
										<span><%# Container["Date Published"] != "" ? Container["Date Published"] : "" %></span>
									</div>
									<p><%# Container["Short Description"] != "" ? Container["Short Description"] : "" %></p>
								</div>
							</article>
						</itemtemplate>
						</vuture:storedprocedurerepeaterxmlparser>
					</div>
					<div class="standard-btn center full-width">
	                	<a href="/news-and-insight/">View all updates</a>
	                </div>
				</div>
				<div id="col_01" class="vx_drag vx_blocks_file_blocks-column-right col-md-4 column-right">
					<div class="vx_block column-right-item events">
						<h3><i class="icon icon-calendar"></i>Events</h3>
						<div class="vx-placeholder">
							<img src="../_images/placeholder-home-events.jpg" alt="Placeholder" />
						</div>
						<ul>
							<vuture:storedprocedurerepeaterxmlparser id="Vx776911828" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
								<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
								<parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-demo_event"></parameter>
								<itemtemplate>
									<li><a href="<%# Container.GetPageUrl(Container["SiteUrl"], Container["Path"], Container["FileName"], Container["PageType"])%>"><%# Container["Event Name"] %></a><span><%# Container["Start Date"] %></span></li>
								</itemtemplate>
							</vuture:storedprocedurerepeaterxmlparser>
						</ul>
					</div>
					<div class="vx_block column-right-item people-news">
						<h3><i class="icon icon-people-search"></i>People</h3>
						<div id="col_02" class="vx_drag vx_blocks_file_blocks-news-items news-items">
							<div class="vx_block people-news-item">
								<div class="vx_image image">
									<img src="/_images/928659-christopher-nolan.jpg" alt="Profile Image">
								</div>
								<div class="vx_text info">
									<h4>Chris Nolan</h4>
									<p>Associate, London</p>
								</div>
							</div>
							<div class="vx_block people-news-item">
								<div class="vx_image image">
									<img src="/_images/ridley-scott.jpg" alt="Profile Image">
								</div>
								<div class="vx_text info">
									<h4>Ridley Scott</h4>
									<p>Associate, London</p>
								</div>
							</div>
							<div class="vx_block people-news-item">
								<div class="vx_image image">
									<img src="/_images/mani-ratnam-premiere.jpg" alt="Profile Image">
								</div>
								<div class="vx_text info">
									<h4>Maniratnam</h4>
									<p>Associate, London</p>
								</div>
							</div>
						</div>
					</div>
					<div class="vx_block column-right-item people-news">
						<h3><i class="icon icon-star"></i>Opportunities</h3>
						<div id="col_03" class="vx_drag vx_blocks_file_blocks-people-news-items news-items">
							<div class="vx_block people-news-item">
								<div class="vx_text info">
									<h4>Creative Director</h4>
									<p>London, UK</p>
								</div>
							</div>
							<div class="vx_block people-news-item">
								<div class="vx_text info">
									<h4>System analyst</h4>
									<p>Scarborough, Canada</p>
								</div>
							</div>
							<div class="vx_block people-news-item">
								<div class="vx_text info">
									<h4>Accountant</h4>
									<p>Liverpool, UK</p>
								</div>
							</div>
						</div>
					</div>
					<div class="vx_block column-right-item news">
						<h3><i class="icon icon-news"></i>RSS Feed</h3>
						<div class='vx_rss_feed_config rss-feed' id="rss_feed_config_01">
							<ul>
								<vuture:rssfeedcontrol id="rss_feed_code_web_01" runat="server" class='vx_rss_feed_code_web'>
									<parameter name="strFeedUrl" type="string" value='https://www.cliffordchance.com/rss/rss-feed-news.html'></parameter>
									<parameter name="strDateFormat" type="string" value='MMM.dd.yyyy'></parameter>
									<parameter name="intTotalCount" type="int" value='3'></parameter>
									<itemtemplate>
										<li><a href='<%# Container["link"] %>' target='_blank'><%# Container["title"] %></a><span><%# Container["publisheddate"] %></span></li>
									</itemtemplate>
									<emptytemplate><div class="rss_hide">Click to edit RSS Feed...</div></emptytemplate>
								</vuture:rssfeedcontrol>  
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row bottom-content">
		<div class="row-content">
			<div class="vx_image col-sm-12" id="img_04">
				<img src="../_images/content-bottom-image.jpg" alt="Image">
			</div>
			<div class="vx_swap vx_blocks_file_blocks-swap col-sm-12 col-lg-5 bottom-content-spotlight">
				<div class="vx_text tag">
					<p>Spotlight</p>
				</div>
				<div class="vx_text" id="txt_07">
					<h2>Swap me to the left</h2>
					<h3>Former partner in the Firm's banking practice</h3>
					<p>Acessunt verum que volorer sperum et audio quam, lanisimi, ut dolorum re pliqu aipsam nonsntiis modi nihitatis ducitem perion nient.</p>
				</div>
				<div class="vx_text standard-btn" id="txt_08">
					<p><a href="#">Listen to the interview</a></p>
				</div>
			</div>
		</div>
	</div>
	<!--#include file="../_inc/footer.aspx"-->
</div>
</body>
</html>
