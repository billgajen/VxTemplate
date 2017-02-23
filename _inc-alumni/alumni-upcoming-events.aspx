<vuture:supersnippet id="upcomingEvents" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_UpcomingEvents_SortByDate_Get" runat="server">
                        <parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
                        <parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnievent"></parameter>
                        <parameter name="startDateFieldName" type="NVarChar" value="Event Start Date"></parameter>
                        <parameter name="sortExpression" type="NVarChar" value="Event Start Date"></parameter>
                        <parameter name="sortOrder" type="NVarChar" value="ASC"></parameter>

                        <itemtemplate>
                            <article class="blog_listing_item">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-4">
                                        <div class="thumbnail image block_image">
                                            <a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><img src="/_images/placeholder.jpg" alt=""></a>
                                        </div>
                                    </div>

                                    <div class="col-xs-6 col-sm-8">
                                        <div class="vx_text" id="txt_04">
                                            <h3><a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>"><%# Container["Event Name"] %></a></h3>

                                            <div class="margin_top small">
                                                <div class="icon">
                                                    <span class="glyphicon glyphicon-calendar"> </span>
                                                    <span class="vx_text" id="txt_05"><%# Container["Event Start Date"] != "" ? Container["Event Start Date"] : "" %></span>
                                                </div>
                                                <div class="icon">
                                                    <span class="glyphicon glyphicon-time"> </span>
                                                    <span class="vx_text" id="txt_06"><%# Container["Event Start Time"] != "" ? Container["Event Start Time"] : "" %></span>
                                                </div>
                                                <div class="icon">
                                                    <span class="glyphicon glyphicon-calendar"> </span>
                                                    <span class="vx_text" id="txt_07"><%# Container["Event End Date"] != "" ? Container["Event End Date"] : "" %></span>
                                                </div>
                                                <div class="icon">
                                                    <span class="glyphicon glyphicon-time"> </span>
                                                    <span class="vx_text" id="txt_08"><%# Container["Event End Time"] != "" ? Container["Event End Time"] : "" %></span>
                                                </div>
                                                <div class="icon">
                                                    <span class="glyphicon glyphicon-map-marker"> </span>
                                                    <span class="vx_text" id="txt_09"><%# Container["Event Location"] != "" ? Container["Event Location"] : "" %></span>
                                                </div>
                                            </div>

                                            <p><a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>">Read more &rarr;</a></p>

                                        <vuture:storedprocedurerepeaterxmlparser id="Vx79660101_SUB" storedprocedurename="usp_Vx_FrontEnd_LinkedCustomFields_Get" runat="server" parentdata='<%# Container["SitePageId"] %>'>
                                            <parameter name="intSitePageId" type="Integer" value='ParentData'></parameter>
                                            <parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnirsvpform"></parameter>
                                            <itemtemplate>
                                                <p><a href="<%# Container.GetPageUrl(Container["Path"], Container["FileName"], Container["PageType"])%>">RSVP Event&rarr;</a></p>
                                            </itemtemplate>
                                        </vuture:storedprocedurerepeaterxmlparser>

                                        </div>
                                    </div>
                                </div>
                            </article>
                        </itemtemplate>
                        </vuture:supersnippet>