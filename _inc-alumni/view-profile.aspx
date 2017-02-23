<vuture:viewprofilecontrol id="VxViewProfile" runat="server" profileguid="<%$ QueryString: ProfileGuid %>" EnableOfflineLoad='true'>
  <ItemTemplate>
    <div class="row">
      <div class="col-sm-3"> <img src="/API/ProfileImage/<%# Container["ProfileGuid"] %>.jpg?width=175&height=175" alt="Image not found" /> </div>
      <div class="col-sm-9">
        <h2><%# Container["title"] %> <%# Container["goesBy"] %> <%# Container["lastName"] %></h2>
        
		<div class="connect">
			<h4><%# Container["VxField_hide_Social"] != "True" ? "Connect:" : "" %></h4>
			<%# Container["VxField_hide_AlumniEmail"] != "True" ? "<a href='" + Container["FolderSpecificEmailAddress"] + "'><span class='icon icon-email'></span></a>" : "" %>
			<%# Container["VxField_hide_Social"] != "True" && !String.IsNullOrEmpty(Container["AdditionalField_URL-LinkedIn"]) ? "<a href='" + Container["AdditionalField_URL-LinkedIn"] + "'><span class='icon icon-linkedin'></span></a>" : "" %>
			<%# Container["VxField_hide_Social"] != "True" && !String.IsNullOrEmpty(Container["AdditionalField_URL-Facebook"]) ? "<a href='" + Container["AdditionalField_URL-Facebook"] + "'><span class='icon icon-facebook'></span></a>" : "" %>
			<%# Container["VxField_hide_Social"] != "True" && !String.IsNullOrEmpty(Container["AdditionalField_URL-Twitter"]) ? "<a href='" + Container["AdditionalField_URL-Twitter"] + "'><span class='icon icon-twitter'></span></a>" : "" %>
			<%# Container["VxField_hide_Social"] != "True" && !String.IsNullOrEmpty(Container["AdditionalField_URL-WeChat"]) ? "<a href='" + Container["AdditionalField_URL-WeChat"] + "'><span class='icon icon-chat'></span></a>" : "" %>
		</div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div class="profile-info-group" <%# Container["VxField_hide_BusInfo"] == "True" || Container["jobTitle"]=="" && Container["companyName"]=="" && Container["street"]=="" && Container["city"]=="" && Container["state"]=="" && Container["postalCode"]=="" && Container["country"]=="" ? "style=\'display: none\'" : "" %>> 
          <!--<h3 class="subtitle">Business Information</h3>-->
          <h3 class="subtitle"><%# Container["VxField_hide_BusInfo"] != "True" ? "Business Information" : "" %></h3>
          <p><strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["jobTitle"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["companyName"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["street"].Replace("|","</br>") + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["city"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["state"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["postalCode"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_BusInfo"] != "True" ? "</strong><span>" + Container["country"] + "</span>" : "" %></p>
        </div>
        <div class="profile-info-group" <%# Container["VxField_hide_BusContactInfo"] == "True" || Container["businessElectronicAddress"]=="" && Container["telephone"]=="" && Container["mobile"]=="" ? "style='display: none'" : "" %>> 
          <!--<h3 class="subtitle">Business Contact Information</h3>-->
          <h3 class="subtitle"><%# Container["VxField_hide_BusContactInfo"] != "True" ? "Business Contact Information" : "" %></h3>
          <p><strong><%# Container["VxField_hide_BusContactInfo"] != "True" ? "Email: </strong><span>" + Container["businessElectronicAddress"] + "</span></br>" : "" %> 
           <strong><%# Container["VxField_hide_BusContactInfo"] != "True" ? "Direct Line: </strong><span>" + Container["telephone"] + "</span></br>" : "" %> 
           <strong><%# Container["VxField_hide_BusContactInfo"] != "True" ? "Mobile: </strong><span>" + Container["mobile"] + "</span>" : "" %></p>
        </div>
        <div class="profile-info-group" <%# Container["city_home"]=="" && Container["state_home"]=="" && Container["postalCode_home"]=="" && Container["country_home"]=="" ? "style=\'display: none\'" : "" %>>
        <h3 class="subtitle"><%# Container["VxField_hide_PersonalAddress"] != "True" ? "Personal Information" : "" %></h3>
          
          <!--<p><strong>Home Street Address:</strong><span> <%# Container["street_home"] %></span></p>--> 
          <!--<p><strong> </strong><span> <%# Container["street"].Split(',').Length >= 1 && Container["street_home"].Split(',')[0] != "" ? "<span>" + Container["street_home"].Split(',')[0] + "</span></br>" : "" %></span></p>--> 
          
          <p><%# Container["VxField_hide_PersonalAddress"] != "True" ? "<span>"+ Container["street_home"].Replace("|","</br> ") + "</span></br>" : "" %>
		  <%# Container["VxField_hide_PersonalAddress"] != "True" ? "<span>" + Container["city_home"] + "</span></br>" : "" %>
          <%# Container["VxField_hide_PersonalAddress"] != "True" ? "<span>" + Container["state_home"] + "</span></br>" : "" %>
          <%# Container["VxField_hide_PersonalAddress"] != "True" ? "<span>" + Container["postalCode_home"] + "</span></br>" : "" %>
          <%# Container["VxField_hide_PersonalAddress"] != "True" ? "<span>" + Container["country_home"] + "</span>" : "" %>
          </p>
        </div>
        <div class="profile-info-group" <%# Container["VxField_hide_PersonalContactInfo"] == "True" || Container["Email_home"]=="" && Container["telephone_home"]=="" ? "style=\'display: none\'" : "" %>> 
          <!--<h3 class="subtitle">Personal Contact Information</h3>-->
          <h3 class="subtitle"><%# Container["VxField_hide_PersonalContactInfo"] != "True" ? "Personal Contact Information" : "" %></h3>
          <p><strong><%# Container["VxField_hide_PersonalContactInfo"] != "True" ? "Email: </strong><span>" + Container["Email_home"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_PersonalContactInfo"] != "True" ? "Phone: </strong><span>" + Container["telephone_home"] + "</span>" : "" %></p>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="profile-info-group" <%# Container["AdditionalField_LastLathamPosition"]=="" && Container["AdditionalField_PracticeGroups"]=="" && Container["AdditionalField_LWDepartment"]=="" && Container["AdditionalField_Office"]=="" && Container["AdditionalField_DateJoinedFirm"]=="" && Container["AdditionalField_DateLeftFirm"]=="" ? "style=\'display: none\'" : "" %>>
          <h3 class="subtitle">Latham & Watkins Information</h3>
          <p><strong>Position:</strong><span> <%# Container["AdditionalField_LastLathamPosition"] %></span></br>
           <strong>Practice Area(s):</strong><span> <%# Container["AdditionalField_PracticeGroups"] %></span></br>
           <strong>Department:</strong><span> <%# Container["AdditionalField_LWDepartment"] %></span></br>
           <strong>Last/Current Office:</strong><span> <%# Container["AdditionalField_Office"] %></span></br>
           Date Started:<span> <%# Container.FormatDate(Container["AdditionalField_DateJoinedFirm"],"dd/MM/yyyy HH:mm:ss","MM/dd/yyyy") %></span></br>
           Date Left:<span> <%# Container.FormatDate(Container["AdditionalField_DateLeftFirm"],"dd/MM/yyyy HH:mm:ss","MM/dd/yyyy") %></span></p>
        </div>
        <div class="profile-info-group" <%# Container["VxField_hide_EduHistory"] == "True" || Container["AdditionalField_University1Name"]=="" && Container["AdditionalField_University1Degree"]=="" && Container["AdditionalField_University1GraduationYear"]=="" && Container["AdditionalField_University2Name"]=="" && Container["AdditionalField_University2Degree"]=="" && Container["AdditionalField_University2GraduationYear"]=="" && Container["AdditionalField_University3Name"]=="" && Container["AdditionalField_University3GraduationYear"]=="" && Container["AdditionalField_Clerkship(Court)"]=="" ? "style=\'display: none\'" : "" %>> 
          <!--<h3 class="subtitle">Education History</h3>-->
          <h3 class="subtitle"><%# Container["VxField_hide_EduHistory"] != "True" ? "Education History" : "" %></h3>
          <p><strong><%# Container["VxField_hide_EduHistory"] != "True" ? "University: </strong><span>" + Container["AdditionalField_University1Name"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Degree: </strong><span>" + Container["AdditionalField_University1Degree"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Graduation Year: </strong><span>" + Container["AdditionalField_University1GraduationYear"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "University: </strong><span>" + Container["AdditionalField_University2Name"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Degree: </strong><span>" + Container["AdditionalField_University2Degree"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Graduation Year: </strong><span>" + Container["AdditionalField_University2GraduationYear"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "University: </strong><span>" + Container["AdditionalField_University3Name"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Degree: </strong><span>" + Container["AdditionalField_University3Degree"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Graduation Year: </strong><span>" + Container["AdditionalField_University3GraduationYear"] + "</span></br>" : "" %>
          <strong><%# Container["VxField_hide_EduHistory"] != "True" ? "Clerkship (Court): </strong><span>" + Container["AdditionalField_Clerkship(Court)"] + "</span></br>" : "" %></p>
        </div>
        <!--<div class="profile-info-group"> 
          <h3 class="subtitle"><%# Container["VxField_hide_Social"] != "True" ? "Social Media" : "" %></h3>
          <p><strong><%# Container["VxField_hide_Social"] != "True" ? "LinkedIn URL: </strong><span>" + Container["AdditionalField_URL-LinkedIn"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_Social"] != "True" ? "Facebook URL: </strong><span>" +  Container["AdditionalField_URL-Facebook"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_Social"] != "True" ? "Twitter URL: </strong><span>" +  Container["AdditionalField_URL-Twitter"] + "</span></br>" : "" %>
           <strong><%# Container["VxField_hide_Social"] != "True" ? "WeChat URL: </strong><span>" +  Container["AdditionalField_URL-WeChat"] + "</span></br>" : "" %></p>
        </div>-->
      </div>
    </div>
  </ItemTemplate>
</Vuture:ViewProfileControl>
