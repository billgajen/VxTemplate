<div class="search-box well">
  <h2>Quick Search</h2>
  <form method="get" action="/Search/SearchResult.aspx" accept-charset="utf-8">
    <div class="form-group">
      <label> First Name</label>
      <input value="" id="IAForm_firstName" class="form-control required" name="IAForm_firstName" maxlength="250">
    </div>
    <div class="form-group">
      <label> Last Name</label>
      <input value="" id="IAForm_lastName" class="form-control required" name="IAForm_lastName" maxlength="250">
    </div>



  <div class="form-group">
    <label>Date Joined</label>
    <select type="text" class="form-control" name="AdditionalField_DateJoinedFirm">
      <option value="">--- Select ---</option>
      <vuture:yearcontrol id="Vx605652112123StartDate" runat="server" startyear="1979">
        <itemtemplate>
          <option value="<%# Container["year"] %>"><%# Container["year"] %></option>
        </itemtemplate>
      </vuture:yearcontrol>
    </select>
  </div>
  <div class="form-group">
    <label>Date Left</label>
    <select type="text" class="form-control" name="AdditionalField_DateLeftFirm">
      <option value="">--- Select ---</option>
      <vuture:yearcontrol id="Vx605652112123EndDate" runat="server" startyear="1979">
        <itemtemplate>
          <option value="<%# Container["year"] %>"><%# Container["year"] %></option>
        </itemtemplate>
      </vuture:yearcontrol>
    </select>
  </div>


    <!--<div class="form-group">
      <label>Date Joined</label>
      <input class="form-control required" name="IAForm_AdditionalField_DateJoinedFirm" maxlength="250">
    </div>
    <div class="form-group">
      <label>Date Left</label>
      <input class="form-control required" name="IAForm_AdditionalField_DateLeftFirm" maxlength="250">
    </div>-->



    <div class="form-group">
      <label>Position</label>
      <input class="form-control required" name="IAForm_AdditionalField_LastLathamPosition" maxlength="250">
    </div>
    <div class="form-group">
      <label>Department</label>
      <input class="form-control required" name="IAForm_AdditionalField_LWDepartment" maxlength="250">
    </div>
    <div class="form-group">
      <label>Practice Group</label>
      <input class="form-control required" name="IAForm_AdditionalField_PracticeGroups" maxlength="250">
    </div>


<div class="form-group">
<label>Office</label>
<select type="text"  placeholder="" class="form-control" name="IAForm_AdditionalField_Office">
<option value="">--- Select ---</option>
<vuture:viewiapossiblevaluescontrol id="Vx60565211212324X1" runat="server" additonalfieldname="AdditionalField_Office">
<itemtemplate>	
 <option value="<%# Container["PossibleValue"] %>"><%# Container["PossibleValue"] %></option>         
</itemtemplate>
</vuture:viewiapossiblevaluescontrol>
</select>
</div>





    
    <!--<div class="radio_button form-group">
      <vuture:storedprocedurerepeaterxmlparser id="Vx605652112123SEA" storedprocedurename="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
        <parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
        <parameter name="strContentType" type="NVarChar" value="Web.{SiteId}-alumnifolders"></parameter>
        <itemtemplate>
          <label><%# Container["DisplayText"] %></label>
          <input type="radio" name="FolderSitePageId" value="<%# Container["SitePageId"] %>" style="width:20px;display:inline;" checked="checked">
        </itemtemplate>
      </vuture:storedprocedurerepeaterxmlparser>
    </div>-->


 <div class="radio_button form-group">
                <div class="past_current"><input checked="checked" type="radio" name="FolderSitePageId"><label>All</label></div>
                <Vuture:StoredProcedureRepeaterXMLParser ID="Vx605652112123" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
                    <Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
                    <Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-alumnifolders" />
                    <ItemTemplate>
                        <div class="past_current"><input type="radio" name="FolderSitePageId" value="<%# Container["SitePageId"] %>"><label><%# Container["DisplayText"] %></label></div>
                   </ItemTemplate>
               </Vuture:StoredProcedureRepeaterXMLParser>  
              </div>





   <!-- <div><a class="pull-right" href="/search/advanced-profile-search.aspx">Advanced Search</a></div>-->
    <div class="form-group">
      <button class="btn btn-primary btn-md branded_button branded_button_inverted" type="submit">Submit</button>
    </div>
    <input type="hidden" value="" name="_intInstanceId">
    <input type="hidden" value="0" name="_intEmailHistoryId">
    <input type="hidden" value="" name="_available_lists">
  </form>
</div>