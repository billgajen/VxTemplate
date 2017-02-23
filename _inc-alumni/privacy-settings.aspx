<div ><%= Request.QueryString["errorMessage"]%></div>
<form method="post" action='/API/AlumniRegisterProfile' accept-charset="utf-8" enctype="multipart/form-data" class="form" role="form">
  <Vuture:ViewProfileControl ID="profileControl" runat="server" ProfileGuid="<%$ QueryString: ProfileGuid %>">
    <ItemTemplate>
      <Vuture:AlumniFolderCustomFields ID="Vx89985254" runat="server" VxFolderSitePageId='<%# Container["FolderSitePageId"] %>'>
        <ItemTemplate>
          <div class="form-group">
            <label for="VxForm_VxField_hide_Businfo">Business Information</label>
            <input type="radio" name="VxForm_VxField_hide_Businfo" value="True" <%# Container.ParentContainer["VxField_hide_Businfo"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_Businfo" value="False" <%# Container.ParentContainer["VxField_hide_Businfo"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>
          <div class="form-group">
            <label for="VxForm_VxField_hide_BusContactInfo">Business Contact Information</label>
            <input type="radio" name="VxForm_VxField_hide_BusContactInfo" value="True" <%# Container.ParentContainer["VxField_hide_BusContactInfo"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_BusContactInfo" value="False" <%# Container.ParentContainer["VxField_hide_BusContactInfo"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>
          <div class="form-group">
            <label for="VxForm_VxField_hide_PersonalContactInfo">Personal Contact Information</label>
            <input type="radio" name="VxForm_VxField_hide_PersonalContactInfo" value="True" <%# Container.ParentContainer["VxField_hide_PersonalContactInfo"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_PersonalContactInfo" value="False" <%# Container.ParentContainer["VxField_hide_PersonalContactInfo"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>
          <div class="form-group">
            <label for="VxForm_VxField_hide_PersonalAddress">Personal Address</label>
            <input type="radio" name="VxForm_VxField_hide_PersonalAddress" value="True" <%# Container.ParentContainer["VxField_hide_PersonalAddress"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_PersonalAddress" value="False" <%# Container.ParentContainer["VxField_hide_PersonalAddress"] != "True" ? "checked" : ""   %> >
            <span>Show</span> 
</div>
 <div class="form-group">
            <label for="VxForm_ VxField_hide_AlumniEmail">Alumni Contact Email Address</label>
            <input type="radio" name="VxForm_VxField_hide_AlumniEmail" value="True" <%# Container.ParentContainer["VxField_hide_AlumniEmail"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_AlumniEmail" value="False" <%# Container.ParentContainer["VxField_hide_AlumniEmail"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>
 <!--<div class="form-group">
            <label for="VxForm_VxField_hide_WorkHistory">Work History</label>
            <input type="radio" name="VxForm_VxField_hide_WorkHistory" value="True" <%# Container.ParentContainer["VxField_hide_WorkHistory"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_WorkHistory" value="False" <%# Container.ParentContainer["VxField_hide_WorkHistory"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>-->
<div class="form-group">
            <label for="VxForm_VxField_hide_EduHistory">Education History</label>
            <input type="radio" name="VxForm_VxField_hide_EduHistory" value="True" <%# Container.ParentContainer["VxField_hide_EduHistory"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_EduHistory" value="False" <%# Container.ParentContainer["VxField_hide_EduHistory"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>
<div class="form-group">
            <label for="VxForm_VxField_hide_Social">Social Media</label>
            <input type="radio" name="VxForm_VxField_hide_Social" value="True" <%# Container.ParentContainer["VxField_hide_Social"] == "True" ? "checked" : ""   %> >
            <span>Hide</span>
            <input type="radio" name="VxForm_VxField_hide_Social" value="False" <%# Container.ParentContainer["VxField_hide_Social"] != "True" ? "checked" : ""   %> >
            <span>Show</span> </div>

          
          <!-- <div class="form-group">
					    <label for="VxForm_VxField_hide_DateStart">Hide Date Start</label>
						<input type="radio" name="VxForm_VxField_hide_DateStart" value="True" <%# Container.ParentContainer["VxField_hide_DateStart"] == "True" ? "checked" : ""   %> ><span>Yes</span>
						<input type="radio" name="VxForm_VxField_hide_DateStart" value="False" <%# Container.ParentContainer["VxField_hide_DateStart"] != "True" ? "checked" : ""   %> ><span>No</span>
					</div>
                    
                  <div class="form-group">
					    <label for="VxForm_VxField_hide_DateLeft">Hide Date Left</label>
						<input type="radio" name="VxForm_VxField_hide_DateLeft" value="True" <%# Container.ParentContainer["VxField_hide_DateLeft"] == "True" ? "checked" : ""   %> ><span>Yes</span>
						<input type="radio" name="VxForm_VxField_hide_DateLeft" value="False" <%# Container.ParentContainer["VxField_hide_DateLeft"] != "True" ? "checked" : ""   %> ><span>No</span>
					</div>-->
          
          <div class="form-group">
            <input type="hidden" name="VxForm_Mode" value="edit" />
            <input type="hidden" name="FolderSitePageId" value="<%# Container.ParentContainer["FolderSitePageId"] %>" />
          </div>
          <div class="form-group">
            <button value="Submit" name="submit" id="subtmit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-right" type="submit">Update</button>
          </div>
        </ItemTemplate>
      </Vuture:AlumniFolderCustomFields>
    </ItemTemplate>
  </Vuture:ViewProfileControl>
</form>
