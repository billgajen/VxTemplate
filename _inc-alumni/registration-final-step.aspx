<div class="form_container">
  <div class="warning"><%= Request.QueryString["errorMessage"]%></div>
  <form method="post" action='/API/AlumniRegisterProfile' accept-charset="utf-8" enctype="multipart/form-data" class="form" role="form">
    <Vuture:ViewProfileControl ID="VxVireProfileControl" runat="server" ProfileGuid="<%$ QueryString: ProfileGuid %>">
      <ItemTemplate>
        <Vuture:AlumniFolderCustomFields ID="Vx89985254" runat="server" VxFolderSitePageId='<%# Container["FolderSitePageId"] %>'>
          <ItemTemplate>
            <!--<div class="form-group">
              <div class="col-sm-3"> <img src="/API/ProfileImage/<%# Container.ParentContainer["ProfileGuid"] %>.jpg?width=175&height=175" alt="Image not found" /> </div>
              <div class="file col-sm-9">
                <label for="Vx_ProfilePhoto">Profile Photo</label>
                <input name="Vx_ProfilePhoto" value="" type="file" />
                <div class="alert" role="alert">
                  <p>Allowed image formats are JPG,JPEG,PNG,GIF,<br />
                    Minimum image dimensions should be 400px * 400px <br />
                    Maximum image dimensions should be 1200px * 1200px <br />
                    Maximum image size should be 10 MB</p>
                </div>
              </div>
            </div>-->
            <div class="form-group">
              <label for="IAForm_<%# Container["FolderSpecificEmailAddress"] %>">Alumni Contact Email</label>
              <input id=" " type="text" class="form-control" readonly="readonly" name="<%# Container["FolderSpecificEmailAddress"] %>" value="<%# Container.ParentContainer["FolderSpecificEmailAddress"]%>">
            </div>
            <div class="form-group">
             <label for="VxForm_Password"><span style="color: #ff0000;">Please enter a Password * </br>(Passwords must contain at least one uppercase and lowercase letter and one numeric character. A minimum of 7 characters.)</span></label>
              <input value="" id="VxForm_Password" class="form-control required" name="VxForm_Password" maxlength="250" type="password" />
            </div>
           <div class="form-group">
					<label for="IAForm_title">Title *</label>
					<select id="IAForm_title" class="form-control required" name="IAForm_title">
						<option value="">--Select--</option>
						<option value="Mr." <%# Container.ParentContainer["title"]=="Mr." ? "selected" : ""%> >Mr</option>
						<option value="Mrs." <%# Container.ParentContainer["title"]=="Mrs." ? "selected" : ""%>>Mrs</option>
						<option value="Miss." <%# Container.ParentContainer["title"]=="Miss." ? "selected" : ""%>>Miss</option>
						<option value="Ms." <%# Container.ParentContainer["title"]=="Ms." ? "selected" : ""%>>Ms</option>
						<option value="Mr. & Mrs." <%# Container.ParentContainer["title"]=="Mr. & Mrs." ? "selected" : ""%>>Mr. & Mrs.</option>
						<option value="Dr." <%# Container.ParentContainer["title"]=="Dr." ? "selected" : ""%>>Dr</option>
						<option value="Hon." <%# Container.ParentContainer["title"]=="Hon." ? "selected" : ""%>>Hon</option>
						<option value="Rabbi" <%# Container.ParentContainer["title"]=="Rabbi" ? "selected" : ""%>>Rabbi</option>
						<option value="Rev." <%# Container.ParentContainer["title"]=="Rev." ? "selected" : ""%>>Rev.</option>
					</select>
				</div>
				<div class="form-group">
					<label for="IAForm_suffix">Suffix </label>
					<select id="IAForm_suffix" class="form-control" name="IAForm_suffix">
						<option value="">--Select--</option>
						<option value="2d" <%# Container.ParentContainer["suffix"]=="2d" ? "selected" : ""%>>2d</option>
						<option value="3d" <%# Container.ParentContainer["suffix"]=="3d" ? "selected" : ""%>>3d</option>
						<option value="CFA" <%# Container.ParentContainer["suffix"]=="CFA" ? "selected" : ""%>>CFA</option>
						<option value="CFP" <%# Container.ParentContainer["suffix"]=="CFP" ? "selected" : ""%>>CFP</option>
						<option value="CPA" <%# Container.ParentContainer["suffix"]=="CPA" ? "selected" : ""%>>CPA</option>
						<option value="D.D.S." <%# Container.ParentContainer["suffix"]=="D.D.S." ? "selected" : ""%>>D.D.S.</option>
						<option value="D.O." <%# Container.ParentContainer["suffix"]=="D.O." ? "selected" : ""%>>D.O.</option>
						<option value="Esq." <%# Container.ParentContainer["suffix"]=="Esq." ? "selected" : ""%>>Esq.</option>
						<option value="II" <%# Container.ParentContainer["suffix"]=="II" ? "selected" : ""%>>II</option>
						<option value="III" <%# Container.ParentContainer["suffix"]=="III" ? "selected" : ""%>>III</option>
						<option value="Jr." <%# Container.ParentContainer["suffix"]=="Jr." ? "selected" : ""%>>Jr.</option>
						<option value="M.D." <%# Container.ParentContainer["suffix"]=="M.D." ? "selected" : ""%>>M.D.</option>
						<option value="Ph.D." <%# Container.ParentContainer["suffix"]=="Ph.D." ? "selected" : ""%>>Ph.D.</option>
						<option value="QC" <%# Container.ParentContainer["suffix"]=="QC" ? "selected" : ""%>>QC</option>
						<option value="Sr." <%# Container.ParentContainer["suffix"]=="Sr." ? "selected" : ""%>>Sr.</option>
					</select>
				</div>
				<div class="form-group">
					<label for="IAForm_goesBy">Goes By * </label>
					<input type="text" value="<%# Container.ParentContainer["goesBy"] %>" id="IAForm_goesBy" class="form-control required" name="IAForm_goesBy" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_firstName">First Name * </label>
					<input type="text" value="<%# Container.ParentContainer["firstName"] %>" id="IAForm_firstName" class="form-control required" name="IAForm_firstName" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_lastName">Middle Name</label>
					<input type="text" value="<%# Container.ParentContainer["middleName"] %>" id="IAForm_middleName" class="form-control" name="IAForm_middleName" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_lastName">Last Name * </label>
					<input type="text" value="<%# Container.ParentContainer["lastName"] %>" id="IAForm_lastName" class="form-control required" name="IAForm_lastName" maxlength="250">
				</div>
				<p>&nbsp;</p>
				<h4>Business Information </h4>
				<p>Please note that only your company name, job title, city and country will be visible to other users</p>
				<div class="form-group">
					<label for="IAForm_companyName">Company </label>
					<input type="text" value="<%# Container.ParentContainer["companyName"] %>" id="IAForm_companyName" class="form-control" name="IAForm_companyName" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_jobTitle">Job Title </label>
					<input type="text" value="<%# Container.ParentContainer["jobTitle"] %>" id="IAForm_jobTitle" class="form-control" name="IAForm_jobTitle" maxlength="250">
				</div>
   <!--  <div class="form-group">
            <label for="IAForm_street">Business Address </label>
            <input type="text" value="<%# Container.ParentContainer["street"] %>" id="IAForm_street" class="form-control required" name="IAForm_street" maxlength="250">
          </div> -->
        <div class="form-group">
          <label for="IAForm_street">Business Address</label>
        <textarea name="IAForm_street" cols="30" rows="5" class="form-control"><%# Container.ParentContainer["street"].Replace("|","") %></textarea>
        </div>






				<div class="form-group">
					<label for="IAForm_city">Business City </label>
					<input type="text" value="<%# Container.ParentContainer["city"] %>" id="IAForm_city" class="form-control" name="IAForm_city" maxlength="250">
				</div>
				<!--<div class="form-group">
				<label for="IAForm_state">Business County/State</label>
				<input type="text" value="<%# Container.ParentContainer["state"] %>" id="IAForm_state" class="form-control" name="IAForm_state" maxlength="250">
			  </div>-->
				<div class="form-group">
					<label for="IAForm_postalCode">Business Postal/Zip code </label>
					<input type="text" value="<%# Container.ParentContainer["postalCode"] %>" id="IAForm_postalCode" class="form-control" name="IAForm_postalCode" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_country">Country</label>
					<select id="IAForm_country" class="form-control" name="IAForm_country" data-selected-state='<%# Container.ParentContainer["state"] %>'>
						<option value="">--Select--</option>
						<option data-country-id="1" value="Afghanistan" <%# Container.ParentContainer["country"]=="Afghanistan" ? "selected" : "" %> >Afghanistan</option>
						<option data-country-id="2" value="Albania" <%# Container.ParentContainer["country"]=="Albania" ? "selected" : "" %> >Albania</option>
						<option data-country-id="3" value="Algeria" <%# Container.ParentContainer["country"]=="Algeria" ? "selected" : "" %> >Algeria</option>
						<option data-country-id="4" value="American Samoa" <%# Container.ParentContainer["country"]=="American Samoa" ? "selected" : "" %> >American Samoa</option>
						<option data-country-id="5" value="Andorra" <%# Container.ParentContainer["country"]=="Andorra" ? "selected" : "" %> >Andorra</option>
						<option data-country-id="6" value="Angola" <%# Container.ParentContainer["country"]=="Angola" ? "selected" : "" %> >Angola</option>
						<option data-country-id="7" value="Anguilla" <%# Container.ParentContainer["country"]=="Anguilla" ? "selected" : "" %> >Anguilla</option>
						<option data-country-id="8" value="Antarctica" <%# Container.ParentContainer["country"]=="Antarctica" ? "selected" : "" %> >Antarctica</option>
						<option data-country-id="9" value="Antigua and Barbuda" <%# Container.ParentContainer["country"]=="Antigua and Barbuda" ? "selected" : "" %> >Antigua and Barbuda</option>
						<option data-country-id="10" value="Argentina" <%# Container.ParentContainer["country"]=="Argentina" ? "selected" : "" %> >Argentina</option>
						<option data-country-id="11" value="Armenia" <%# Container.ParentContainer["country"]=="Armenia" ? "selected" : "" %> >Armenia</option>
						<option data-country-id="12" value="Aruba" <%# Container.ParentContainer["country"]=="Aruba" ? "selected" : "" %> >Aruba</option>
						<option data-country-id="13" value="Australia" <%# Container.ParentContainer["country"]=="Australia" ? "selected" : "" %> >Australia</option>
						<option data-country-id="14" value="Austria" <%# Container.ParentContainer["country"]=="Austria" ? "selected" : "" %> >Austria</option>
						<option data-country-id="15" value="Azerbaijan" <%# Container.ParentContainer["country"]=="Azerbaijan" ? "selected" : "" %> >Azerbaijan</option>
						<option data-country-id="16" value="Bahamas" <%# Container.ParentContainer["country"]=="Bahamas" ? "selected" : "" %> >Bahamas</option>
						<option data-country-id="17" value="Bahrain" <%# Container.ParentContainer["country"]=="Bahrain" ? "selected" : "" %> >Bahrain</option>
						<option data-country-id="19" value="Bangladesh" <%# Container.ParentContainer["country"]=="Bangladesh" ? "selected" : "" %> >Bangladesh</option>
						<option data-country-id="20" value="Barbados" <%# Container.ParentContainer["country"]=="Barbados" ? "selected" : "" %> >Barbados</option>
						<option data-country-id="21" value="Belgium" <%# Container.ParentContainer["country"]=="Belgium" ? "selected" : "" %> >Belgium</option>
						<option data-country-id="22" value="Belize" <%# Container.ParentContainer["country"]=="Belize" ? "selected" : "" %> >Belize</option>
						<option data-country-id="23" value="Benin" <%# Container.ParentContainer["country"]=="Benin" ? "selected" : "" %> >Benin</option>
						<option data-country-id="24" value="Bermuda" <%# Container.ParentContainer["country"]=="Bermuda" ? "selected" : "" %> >Bermuda</option>
						<option data-country-id="25" value="Bhutan" <%# Container.ParentContainer["country"]=="Bhutan" ? "selected" : "" %> >Bhutan</option>
						<option data-country-id="26" value="Bolivia, Plurinational State of" <%# Container.ParentContainer["country"]=="Bolivia, Plurinational State of" ? "selected" : "" %> >Bolivia, Plurinational State of</option>
						<option data-country-id="27" value="Bosnia and Herzegovina" <%# Container.ParentContainer["country"]=="Bosnia and Herzegovina" ? "selected" : "" %> >Bosnia and Herzegovina</option>
						<option data-country-id="28" value="Botswana" <%# Container.ParentContainer["country"]=="Botswana" ? "selected" : "" %> >Botswana</option>
						<option data-country-id="30" value="Brazil" <%# Container.ParentContainer["country"]=="Brazil" ? "selected" : "" %> >Brazil</option>
						<option data-country-id="31" value="British Indian Ocean Territory" <%# Container.ParentContainer["country"]=="British Indian Ocean Territory" ? "selected" : "" %> >British Indian Ocean Territory</option>
						<option data-country-id="32" value="British Virgin Islands" <%# Container.ParentContainer["country"]=="British Virgin Islands" ? "selected" : "" %> >British Virgin Islands</option>
						<option data-country-id="33" value="Brunei Darussalam" <%# Container.ParentContainer["country"]=="Brunei Darussalam" ? "selected" : "" %> >Brunei Darussalam</option>
						<option data-country-id="34" value="Bulgaria" <%# Container.ParentContainer["country"]=="Bulgaria" ? "selected" : "" %> >Bulgaria</option>
						<option data-country-id="35" value="Burkina Faso" <%# Container.ParentContainer["country"]=="Burkina Faso" ? "selected" : "" %> >Burkina Faso</option>
						<option data-country-id="36" value="Burundi" <%# Container.ParentContainer["country"]=="Burundi" ? "selected" : "" %> >Burundi</option>
						<option data-country-id="38" value="Cambodia" <%# Container.ParentContainer["country"]=="Cambodia" ? "selected" : "" %> >Cambodia</option>
						<option data-country-id="39" value="Cameroon" <%# Container.ParentContainer["country"]=="Cameroon" ? "selected" : "" %> >Cameroon</option>
						<option data-country-id="40" value="Canada" <%# Container.ParentContainer["country"]=="Canada" ? "selected" : "" %> >Canada</option>
						<option data-country-id="41" value="Cape Verde" <%# Container.ParentContainer["country"]=="Cape Verde" ? "selected" : "" %> >Cape Verde</option>
						<option data-country-id="42" value="Cayman Islands" <%# Container.ParentContainer["country"]=="Cayman Islands" ? "selected" : "" %> >Cayman Islands</option>
						<option data-country-id="43" value="Central African Republic" <%# Container.ParentContainer["country"]=="Central African Republic" ? "selected" : "" %> >Central African Republic</option>
						<option data-country-id="44" value="Chad" <%# Container.ParentContainer["country"]=="Chad" ? "selected" : "" %> >Chad</option>
						<option data-country-id="45" value="Chile" <%# Container.ParentContainer["country"]=="Chile" ? "selected" : "" %> >Chile</option>
						<option data-country-id="46" value="China" <%# Container.ParentContainer["country"]=="China" ? "selected" : "" %> >China</option>
						<option data-country-id="47" value="Christmas Island" <%# Container.ParentContainer["country"]=="Christmas Island" ? "selected" : "" %> >Christmas Island</option>
						<option data-country-id="48" value="Cocos (Keeling) Islands" <%# Container.ParentContainer["country"]=="Cocos (Keeling) Islands" ? "selected" : "" %> >Cocos (Keeling) Islands</option>
						<option data-country-id="49" value="Colombia" <%# Container.ParentContainer["country"]=="Colombia" ? "selected" : "" %> >Colombia</option>
						<option data-country-id="50" value="Comoros" <%# Container.ParentContainer["country"]=="Comoros" ? "selected" : "" %> >Comoros</option>
						<option data-country-id="51" value="Congo" <%# Container.ParentContainer["country"]=="Congo" ? "selected" : "" %> >Congo</option>
						<option data-country-id="52" value="Cook Islands" <%# Container.ParentContainer["country"]=="Cook Islands" ? "selected" : "" %> >Cook Islands</option>
						<option data-country-id="53" value="Costa Rica" <%# Container.ParentContainer["country"]=="Costa Rica" ? "selected" : "" %> >Costa Rica</option>
						<option data-country-id="54" value="Croatia" <%# Container.ParentContainer["country"]=="Croatia" ? "selected" : "" %> >Croatia</option>
						<option data-country-id="55" value="Cuba" <%# Container.ParentContainer["country"]=="Cuba" ? "selected" : "" %> >Cuba</option>
						<option data-country-id="56" value="Cyprus" <%# Container.ParentContainer["country"]=="Cyprus" ? "selected" : "" %> >Cyprus</option>
						<option data-country-id="57" value="Czech Republic" <%# Container.ParentContainer["country"]=="Czech Republic" ? "selected" : "" %> >Czech Republic</option>
						<option data-country-id="58" value="Denmark" <%# Container.ParentContainer["country"]=="Denmark" ? "selected" : "" %> >Denmark</option>
						<option data-country-id="59" value="Djibouti" <%# Container.ParentContainer["country"]=="Djibouti" ? "selected" : "" %> >Djibouti</option>
						<option data-country-id="60" value="Dominica" <%# Container.ParentContainer["country"]=="Dominica" ? "selected" : "" %> >Dominica</option>
						<option data-country-id="61" value="Dominican Republic" <%# Container.ParentContainer["country"]=="Dominican Republic" ? "selected" : "" %> >Dominican Republic</option>
						<option data-country-id="62" value="Ecuador" <%# Container.ParentContainer["country"]=="Ecuador" ? "selected" : "" %> >Ecuador</option>
						<option data-country-id="63" value="Egypt" <%# Container.ParentContainer["country"]=="Egypt" ? "selected" : "" %> >Egypt</option>
						<option data-country-id="64" value="El Salvador" <%# Container.ParentContainer["country"]=="El Salvador" ? "selected" : "" %> >El Salvador</option>
						<option data-country-id="65" value="Equatorial Guinea" <%# Container.ParentContainer["country"]=="Equatorial Guinea" ? "selected" : "" %> >Equatorial Guinea</option>
						<option data-country-id="66" value="Eritrea" <%# Container.ParentContainer["country"]=="Eritrea" ? "selected" : "" %> >Eritrea</option>
						<option data-country-id="67" value="Estonia" <%# Container.ParentContainer["country"]=="Estonia" ? "selected" : "" %> >Estonia</option>
						<option data-country-id="68" value="Ethiopia" <%# Container.ParentContainer["country"]=="Ethiopia" ? "selected" : "" %> >Ethiopia</option>
						<option data-country-id="69" value="Falkland Islands" <%# Container.ParentContainer["country"]=="Falkland Islands" ? "selected" : "" %> >Falkland Islands</option>
						<option data-country-id="70" value="Faeroe Islands" <%# Container.ParentContainer["country"]=="Faeroe Islands" ? "selected" : "" %> >Faeroe Islands</option>
						<option data-country-id="71" value="Micronesia (Federated States of)" <%# Container.ParentContainer["country"]=="Micronesia (Federated States of)" ? "selected" : "" %> >Micronesia (Federated States of)</option>
						<option data-country-id="72" value="Fiji" <%# Container.ParentContainer["country"]=="Fiji" ? "selected" : "" %> >Fiji</option>
						<option data-country-id="73" value="Finland" <%# Container.ParentContainer["country"]=="Finland" ? "selected" : "" %> >Finland</option>
						<option data-country-id="74" value="France" <%# Container.ParentContainer["country"]=="France" ? "selected" : "" %> >France</option>
						<option data-country-id="75" value="French Guiana" <%# Container.ParentContainer["country"]=="French Guiana" ? "selected" : "" %> >French Guiana</option>
						<option data-country-id="76" value="French Polynesia" <%# Container.ParentContainer["country"]=="French Polynesia" ? "selected" : "" %> >French Polynesia</option>
						<option data-country-id="77" value="French Southern Territories" <%# Container.ParentContainer["country"]=="French Southern Territories" ? "selected" : "" %> >French Southern Territories</option>
						<option data-country-id="78" value="Gabon" <%# Container.ParentContainer["country"]=="Gabon" ? "selected" : "" %> >Gabon</option>
						<option data-country-id="79" value="Gambia" <%# Container.ParentContainer["country"]=="Gambia" ? "selected" : "" %> >Gambia</option>
						<option data-country-id="81" value="Georgia" <%# Container.ParentContainer["country"]=="Georgia" ? "selected" : "" %> >Georgia</option>
						<option data-country-id="82" value="Germany" <%# Container.ParentContainer["country"]=="Germany" ? "selected" : "" %> >Germany</option>
						<option data-country-id="83" value="Ghana" <%# Container.ParentContainer["country"]=="Ghana" ? "selected" : "" %> >Ghana</option>
						<option data-country-id="84" value="Gibraltar" <%# Container.ParentContainer["country"]=="Gibraltar" ? "selected" : "" %> >Gibraltar</option>
						<option data-country-id="86" value="Greece" <%# Container.ParentContainer["country"]=="Greece" ? "selected" : "" %> >Greece</option>
						<option data-country-id="87" value="Greenland" <%# Container.ParentContainer["country"]=="Greenland" ? "selected" : "" %> >Greenland</option>
						<option data-country-id="88" value="Grenada" <%# Container.ParentContainer["country"]=="Grenada" ? "selected" : "" %> >Grenada</option>
						<option data-country-id="89" value="Guadeloupe" <%# Container.ParentContainer["country"]=="Guadeloupe" ? "selected" : "" %> >Guadeloupe</option>
						<option data-country-id="90" value="Guam" <%# Container.ParentContainer["country"]=="Guam" ? "selected" : "" %> >Guam</option>
						<option data-country-id="92" value="Guatemala" <%# Container.ParentContainer["country"]=="Guatemala" ? "selected" : "" %> >Guatemala</option>
						<option data-country-id="93" value="Guinea" <%# Container.ParentContainer["country"]=="Guinea" ? "selected" : "" %> >Guinea</option>
						<option data-country-id="94" value="Guinea-Bissau" <%# Container.ParentContainer["country"]=="Guinea-Bissau" ? "selected" : "" %> >Guinea-Bissau</option>
						<option data-country-id="95" value="Guyana" <%# Container.ParentContainer["country"]=="Guyana" ? "selected" : "" %> >Guyana</option>
						<option data-country-id="96" value="Haiti" <%# Container.ParentContainer["country"]=="Haiti" ? "selected" : "" %> >Haiti</option>
						<option data-country-id="98" value="Honduras" <%# Container.ParentContainer["country"]=="Honduras" ? "selected" : "" %> >Honduras</option>
						<option data-country-id="100" value="Hungary" <%# Container.ParentContainer["country"]=="Hungary" ? "selected" : "" %> >Hungary</option>
						<option data-country-id="101" value="Iceland" <%# Container.ParentContainer["country"]=="Iceland" ? "selected" : "" %> >Iceland</option>
						<option data-country-id="102" value="Indonesia" <%# Container.ParentContainer["country"]=="Indonesia" ? "selected" : "" %> >Indonesia</option>
						<option data-country-id="103" value="India" <%# Container.ParentContainer["country"]=="India" ? "selected" : "" %> >India</option>
						<option data-country-id="104" value="Iran" <%# Container.ParentContainer["country"]=="Iran" ? "selected" : "" %> >Iran</option>
						<option data-country-id="105" value="Iraq" <%# Container.ParentContainer["country"]=="Iraq" ? "selected" : "" %> >Iraq</option>
						<option data-country-id="106" value="Ireland" <%# Container.ParentContainer["country"]=="Ireland" ? "selected" : "" %> >Ireland</option>
						<option data-country-id="107" value="Israel" <%# Container.ParentContainer["country"]=="Israel" ? "selected" : "" %> >Israel</option>
						<option data-country-id="108" value="Italy" <%# Container.ParentContainer["country"]=="Italy" ? "selected" : "" %> >Italy</option>
						<option data-country-id="109" value="Côte d'Ivoire" <%# Container.ParentContainer["country"]=="Côte d'Ivoire" ? "selected" : "" %> >Côte d'Ivoire</option>
						<option data-country-id="110" value="Jamaica" <%# Container.ParentContainer["country"]=="Jamaica" ? "selected" : "" %> >Jamaica</option>
						<option data-country-id="112" value="Japan" <%# Container.ParentContainer["country"]=="Japan" ? "selected" : "" %> >Japan</option>
						<option data-country-id="116" value="Jordan" <%# Container.ParentContainer["country"]=="Jordan" ? "selected" : "" %> >Jordan</option>
						<option data-country-id="118" value="Kazakhstan" <%# Container.ParentContainer["country"]=="Kazakhstan" ? "selected" : "" %> >Kazakhstan</option>
						<option data-country-id="119" value="Kenya" <%# Container.ParentContainer["country"]=="Kenya" ? "selected" : "" %> >Kenya</option>
						<option data-country-id="120" value="Kiribati" <%# Container.ParentContainer["country"]=="Kiribati" ? "selected" : "" %> >Kiribati</option>
						<option data-country-id="121" value="Kuwait" <%# Container.ParentContainer["country"]=="Kuwait" ? "selected" : "" %> >Kuwait</option>
						<option data-country-id="122" value="Kyrgyzstan" <%# Container.ParentContainer["country"]=="Kyrgyzstan" ? "selected" : "" %> >Kyrgyzstan</option>
						<option data-country-id="123" value="Laos" <%# Container.ParentContainer["country"]=="Laos" ? "selected" : "" %> >Laos</option>
						<option data-country-id="124" value="Latvia" <%# Container.ParentContainer["country"]=="Latvia" ? "selected" : "" %> >Latvia</option>
						<option data-country-id="125" value="Lebanon" <%# Container.ParentContainer["country"]=="Lebanon" ? "selected" : "" %> >Lebanon</option>
						<option data-country-id="126" value="Lesotho" <%# Container.ParentContainer["country"]=="Lesotho" ? "selected" : "" %> >Lesotho</option>
						<option data-country-id="127" value="Liberia" <%# Container.ParentContainer["country"]=="Liberia" ? "selected" : "" %> >Liberia</option>
						<option data-country-id="128" value="Libya" <%# Container.ParentContainer["country"]=="Libya" ? "selected" : "" %> >Libya</option>
						<option data-country-id="129" value="Liechtenstein" <%# Container.ParentContainer["country"]=="Liechtenstein" ? "selected" : "" %> >Liechtenstein</option>
						<option data-country-id="130" value="Lithuania" <%# Container.ParentContainer["country"]=="Lithuania" ? "selected" : "" %> >Lithuania</option>
						<option data-country-id="131" value="Luxembourg" <%# Container.ParentContainer["country"]=="Luxembourg" ? "selected" : "" %> >Luxembourg</option>
						<option data-country-id="132" value="Macau" <%# Container.ParentContainer["country"]=="Macau" ? "selected" : "" %> >Macau</option>
						<option data-country-id="133" value="Macedonia" <%# Container.ParentContainer["country"]=="Macedonia" ? "selected" : "" %> >Macedonia</option>
						<option data-country-id="134" value="Madagascar" <%# Container.ParentContainer["country"]=="Madagascar" ? "selected" : "" %> >Madagascar</option>
						<option data-country-id="135" value="Maldives" <%# Container.ParentContainer["country"]=="Maldives" ? "selected" : "" %> >Maldives</option>
						<option data-country-id="136" value="Mali" <%# Container.ParentContainer["country"]=="Mali" ? "selected" : "" %> >Mali</option>
						<option data-country-id="137" value="Malta" <%# Container.ParentContainer["country"]=="Malta" ? "selected" : "" %> >Malta</option>
						<option data-country-id="139" value="Malawi" <%# Container.ParentContainer["country"]=="Malawi" ? "selected" : "" %> >Malawi</option>
						<option data-country-id="140" value="Malaysia" <%# Container.ParentContainer["country"]=="Malaysia" ? "selected" : "" %> >Malaysia</option>
						<option data-country-id="141" value="Marshall Islands" <%# Container.ParentContainer["country"]=="Marshall Islands" ? "selected" : "" %> >Marshall Islands</option>
						<option data-country-id="142" value="Martinique" <%# Container.ParentContainer["country"]=="Martinique" ? "selected" : "" %> >Martinique</option>
						<option data-country-id="143" value="Mauritania" <%# Container.ParentContainer["country"]=="Mauritania" ? "selected" : "" %> >Mauritania</option>
						<option data-country-id="144" value="Mauritius" <%# Container.ParentContainer["country"]=="Mauritius" ? "selected" : "" %> >Mauritius</option>
						<option data-country-id="145" value="Mayotte" <%# Container.ParentContainer["country"]=="Mayotte" ? "selected" : "" %> >Mayotte</option>
						<option data-country-id="146" value="Mexico" <%# Container.ParentContainer["country"]=="Mexico" ? "selected" : "" %> >Mexico</option>
						<option data-country-id="148" value="Republic of Moldova" <%# Container.ParentContainer["country"]=="Republic of Moldova" ? "selected" : "" %> >Republic of Moldova</option>
						<option data-country-id="149" value="Monaco" <%# Container.ParentContainer["country"]=="Monaco" ? "selected" : "" %> >Monaco</option>
						<option data-country-id="150" value="Mongolia" <%# Container.ParentContainer["country"]=="Mongolia" ? "selected" : "" %> >Mongolia</option>
						<option data-country-id="152" value="Montserrat" <%# Container.ParentContainer["country"]=="Montserrat" ? "selected" : "" %> >Montserrat</option>
						<option data-country-id="153" value="Morocco" <%# Container.ParentContainer["country"]=="Morocco" ? "selected" : "" %> >Morocco</option>
						<option data-country-id="154" value="Mozambique" <%# Container.ParentContainer["country"]=="Mozambique" ? "selected" : "" %> >Mozambique</option>
						<option data-country-id="155" value="Myanmar" <%# Container.ParentContainer["country"]=="Myanmar" ? "selected" : "" %> >Myanmar</option>
						<option data-country-id="156" value="Namibia" <%# Container.ParentContainer["country"]=="Namibia" ? "selected" : "" %> >Namibia</option>
						<option data-country-id="157" value="Nauru" <%# Container.ParentContainer["country"]=="Nauru" ? "selected" : "" %> >Nauru</option>
						<option data-country-id="158" value="Nepal" <%# Container.ParentContainer["country"]=="Nepal" ? "selected" : "" %> >Nepal</option>
						<option data-country-id="159" value="Netherlands" <%# Container.ParentContainer["country"]=="Netherlands" ? "selected" : "" %> >Netherlands</option>
						<option data-country-id="160" value="Netherlands Antilles" <%# Container.ParentContainer["country"]=="Netherlands Antilles" ? "selected" : "" %> >Netherlands Antilles</option>
						<option data-country-id="161" value="New Caledonia" <%# Container.ParentContainer["country"]=="New Caledonia" ? "selected" : "" %> >New Caledonia</option>
						<option data-country-id="162" value="New Zealand" <%# Container.ParentContainer["country"]=="New Zealand" ? "selected" : "" %> >New Zealand</option>
						<option data-country-id="163" value="Nicaragua" <%# Container.ParentContainer["country"]=="Nicaragua" ? "selected" : "" %> >Nicaragua</option>
						<option data-country-id="164" value="Niger" <%# Container.ParentContainer["country"]=="Niger" ? "selected" : "" %> >Niger</option>
						<option data-country-id="165" value="Nigeria" <%# Container.ParentContainer["country"]=="Nigeria" ? "selected" : "" %> >Nigeria</option>
						<option data-country-id="166" value="Niue" <%# Container.ParentContainer["country"]=="Niue" ? "selected" : "" %> >Niue</option>
						<option data-country-id="167" value="Norfolk Island" <%# Container.ParentContainer["country"]=="Norfolk Island" ? "selected" : "" %> >Norfolk Island</option>
						<option data-country-id="169" value="Northern Mariana Islands" <%# Container.ParentContainer["country"]=="Northern Mariana Islands" ? "selected" : "" %> >Northern Mariana Islands</option>
						<option data-country-id="170" value="Norway" <%# Container.ParentContainer["country"]=="Norway" ? "selected" : "" %> >Norway</option>
						<option data-country-id="171" value="Oman" <%# Container.ParentContainer["country"]=="Oman" ? "selected" : "" %> >Oman</option>
						<option data-country-id="172" value="Palau" <%# Container.ParentContainer["country"]=="Palau" ? "selected" : "" %> >Palau</option>
						<option data-country-id="173" value="Pakistan" <%# Container.ParentContainer["country"]=="Pakistan" ? "selected" : "" %> >Pakistan</option>
						<option data-country-id="174" value="Panama" <%# Container.ParentContainer["country"]=="Panama" ? "selected" : "" %> >Panama</option>
						<option data-country-id="175" value="Independent State of Papua New Guinea" <%# Container.ParentContainer["country"]=="Independent State of Papua New Guinea" ? "selected" : "" %> >Independent State of Papua New Guinea</option>
						<option data-country-id="177" value="Paraguay" <%# Container.ParentContainer["country"]=="Paraguay" ? "selected" : "" %> >Paraguay</option>
						<option data-country-id="178" value="Peru" <%# Container.ParentContainer["country"]=="Peru" ? "selected" : "" %> >Peru</option>
						<option data-country-id="179" value="Philippines" <%# Container.ParentContainer["country"]=="Philippines" ? "selected" : "" %> >Philippines</option>
						<option data-country-id="180" value="Pitcairn" <%# Container.ParentContainer["country"]=="Pitcairn" ? "selected" : "" %> >Pitcairn</option>
						<option data-country-id="181" value="Poland" <%# Container.ParentContainer["country"]=="Poland" ? "selected" : "" %> >Poland</option>
						<option data-country-id="182" value="Portugal" <%# Container.ParentContainer["country"]=="Portugal" ? "selected" : "" %> >Portugal</option>
						<option data-country-id="183" value="Puerto Rico" <%# Container.ParentContainer["country"]=="Puerto Rico" ? "selected" : "" %> >Puerto Rico</option>
						<option data-country-id="184" value="Qatar" <%# Container.ParentContainer["country"]=="Qatar" ? "selected" : "" %> >Qatar</option>
						<option data-country-id="185" value="Réunion" <%# Container.ParentContainer["country"]=="Réunion" ? "selected" : "" %> >Réunion</option>
						<option data-country-id="186" value="Romania" <%# Container.ParentContainer["country"]=="Romania" ? "selected" : "" %> >Romania</option>
						<option data-country-id="187" value="Russia" <%# Container.ParentContainer["country"]=="Russia" ? "selected" : "" %> >Russia</option>
						<option data-country-id="188" value="Rwanda" <%# Container.ParentContainer["country"]=="Rwanda" ? "selected" : "" %> >Rwanda</option>
						<option data-country-id="189" value="Saint Helena, Ascension and Tristan da Cunha" <%# Container.ParentContainer["country"]=="Saint Helena, Ascension and Tristan da Cunha" ? "selected" : "" %> >Saint Helena, Ascension and Tristan da Cunha</option>
						<option data-country-id="190" value="Saint Kitts and Nevis" <%# Container.ParentContainer["country"]=="Saint Kitts and Nevis" ? "selected" : "" %> >Saint Kitts and Nevis</option>
						<option data-country-id="191" value="St. Lucia" <%# Container.ParentContainer["country"]=="St. Lucia" ? "selected" : "" %> >St. Lucia</option>
						<option data-country-id="192" value="Saint Pierre and Miquelon" <%# Container.ParentContainer["country"]=="Saint Pierre and Miquelon" ? "selected" : "" %> >Saint Pierre and Miquelon</option>
						<option data-country-id="193" value="Saint Vincent and the Grenadines" <%# Container.ParentContainer["country"]=="Saint Vincent and the Grenadines" ? "selected" : "" %> >Saint Vincent and the Grenadines</option>
						<option data-country-id="194" value="San Marino" <%# Container.ParentContainer["country"]=="San Marino" ? "selected" : "" %> >San Marino</option>
						<option data-country-id="195" value="Sao Tome and Principe" <%# Container.ParentContainer["country"]=="Sao Tome and Principe" ? "selected" : "" %> >Sao Tome and Principe</option>
						<option data-country-id="196" value="Saudi Arabia" <%# Container.ParentContainer["country"]=="Saudi Arabia" ? "selected" : "" %> >Saudi Arabia</option>
						<option data-country-id="197" value="Senegal" <%# Container.ParentContainer["country"]=="Senegal" ? "selected" : "" %> >Senegal</option>
						<option data-country-id="198" value="Serbia" <%# Container.ParentContainer["country"]=="Serbia" ? "selected" : "" %> >Serbia</option>
						<option data-country-id="199" value="Seychelles" <%# Container.ParentContainer["country"]=="Seychelles" ? "selected" : "" %> >Seychelles</option>
						<option data-country-id="200" value="Sierra Leone" <%# Container.ParentContainer["country"]=="Sierra Leone" ? "selected" : "" %> >Sierra Leone</option>
						<option data-country-id="201" value="Singapore" <%# Container.ParentContainer["country"]=="Singapore" ? "selected" : "" %> >Singapore</option>
						<option data-country-id="202" value="Slovakia" <%# Container.ParentContainer["country"]=="Slovakia" ? "selected" : "" %> >Slovakia</option>
						<option data-country-id="203" value="Slovenia" <%# Container.ParentContainer["country"]=="Slovenia" ? "selected" : "" %> >Slovenia</option>
						<option data-country-id="204" value="Solomon Islands" <%# Container.ParentContainer["country"]=="Solomon Islands" ? "selected" : "" %> >Solomon Islands</option>
						<option data-country-id="205" value="Federal Republic of Somalia" <%# Container.ParentContainer["country"]=="Federal Republic of Somalia" ? "selected" : "" %> >Federal Republic of Somalia</option>
						<option data-country-id="206" value="South Africa" <%# Container.ParentContainer["country"]=="South Africa" ? "selected" : "" %> >South Africa</option>
						<option data-country-id="207" value="South Georgia and South Sandwich Islands" <%# Container.ParentContainer["country"]=="South Georgia and South Sandwich Islands" ? "selected" : "" %> >South Georgia and South Sandwich Islands</option>
						<option data-country-id="209" value="Spain" <%# Container.ParentContainer["country"]=="Spain" ? "selected" : "" %> >Spain</option>
						<option data-country-id="211" value="Sri Lanka" <%# Container.ParentContainer["country"]=="Sri Lanka" ? "selected" : "" %> >Sri Lanka</option>
						<option data-country-id="212" value="Sudan" <%# Container.ParentContainer["country"]=="Sudan" ? "selected" : "" %> >Sudan</option>
						<option data-country-id="213" value="Suriname" <%# Container.ParentContainer["country"]=="Suriname" ? "selected" : "" %> >Suriname</option>
						<option data-country-id="214" value="Svalbard and Jan Mayen" <%# Container.ParentContainer["country"]=="Svalbard and Jan Mayen" ? "selected" : "" %> >Svalbard and Jan Mayen</option>
						<option data-country-id="215" value="Swaziland" <%# Container.ParentContainer["country"]=="Swaziland" ? "selected" : "" %> >Swaziland</option>
						<option data-country-id="216" value="Sweden" <%# Container.ParentContainer["country"]=="Sweden" ? "selected" : "" %> >Sweden</option>
						<option data-country-id="217" value="Switzerland" <%# Container.ParentContainer["country"]=="Switzerland" ? "selected" : "" %> >Switzerland</option>
						<option data-country-id="218" value="Syria" <%# Container.ParentContainer["country"]=="Syria" ? "selected" : "" %> >Syria</option>
						<option data-country-id="219" value="Taiwan" <%# Container.ParentContainer["country"]=="Taiwan" ? "selected" : "" %> >Taiwan</option>
						<option data-country-id="220" value="Tajikistan" <%# Container.ParentContainer["country"]=="Tajikistan" ? "selected" : "" %> >Tajikistan</option>
						<option data-country-id="221" value="Tanzania" <%# Container.ParentContainer["country"]=="Tanzania" ? "selected" : "" %> >Tanzania</option>
						<option data-country-id="222" value="Thailand" <%# Container.ParentContainer["country"]=="Thailand" ? "selected" : "" %> >Thailand</option>
						<option data-country-id="223" value="Togo" <%# Container.ParentContainer["country"]=="Togo" ? "selected" : "" %> >Togo</option>
						<option data-country-id="224" value="Tokelau" <%# Container.ParentContainer["country"]=="Tokelau" ? "selected" : "" %> >Tokelau</option>
						<option data-country-id="225" value="Tonga" <%# Container.ParentContainer["country"]=="Tonga" ? "selected" : "" %> >Tonga</option>
						<option data-country-id="226" value="Trinidad and Tobago" <%# Container.ParentContainer["country"]=="Trinidad and Tobago" ? "selected" : "" %> >Trinidad and Tobago</option>
						<option data-country-id="227" value="Tunisia" <%# Container.ParentContainer["country"]=="Tunisia" ? "selected" : "" %> >Tunisia</option>
						<option data-country-id="228" value="Turkey" <%# Container.ParentContainer["country"]=="Turkey" ? "selected" : "" %> >Turkey</option>
						<option data-country-id="229" value="Turkmenistan" <%# Container.ParentContainer["country"]=="Turkmenistan" ? "selected" : "" %> >Turkmenistan</option>
						<option data-country-id="230" value="Turks and Caicos Islands" <%# Container.ParentContainer["country"]=="Turks and Caicos Islands" ? "selected" : "" %> >Turks and Caicos Islands</option>
						<option data-country-id="231" value="Tuvalu" <%# Container.ParentContainer["country"]=="Tuvalu" ? "selected" : "" %> >Tuvalu</option>
						<option data-country-id="232" value="Uganda" <%# Container.ParentContainer["country"]=="Uganda" ? "selected" : "" %> >Uganda</option>
						<option data-country-id="233" value="Ukraine" <%# Container.ParentContainer["country"]=="Ukraine" ? "selected" : "" %> >Ukraine</option>
						<option data-country-id="234" value="United Arab Emirates" <%# Container.ParentContainer["country"]=="United Arab Emirates" ? "selected" : "" %> >United Arab Emirates</option>
						<option data-country-id="235" value="United Kingdom" <%# Container.ParentContainer["country"]=="United Kingdom" ? "selected" : "" %> >United Kingdom</option>
						<option data-country-id="236" value="United States of America" <%# Container.ParentContainer["country"]=="United States of America" ? "selected" : "" %> >United States of America</option>
						<option data-country-id="237" value="Uruguay" <%# Container.ParentContainer["country"]=="Uruguay" ? "selected" : "" %> >Uruguay</option>
						<option data-country-id="238" value="Uzbekistan" <%# Container.ParentContainer["country"]=="Uzbekistan" ? "selected" : "" %> >Uzbekistan</option>
						<option data-country-id="239" value="Vanuatu" <%# Container.ParentContainer["country"]=="Vanuatu" ? "selected" : "" %> >Vanuatu</option>
						<option data-country-id="240" value="Venezuela, Bolivarian Republic of" <%# Container.ParentContainer["country"]=="Venezuela, Bolivarian Republic of" ? "selected" : "" %> >Venezuela, Bolivarian Republic of</option>
						<option data-country-id="241" value="Vietnam" <%# Container.ParentContainer["country"]=="Vietnam" ? "selected" : "" %> >Vietnam</option>
						<option data-country-id="242" value="U.S. Virgin Islands" <%# Container.ParentContainer["country"]=="U.S. Virgin Islands" ? "selected" : "" %> >U.S. Virgin Islands</option>
						<option data-country-id="244" value="Wallis and Futuna" <%# Container.ParentContainer["country"]=="Wallis and Futuna" ? "selected" : "" %> >Wallis and Futuna</option>
						<option data-country-id="246" value="Western Sahara" <%# Container.ParentContainer["country"]=="Western Sahara" ? "selected" : "" %> >Western Sahara</option>
						<option data-country-id="247" value="Samoa" <%# Container.ParentContainer["country"]=="Samoa" ? "selected" : "" %> >Samoa</option>
						<option data-country-id="248" value="Yemen" <%# Container.ParentContainer["country"]=="Yemen" ? "selected" : "" %> >Yemen</option>
						<option data-country-id="249" value="Democratic Republic of Congo" <%# Container.ParentContainer["country"]=="Democratic Republic of Congo" ? "selected" : "" %> >Democratic Republic of Congo</option>
						<option data-country-id="250" value="Zambia" <%# Container.ParentContainer["country"]=="Zambia" ? "selected" : "" %> >Zambia</option>
						<option data-country-id="251" value="Zimbabwe" <%# Container.ParentContainer["country"]=="Zimbabwe" ? "selected" : "" %> >Zimbabwe</option>
						<option data-country-id="254" value="Belarus" <%# Container.ParentContainer["country"]=="Belarus" ? "selected" : "" %> >Belarus</option>
						<option data-country-id="257" value="Hong Kong" <%# Container.ParentContainer["country"]=="Hong Kong" ? "selected" : "" %> >Hong Kong</option>
						<option data-country-id="258" value="North Korea" <%# Container.ParentContainer["country"]=="North Korea" ? "selected" : "" %> >North Korea</option>
						<option data-country-id="259" value="South Korea" <%# Container.ParentContainer["country"]=="South Korea" ? "selected" : "" %> >South Korea</option>
						<option data-country-id="262" value="Vatican" <%# Container.ParentContainer["country"]=="Vatican" ? "selected" : "" %> >Vatican</option>
						<option data-country-id="271" value="Timor-Leste" <%# Container.ParentContainer["country"]=="Timor-Leste" ? "selected" : "" %> >Timor-Leste</option>
						<option data-country-id="272" value="United States Minor Outlying Islands" <%# Container.ParentContainer["country"]=="United States Minor Outlying Islands" ? "selected" : "" %> >United States Minor Outlying Islands</option>
						<option data-country-id="273" value="Montenegro" <%# Container.ParentContainer["country"]=="Montenegro" ? "selected" : "" %> >Montenegro</option>
						<option data-country-id="274" value="Guernsey" <%# Container.ParentContainer["country"]=="Guernsey" ? "selected" : "" %> >Guernsey</option>
						<option data-country-id="275" value="Isle of Man" <%# Container.ParentContainer["country"]=="Isle of Man" ? "selected" : "" %> >Isle of Man</option>
						<option data-country-id="276" value="Jersey" <%# Container.ParentContainer["country"]=="Jersey" ? "selected" : "" %> >Jersey</option>
						<option data-country-id="277" value="Saint Barthélemy" <%# Container.ParentContainer["country"]=="Saint Barthélemy" ? "selected" : "" %> >Saint Barthélemy</option>
						<option data-country-id="278" value="Saint Martin (French Part)" <%# Container.ParentContainer["country"]=="Saint Martin (French Part)" ? "selected" : "" %> >Saint Martin (French Part)</option>
						<option data-country-id="279" value="Palestinian Territory, Occupied" <%# Container.ParentContainer["country"]=="Palestinian Territory, Occupied" ? "selected" : "" %> >Palestinian Territory, Occupied</option>
						<option data-country-id="280" value="Bonaire, Sint Eustatius and Saba" <%# Container.ParentContainer["country"]=="Bonaire, Sint Eustatius and Saba" ? "selected" : "" %> >Bonaire, Sint Eustatius and Saba</option>
						<option data-country-id="281" value="St. Maarten (Dutch Part)" <%# Container.ParentContainer["country"]=="St. Maarten (Dutch Part)" ? "selected" : "" %> >St. Maarten (Dutch Part)</option>
						<option data-country-id="282" value="Curaçao" <%# Container.ParentContainer["country"]=="Curaçao" ? "selected" : "" %> >Curaçao</option>
						<option data-country-id="283" value="South Sudan" <%# Container.ParentContainer["country"]=="South Sudan" ? "selected" : "" %> >South Sudan</option>
					</select>
				</div>
				<div class="form-group">
					<label for="IAForm_state">Business State</label>
					<select id="IAForm_state" class="form-control" name="IAForm_state">
						<option value="">--Select--</option>
					</select>
				</div>
				<p>&nbsp;</p>
				<h4>Business Contact Information </h4>
				<div class="form-group">
					<label for="IAForm_telephone">Business Direct Phone </label>
					<input type="text" value="<%# Container.ParentContainer["telephone"] %>" id="IAForm_telephone" class="form-control" name="IAForm_telephone" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_mobile">Business Mobile </label>
					<input type="text" value="<%# Container.ParentContainer["mobile"] %>" id="IAForm_mobile" class="form-control" name="IAForm_mobile" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_businessElectronicAddress">Business Email Address </label>
					<input type="text" value="<%# Container.ParentContainer["businessElectronicAddress"] %>" id="IAForm_businessElectronicAddress" class="form-control" name="IAForm_businessElectronicAddress" maxlength="250">
				</div>
				<p>&nbsp;</p>
				<h4> Personal Address </h4>
				<p>Personal address details will never be visible to other users</p>

   <!--  <div class="form-group">
            <label for="IAForm_street_home">Address </label>
            <input type="text" value="<%# Container.ParentContainer["street_home"] %>" id="IAForm_street_home" class="form-control required" name="IAForm_street" maxlength="250">
          </div> -->
        <div class="form-group">
          <label for="IAForm_street_home">Address</label>
        <textarea name="IAForm_street_home" cols="30" rows="5" class="form-control"><%# Container.ParentContainer["street_home"].Replace("|","") %></textarea>
        </div>







				<div class="form-group">
					<label for="IAForm_city_home">City </label>
					<input type="text" value="<%# Container.ParentContainer["city_home"] %>" id="IAForm_city_home" class="form-control" name="IAForm_city_home" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_state">State</label>
					<input type="text" value="<%# Container.ParentContainer["state_home"] %>" id="IAForm_state_home" class="form-control" name="IAForm_state_home" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_postalCode_home">Postal/Zip Code </label>
					<input type="text" value="<%# Container.ParentContainer["postalCode_home"] %>" id="IAForm_postalCode_home" class="form-control" name="IAForm_postalCode_home" maxlength="250">
				</div>
				<div class="form-group">
					<label for="IAForm_country_home">Country</label>
					<select id="IAForm_country_home" class="form-control" name="IAForm_country_home" data-selected-state='<%# Container.ParentContainer["state_home"] %>'>
						<option value="">--Select--</option>
						<option data-country_home-id="1" value="Afghanistan" <%# Container.ParentContainer["country_home"]=="Afghanistan" ? "selected" : "" %> >Afghanistan</option>
						<option data-country_home-id="2" value="Albania" <%# Container.ParentContainer["country_home"]=="Albania" ? "selected" : "" %> >Albania</option>
						<option data-country_home-id="3" value="Algeria" <%# Container.ParentContainer["country_home"]=="Algeria" ? "selected" : "" %> >Algeria</option>
						<option data-country_home-id="4" value="American Samoa" <%# Container.ParentContainer["country_home"]=="American Samoa" ? "selected" : "" %> >American Samoa</option>
						<option data-country_home-id="5" value="Andorra" <%# Container.ParentContainer["country_home"]=="Andorra" ? "selected" : "" %> >Andorra</option>
						<option data-country_home-id="6" value="Angola" <%# Container.ParentContainer["country_home"]=="Angola" ? "selected" : "" %> >Angola</option>
						<option data-country_home-id="7" value="Anguilla" <%# Container.ParentContainer["country_home"]=="Anguilla" ? "selected" : "" %> >Anguilla</option>
						<option data-country_home-id="8" value="Antarctica" <%# Container.ParentContainer["country_home"]=="Antarctica" ? "selected" : "" %> >Antarctica</option>
						<option data-country_home-id="9" value="Antigua and Barbuda" <%# Container.ParentContainer["country_home"]=="Antigua and Barbuda" ? "selected" : "" %> >Antigua and Barbuda</option>
						<option data-country_home-id="10" value="Argentina" <%# Container.ParentContainer["country_home"]=="Argentina" ? "selected" : "" %> >Argentina</option>
						<option data-country_home-id="11" value="Armenia" <%# Container.ParentContainer["country_home"]=="Armenia" ? "selected" : "" %> >Armenia</option>
						<option data-country_home-id="12" value="Aruba" <%# Container.ParentContainer["country_home"]=="Aruba" ? "selected" : "" %> >Aruba</option>
						<option data-country_home-id="13" value="Australia" <%# Container.ParentContainer["country_home"]=="Australia" ? "selected" : "" %> >Australia</option>
						<option data-country_home-id="14" value="Austria" <%# Container.ParentContainer["country_home"]=="Austria" ? "selected" : "" %> >Austria</option>
						<option data-country_home-id="15" value="Azerbaijan" <%# Container.ParentContainer["country_home"]=="Azerbaijan" ? "selected" : "" %> >Azerbaijan</option>
						<option data-country_home-id="16" value="Bahamas" <%# Container.ParentContainer["country_home"]=="Bahamas" ? "selected" : "" %> >Bahamas</option>
						<option data-country_home-id="17" value="Bahrain" <%# Container.ParentContainer["country_home"]=="Bahrain" ? "selected" : "" %> >Bahrain</option>
						<option data-country_home-id="19" value="Bangladesh" <%# Container.ParentContainer["country_home"]=="Bangladesh" ? "selected" : "" %> >Bangladesh</option>
						<option data-country_home-id="20" value="Barbados" <%# Container.ParentContainer["country_home"]=="Barbados" ? "selected" : "" %> >Barbados</option>
						<option data-country_home-id="21" value="Belgium" <%# Container.ParentContainer["country_home"]=="Belgium" ? "selected" : "" %> >Belgium</option>
						<option data-country_home-id="22" value="Belize" <%# Container.ParentContainer["country_home"]=="Belize" ? "selected" : "" %> >Belize</option>
						<option data-country_home-id="23" value="Benin" <%# Container.ParentContainer["country_home"]=="Benin" ? "selected" : "" %> >Benin</option>
						<option data-country_home-id="24" value="Bermuda" <%# Container.ParentContainer["country_home"]=="Bermuda" ? "selected" : "" %> >Bermuda</option>
						<option data-country_home-id="25" value="Bhutan" <%# Container.ParentContainer["country_home"]=="Bhutan" ? "selected" : "" %> >Bhutan</option>
						<option data-country_home-id="26" value="Bolivia, Plurinational State of" <%# Container.ParentContainer["country_home"]=="Bolivia, Plurinational State of" ? "selected" : "" %> >Bolivia, Plurinational State of</option>
						<option data-country_home-id="27" value="Bosnia and Herzegovina" <%# Container.ParentContainer["country_home"]=="Bosnia and Herzegovina" ? "selected" : "" %> >Bosnia and Herzegovina</option>
						<option data-country_home-id="28" value="Botswana" <%# Container.ParentContainer["country_home"]=="Botswana" ? "selected" : "" %> >Botswana</option>
						<option data-country_home-id="30" value="Brazil" <%# Container.ParentContainer["country_home"]=="Brazil" ? "selected" : "" %> >Brazil</option>
						<option data-country_home-id="31" value="British Indian Ocean Territory" <%# Container.ParentContainer["country_home"]=="British Indian Ocean Territory" ? "selected" : "" %> >British Indian Ocean Territory</option>
						<option data-country_home-id="32" value="British Virgin Islands" <%# Container.ParentContainer["country_home"]=="British Virgin Islands" ? "selected" : "" %> >British Virgin Islands</option>
						<option data-country_home-id="33" value="Brunei Darussalam" <%# Container.ParentContainer["country_home"]=="Brunei Darussalam" ? "selected" : "" %> >Brunei Darussalam</option>
						<option data-country_home-id="34" value="Bulgaria" <%# Container.ParentContainer["country_home"]=="Bulgaria" ? "selected" : "" %> >Bulgaria</option>
						<option data-country_home-id="35" value="Burkina Faso" <%# Container.ParentContainer["country_home"]=="Burkina Faso" ? "selected" : "" %> >Burkina Faso</option>
						<option data-country_home-id="36" value="Burundi" <%# Container.ParentContainer["country_home"]=="Burundi" ? "selected" : "" %> >Burundi</option>
						<option data-country_home-id="38" value="Cambodia" <%# Container.ParentContainer["country_home"]=="Cambodia" ? "selected" : "" %> >Cambodia</option>
						<option data-country_home-id="39" value="Cameroon" <%# Container.ParentContainer["country_home"]=="Cameroon" ? "selected" : "" %> >Cameroon</option>
						<option data-country_home-id="40" value="Canada" <%# Container.ParentContainer["country_home"]=="Canada" ? "selected" : "" %> >Canada</option>
						<option data-country_home-id="41" value="Cape Verde" <%# Container.ParentContainer["country_home"]=="Cape Verde" ? "selected" : "" %> >Cape Verde</option>
						<option data-country_home-id="42" value="Cayman Islands" <%# Container.ParentContainer["country_home"]=="Cayman Islands" ? "selected" : "" %> >Cayman Islands</option>
						<option data-country_home-id="43" value="Central African Republic" <%# Container.ParentContainer["country_home"]=="Central African Republic" ? "selected" : "" %> >Central African Republic</option>
						<option data-country_home-id="44" value="Chad" <%# Container.ParentContainer["country_home"]=="Chad" ? "selected" : "" %> >Chad</option>
						<option data-country_home-id="45" value="Chile" <%# Container.ParentContainer["country_home"]=="Chile" ? "selected" : "" %> >Chile</option>
						<option data-country_home-id="46" value="China" <%# Container.ParentContainer["country_home"]=="China" ? "selected" : "" %> >China</option>
						<option data-country_home-id="47" value="Christmas Island" <%# Container.ParentContainer["country_home"]=="Christmas Island" ? "selected" : "" %> >Christmas Island</option>
						<option data-country_home-id="48" value="Cocos (Keeling) Islands" <%# Container.ParentContainer["country_home"]=="Cocos (Keeling) Islands" ? "selected" : "" %> >Cocos (Keeling) Islands</option>
						<option data-country_home-id="49" value="Colombia" <%# Container.ParentContainer["country_home"]=="Colombia" ? "selected" : "" %> >Colombia</option>
						<option data-country_home-id="50" value="Comoros" <%# Container.ParentContainer["country_home"]=="Comoros" ? "selected" : "" %> >Comoros</option>
						<option data-country_home-id="51" value="Congo" <%# Container.ParentContainer["country_home"]=="Congo" ? "selected" : "" %> >Congo</option>
						<option data-country_home-id="52" value="Cook Islands" <%# Container.ParentContainer["country_home"]=="Cook Islands" ? "selected" : "" %> >Cook Islands</option>
						<option data-country_home-id="53" value="Costa Rica" <%# Container.ParentContainer["country_home"]=="Costa Rica" ? "selected" : "" %> >Costa Rica</option>
						<option data-country_home-id="54" value="Croatia" <%# Container.ParentContainer["country_home"]=="Croatia" ? "selected" : "" %> >Croatia</option>
						<option data-country_home-id="55" value="Cuba" <%# Container.ParentContainer["country_home"]=="Cuba" ? "selected" : "" %> >Cuba</option>
						<option data-country_home-id="56" value="Cyprus" <%# Container.ParentContainer["country_home"]=="Cyprus" ? "selected" : "" %> >Cyprus</option>
						<option data-country_home-id="57" value="Czech Republic" <%# Container.ParentContainer["country_home"]=="Czech Republic" ? "selected" : "" %> >Czech Republic</option>
						<option data-country_home-id="58" value="Denmark" <%# Container.ParentContainer["country_home"]=="Denmark" ? "selected" : "" %> >Denmark</option>
						<option data-country_home-id="59" value="Djibouti" <%# Container.ParentContainer["country_home"]=="Djibouti" ? "selected" : "" %> >Djibouti</option>
						<option data-country_home-id="60" value="Dominica" <%# Container.ParentContainer["country_home"]=="Dominica" ? "selected" : "" %> >Dominica</option>
						<option data-country_home-id="61" value="Dominican Republic" <%# Container.ParentContainer["country_home"]=="Dominican Republic" ? "selected" : "" %> >Dominican Republic</option>
						<option data-country_home-id="62" value="Ecuador" <%# Container.ParentContainer["country_home"]=="Ecuador" ? "selected" : "" %> >Ecuador</option>
						<option data-country_home-id="63" value="Egypt" <%# Container.ParentContainer["country_home"]=="Egypt" ? "selected" : "" %> >Egypt</option>
						<option data-country_home-id="64" value="El Salvador" <%# Container.ParentContainer["country_home"]=="El Salvador" ? "selected" : "" %> >El Salvador</option>
						<option data-country_home-id="65" value="Equatorial Guinea" <%# Container.ParentContainer["country_home"]=="Equatorial Guinea" ? "selected" : "" %> >Equatorial Guinea</option>
						<option data-country_home-id="66" value="Eritrea" <%# Container.ParentContainer["country_home"]=="Eritrea" ? "selected" : "" %> >Eritrea</option>
						<option data-country_home-id="67" value="Estonia" <%# Container.ParentContainer["country_home"]=="Estonia" ? "selected" : "" %> >Estonia</option>
						<option data-country_home-id="68" value="Ethiopia" <%# Container.ParentContainer["country_home"]=="Ethiopia" ? "selected" : "" %> >Ethiopia</option>
						<option data-country_home-id="69" value="Falkland Islands" <%# Container.ParentContainer["country_home"]=="Falkland Islands" ? "selected" : "" %> >Falkland Islands</option>
						<option data-country_home-id="70" value="Faeroe Islands" <%# Container.ParentContainer["country_home"]=="Faeroe Islands" ? "selected" : "" %> >Faeroe Islands</option>
						<option data-country_home-id="71" value="Micronesia (Federated States of)" <%# Container.ParentContainer["country_home"]=="Micronesia (Federated States of)" ? "selected" : "" %> >Micronesia (Federated States of)</option>
						<option data-country_home-id="72" value="Fiji" <%# Container.ParentContainer["country_home"]=="Fiji" ? "selected" : "" %> >Fiji</option>
						<option data-country_home-id="73" value="Finland" <%# Container.ParentContainer["country_home"]=="Finland" ? "selected" : "" %> >Finland</option>
						<option data-country_home-id="74" value="France" <%# Container.ParentContainer["country_home"]=="France" ? "selected" : "" %> >France</option>
						<option data-country_home-id="75" value="French Guiana" <%# Container.ParentContainer["country_home"]=="French Guiana" ? "selected" : "" %> >French Guiana</option>
						<option data-country_home-id="76" value="French Polynesia" <%# Container.ParentContainer["country_home"]=="French Polynesia" ? "selected" : "" %> >French Polynesia</option>
						<option data-country_home-id="77" value="French Southern Territories" <%# Container.ParentContainer["country_home"]=="French Southern Territories" ? "selected" : "" %> >French Southern Territories</option>
						<option data-country_home-id="78" value="Gabon" <%# Container.ParentContainer["country_home"]=="Gabon" ? "selected" : "" %> >Gabon</option>
						<option data-country_home-id="79" value="Gambia" <%# Container.ParentContainer["country_home"]=="Gambia" ? "selected" : "" %> >Gambia</option>
						<option data-country_home-id="81" value="Georgia" <%# Container.ParentContainer["country_home"]=="Georgia" ? "selected" : "" %> >Georgia</option>
						<option data-country_home-id="82" value="Germany" <%# Container.ParentContainer["country_home"]=="Germany" ? "selected" : "" %> >Germany</option>
						<option data-country_home-id="83" value="Ghana" <%# Container.ParentContainer["country_home"]=="Ghana" ? "selected" : "" %> >Ghana</option>
						<option data-country_home-id="84" value="Gibraltar" <%# Container.ParentContainer["country_home"]=="Gibraltar" ? "selected" : "" %> >Gibraltar</option>
						<option data-country_home-id="86" value="Greece" <%# Container.ParentContainer["country_home"]=="Greece" ? "selected" : "" %> >Greece</option>
						<option data-country_home-id="87" value="Greenland" <%# Container.ParentContainer["country_home"]=="Greenland" ? "selected" : "" %> >Greenland</option>
						<option data-country_home-id="88" value="Grenada" <%# Container.ParentContainer["country_home"]=="Grenada" ? "selected" : "" %> >Grenada</option>
						<option data-country_home-id="89" value="Guadeloupe" <%# Container.ParentContainer["country_home"]=="Guadeloupe" ? "selected" : "" %> >Guadeloupe</option>
						<option data-country_home-id="90" value="Guam" <%# Container.ParentContainer["country_home"]=="Guam" ? "selected" : "" %> >Guam</option>
						<option data-country_home-id="92" value="Guatemala" <%# Container.ParentContainer["country_home"]=="Guatemala" ? "selected" : "" %> >Guatemala</option>
						<option data-country_home-id="93" value="Guinea" <%# Container.ParentContainer["country_home"]=="Guinea" ? "selected" : "" %> >Guinea</option>
						<option data-country_home-id="94" value="Guinea-Bissau" <%# Container.ParentContainer["country_home"]=="Guinea-Bissau" ? "selected" : "" %> >Guinea-Bissau</option>
						<option data-country_home-id="95" value="Guyana" <%# Container.ParentContainer["country_home"]=="Guyana" ? "selected" : "" %> >Guyana</option>
						<option data-country_home-id="96" value="Haiti" <%# Container.ParentContainer["country_home"]=="Haiti" ? "selected" : "" %> >Haiti</option>
						<option data-country_home-id="98" value="Honduras" <%# Container.ParentContainer["country_home"]=="Honduras" ? "selected" : "" %> >Honduras</option>
						<option data-country_home-id="100" value="Hungary" <%# Container.ParentContainer["country_home"]=="Hungary" ? "selected" : "" %> >Hungary</option>
						<option data-country_home-id="101" value="Iceland" <%# Container.ParentContainer["country_home"]=="Iceland" ? "selected" : "" %> >Iceland</option>
						<option data-country_home-id="102" value="Indonesia" <%# Container.ParentContainer["country_home"]=="Indonesia" ? "selected" : "" %> >Indonesia</option>
						<option data-country_home-id="103" value="India" <%# Container.ParentContainer["country_home"]=="India" ? "selected" : "" %> >India</option>
						<option data-country_home-id="104" value="Iran" <%# Container.ParentContainer["country_home"]=="Iran" ? "selected" : "" %> >Iran</option>
						<option data-country_home-id="105" value="Iraq" <%# Container.ParentContainer["country_home"]=="Iraq" ? "selected" : "" %> >Iraq</option>
						<option data-country_home-id="106" value="Ireland" <%# Container.ParentContainer["country_home"]=="Ireland" ? "selected" : "" %> >Ireland</option>
						<option data-country_home-id="107" value="Israel" <%# Container.ParentContainer["country_home"]=="Israel" ? "selected" : "" %> >Israel</option>
						<option data-country_home-id="108" value="Italy" <%# Container.ParentContainer["country_home"]=="Italy" ? "selected" : "" %> >Italy</option>
						<option data-country_home-id="109" value="Côte d'Ivoire" <%# Container.ParentContainer["country_home"]=="Côte d'Ivoire" ? "selected" : "" %> >Côte d'Ivoire</option>
						<option data-country_home-id="110" value="Jamaica" <%# Container.ParentContainer["country_home"]=="Jamaica" ? "selected" : "" %> >Jamaica</option>
						<option data-country_home-id="112" value="Japan" <%# Container.ParentContainer["country_home"]=="Japan" ? "selected" : "" %> >Japan</option>
						<option data-country_home-id="116" value="Jordan" <%# Container.ParentContainer["country_home"]=="Jordan" ? "selected" : "" %> >Jordan</option>
						<option data-country_home-id="118" value="Kazakhstan" <%# Container.ParentContainer["country_home"]=="Kazakhstan" ? "selected" : "" %> >Kazakhstan</option>
						<option data-country_home-id="119" value="Kenya" <%# Container.ParentContainer["country_home"]=="Kenya" ? "selected" : "" %> >Kenya</option>
						<option data-country_home-id="120" value="Kiribati" <%# Container.ParentContainer["country_home"]=="Kiribati" ? "selected" : "" %> >Kiribati</option>
						<option data-country_home-id="121" value="Kuwait" <%# Container.ParentContainer["country_home"]=="Kuwait" ? "selected" : "" %> >Kuwait</option>
						<option data-country_home-id="122" value="Kyrgyzstan" <%# Container.ParentContainer["country_home"]=="Kyrgyzstan" ? "selected" : "" %> >Kyrgyzstan</option>
						<option data-country_home-id="123" value="Laos" <%# Container.ParentContainer["country_home"]=="Laos" ? "selected" : "" %> >Laos</option>
						<option data-country_home-id="124" value="Latvia" <%# Container.ParentContainer["country_home"]=="Latvia" ? "selected" : "" %> >Latvia</option>
						<option data-country_home-id="125" value="Lebanon" <%# Container.ParentContainer["country_home"]=="Lebanon" ? "selected" : "" %> >Lebanon</option>
						<option data-country_home-id="126" value="Lesotho" <%# Container.ParentContainer["country_home"]=="Lesotho" ? "selected" : "" %> >Lesotho</option>
						<option data-country_home-id="127" value="Liberia" <%# Container.ParentContainer["country_home"]=="Liberia" ? "selected" : "" %> >Liberia</option>
						<option data-country_home-id="128" value="Libya" <%# Container.ParentContainer["country_home"]=="Libya" ? "selected" : "" %> >Libya</option>
						<option data-country_home-id="129" value="Liechtenstein" <%# Container.ParentContainer["country_home"]=="Liechtenstein" ? "selected" : "" %> >Liechtenstein</option>
						<option data-country_home-id="130" value="Lithuania" <%# Container.ParentContainer["country_home"]=="Lithuania" ? "selected" : "" %> >Lithuania</option>
						<option data-country_home-id="131" value="Luxembourg" <%# Container.ParentContainer["country_home"]=="Luxembourg" ? "selected" : "" %> >Luxembourg</option>
						<option data-country_home-id="132" value="Macau" <%# Container.ParentContainer["country_home"]=="Macau" ? "selected" : "" %> >Macau</option>
						<option data-country_home-id="133" value="Macedonia" <%# Container.ParentContainer["country_home"]=="Macedonia" ? "selected" : "" %> >Macedonia</option>
						<option data-country_home-id="134" value="Madagascar" <%# Container.ParentContainer["country_home"]=="Madagascar" ? "selected" : "" %> >Madagascar</option>
						<option data-country_home-id="135" value="Maldives" <%# Container.ParentContainer["country_home"]=="Maldives" ? "selected" : "" %> >Maldives</option>
						<option data-country_home-id="136" value="Mali" <%# Container.ParentContainer["country_home"]=="Mali" ? "selected" : "" %> >Mali</option>
						<option data-country_home-id="137" value="Malta" <%# Container.ParentContainer["country_home"]=="Malta" ? "selected" : "" %> >Malta</option>
						<option data-country_home-id="139" value="Malawi" <%# Container.ParentContainer["country_home"]=="Malawi" ? "selected" : "" %> >Malawi</option>
						<option data-country_home-id="140" value="Malaysia" <%# Container.ParentContainer["country_home"]=="Malaysia" ? "selected" : "" %> >Malaysia</option>
						<option data-country_home-id="141" value="Marshall Islands" <%# Container.ParentContainer["country_home"]=="Marshall Islands" ? "selected" : "" %> >Marshall Islands</option>
						<option data-country_home-id="142" value="Martinique" <%# Container.ParentContainer["country_home"]=="Martinique" ? "selected" : "" %> >Martinique</option>
						<option data-country_home-id="143" value="Mauritania" <%# Container.ParentContainer["country_home"]=="Mauritania" ? "selected" : "" %> >Mauritania</option>
						<option data-country_home-id="144" value="Mauritius" <%# Container.ParentContainer["country_home"]=="Mauritius" ? "selected" : "" %> >Mauritius</option>
						<option data-country_home-id="145" value="Mayotte" <%# Container.ParentContainer["country_home"]=="Mayotte" ? "selected" : "" %> >Mayotte</option>
						<option data-country_home-id="146" value="Mexico" <%# Container.ParentContainer["country_home"]=="Mexico" ? "selected" : "" %> >Mexico</option>
						<option data-country_home-id="148" value="Republic of Moldova" <%# Container.ParentContainer["country_home"]=="Republic of Moldova" ? "selected" : "" %> >Republic of Moldova</option>
						<option data-country_home-id="149" value="Monaco" <%# Container.ParentContainer["country_home"]=="Monaco" ? "selected" : "" %> >Monaco</option>
						<option data-country_home-id="150" value="Mongolia" <%# Container.ParentContainer["country_home"]=="Mongolia" ? "selected" : "" %> >Mongolia</option>
						<option data-country_home-id="152" value="Montserrat" <%# Container.ParentContainer["country_home"]=="Montserrat" ? "selected" : "" %> >Montserrat</option>
						<option data-country_home-id="153" value="Morocco" <%# Container.ParentContainer["country_home"]=="Morocco" ? "selected" : "" %> >Morocco</option>
						<option data-country_home-id="154" value="Mozambique" <%# Container.ParentContainer["country_home"]=="Mozambique" ? "selected" : "" %> >Mozambique</option>
						<option data-country_home-id="155" value="Myanmar" <%# Container.ParentContainer["country_home"]=="Myanmar" ? "selected" : "" %> >Myanmar</option>
						<option data-country_home-id="156" value="Namibia" <%# Container.ParentContainer["country_home"]=="Namibia" ? "selected" : "" %> >Namibia</option>
						<option data-country_home-id="157" value="Nauru" <%# Container.ParentContainer["country_home"]=="Nauru" ? "selected" : "" %> >Nauru</option>
						<option data-country_home-id="158" value="Nepal" <%# Container.ParentContainer["country_home"]=="Nepal" ? "selected" : "" %> >Nepal</option>
						<option data-country_home-id="159" value="Netherlands" <%# Container.ParentContainer["country_home"]=="Netherlands" ? "selected" : "" %> >Netherlands</option>
						<option data-country_home-id="160" value="Netherlands Antilles" <%# Container.ParentContainer["country_home"]=="Netherlands Antilles" ? "selected" : "" %> >Netherlands Antilles</option>
						<option data-country_home-id="161" value="New Caledonia" <%# Container.ParentContainer["country_home"]=="New Caledonia" ? "selected" : "" %> >New Caledonia</option>
						<option data-country_home-id="162" value="New Zealand" <%# Container.ParentContainer["country_home"]=="New Zealand" ? "selected" : "" %> >New Zealand</option>
						<option data-country_home-id="163" value="Nicaragua" <%# Container.ParentContainer["country_home"]=="Nicaragua" ? "selected" : "" %> >Nicaragua</option>
						<option data-country_home-id="164" value="Niger" <%# Container.ParentContainer["country_home"]=="Niger" ? "selected" : "" %> >Niger</option>
						<option data-country_home-id="165" value="Nigeria" <%# Container.ParentContainer["country_home"]=="Nigeria" ? "selected" : "" %> >Nigeria</option>
						<option data-country_home-id="166" value="Niue" <%# Container.ParentContainer["country_home"]=="Niue" ? "selected" : "" %> >Niue</option>
						<option data-country_home-id="167" value="Norfolk Island" <%# Container.ParentContainer["country_home"]=="Norfolk Island" ? "selected" : "" %> >Norfolk Island</option>
						<option data-country_home-id="169" value="Northern Mariana Islands" <%# Container.ParentContainer["country_home"]=="Northern Mariana Islands" ? "selected" : "" %> >Northern Mariana Islands</option>
						<option data-country_home-id="170" value="Norway" <%# Container.ParentContainer["country_home"]=="Norway" ? "selected" : "" %> >Norway</option>
						<option data-country_home-id="171" value="Oman" <%# Container.ParentContainer["country_home"]=="Oman" ? "selected" : "" %> >Oman</option>
						<option data-country_home-id="172" value="Palau" <%# Container.ParentContainer["country_home"]=="Palau" ? "selected" : "" %> >Palau</option>
						<option data-country_home-id="173" value="Pakistan" <%# Container.ParentContainer["country_home"]=="Pakistan" ? "selected" : "" %> >Pakistan</option>
						<option data-country_home-id="174" value="Panama" <%# Container.ParentContainer["country_home"]=="Panama" ? "selected" : "" %> >Panama</option>
						<option data-country_home-id="175" value="Independent State of Papua New Guinea" <%# Container.ParentContainer["country_home"]=="Independent State of Papua New Guinea" ? "selected" : "" %> >Independent State of Papua New Guinea</option>
						<option data-country_home-id="177" value="Paraguay" <%# Container.ParentContainer["country_home"]=="Paraguay" ? "selected" : "" %> >Paraguay</option>
						<option data-country_home-id="178" value="Peru" <%# Container.ParentContainer["country_home"]=="Peru" ? "selected" : "" %> >Peru</option>
						<option data-country_home-id="179" value="Philippines" <%# Container.ParentContainer["country_home"]=="Philippines" ? "selected" : "" %> >Philippines</option>
						<option data-country_home-id="180" value="Pitcairn" <%# Container.ParentContainer["country_home"]=="Pitcairn" ? "selected" : "" %> >Pitcairn</option>
						<option data-country_home-id="181" value="Poland" <%# Container.ParentContainer["country_home"]=="Poland" ? "selected" : "" %> >Poland</option>
						<option data-country_home-id="182" value="Portugal" <%# Container.ParentContainer["country_home"]=="Portugal" ? "selected" : "" %> >Portugal</option>
						<option data-country_home-id="183" value="Puerto Rico" <%# Container.ParentContainer["country_home"]=="Puerto Rico" ? "selected" : "" %> >Puerto Rico</option>
						<option data-country_home-id="184" value="Qatar" <%# Container.ParentContainer["country_home"]=="Qatar" ? "selected" : "" %> >Qatar</option>
						<option data-country_home-id="185" value="Réunion" <%# Container.ParentContainer["country_home"]=="Réunion" ? "selected" : "" %> >Réunion</option>
						<option data-country_home-id="186" value="Romania" <%# Container.ParentContainer["country_home"]=="Romania" ? "selected" : "" %> >Romania</option>
						<option data-country_home-id="187" value="Russia" <%# Container.ParentContainer["country_home"]=="Russia" ? "selected" : "" %> >Russia</option>
						<option data-country_home-id="188" value="Rwanda" <%# Container.ParentContainer["country_home"]=="Rwanda" ? "selected" : "" %> >Rwanda</option>
						<option data-country_home-id="189" value="Saint Helena, Ascension and Tristan da Cunha" <%# Container.ParentContainer["country_home"]=="Saint Helena, Ascension and Tristan da Cunha" ? "selected" : "" %> >Saint Helena, Ascension and Tristan da Cunha</option>
						<option data-country_home-id="190" value="Saint Kitts and Nevis" <%# Container.ParentContainer["country_home"]=="Saint Kitts and Nevis" ? "selected" : "" %> >Saint Kitts and Nevis</option>
						<option data-country_home-id="191" value="St. Lucia" <%# Container.ParentContainer["country_home"]=="St. Lucia" ? "selected" : "" %> >St. Lucia</option>
						<option data-country_home-id="192" value="Saint Pierre and Miquelon" <%# Container.ParentContainer["country_home"]=="Saint Pierre and Miquelon" ? "selected" : "" %> >Saint Pierre and Miquelon</option>
						<option data-country_home-id="193" value="Saint Vincent and the Grenadines" <%# Container.ParentContainer["country_home"]=="Saint Vincent and the Grenadines" ? "selected" : "" %> >Saint Vincent and the Grenadines</option>
						<option data-country_home-id="194" value="San Marino" <%# Container.ParentContainer["country_home"]=="San Marino" ? "selected" : "" %> >San Marino</option>
						<option data-country_home-id="195" value="Sao Tome and Principe" <%# Container.ParentContainer["country_home"]=="Sao Tome and Principe" ? "selected" : "" %> >Sao Tome and Principe</option>
						<option data-country_home-id="196" value="Saudi Arabia" <%# Container.ParentContainer["country_home"]=="Saudi Arabia" ? "selected" : "" %> >Saudi Arabia</option>
						<option data-country_home-id="197" value="Senegal" <%# Container.ParentContainer["country_home"]=="Senegal" ? "selected" : "" %> >Senegal</option>
						<option data-country_home-id="198" value="Serbia" <%# Container.ParentContainer["country_home"]=="Serbia" ? "selected" : "" %> >Serbia</option>
						<option data-country_home-id="199" value="Seychelles" <%# Container.ParentContainer["country_home"]=="Seychelles" ? "selected" : "" %> >Seychelles</option>
						<option data-country_home-id="200" value="Sierra Leone" <%# Container.ParentContainer["country_home"]=="Sierra Leone" ? "selected" : "" %> >Sierra Leone</option>
						<option data-country_home-id="201" value="Singapore" <%# Container.ParentContainer["country_home"]=="Singapore" ? "selected" : "" %> >Singapore</option>
						<option data-country_home-id="202" value="Slovakia" <%# Container.ParentContainer["country_home"]=="Slovakia" ? "selected" : "" %> >Slovakia</option>
						<option data-country_home-id="203" value="Slovenia" <%# Container.ParentContainer["country_home"]=="Slovenia" ? "selected" : "" %> >Slovenia</option>
						<option data-country_home-id="204" value="Solomon Islands" <%# Container.ParentContainer["country_home"]=="Solomon Islands" ? "selected" : "" %> >Solomon Islands</option>
						<option data-country_home-id="205" value="Federal Republic of Somalia" <%# Container.ParentContainer["country_home"]=="Federal Republic of Somalia" ? "selected" : "" %> >Federal Republic of Somalia</option>
						<option data-country_home-id="206" value="South Africa" <%# Container.ParentContainer["country_home"]=="South Africa" ? "selected" : "" %> >South Africa</option>
						<option data-country_home-id="207" value="South Georgia and South Sandwich Islands" <%# Container.ParentContainer["country_home"]=="South Georgia and South Sandwich Islands" ? "selected" : "" %> >South Georgia and South Sandwich Islands</option>
						<option data-country_home-id="209" value="Spain" <%# Container.ParentContainer["country_home"]=="Spain" ? "selected" : "" %> >Spain</option>
						<option data-country_home-id="211" value="Sri Lanka" <%# Container.ParentContainer["country_home"]=="Sri Lanka" ? "selected" : "" %> >Sri Lanka</option>
						<option data-country_home-id="212" value="Sudan" <%# Container.ParentContainer["country_home"]=="Sudan" ? "selected" : "" %> >Sudan</option>
						<option data-country_home-id="213" value="Suriname" <%# Container.ParentContainer["country_home"]=="Suriname" ? "selected" : "" %> >Suriname</option>
						<option data-country_home-id="214" value="Svalbard and Jan Mayen" <%# Container.ParentContainer["country_home"]=="Svalbard and Jan Mayen" ? "selected" : "" %> >Svalbard and Jan Mayen</option>
						<option data-country_home-id="215" value="Swaziland" <%# Container.ParentContainer["country_home"]=="Swaziland" ? "selected" : "" %> >Swaziland</option>
						<option data-country_home-id="216" value="Sweden" <%# Container.ParentContainer["country_home"]=="Sweden" ? "selected" : "" %> >Sweden</option>
						<option data-country_home-id="217" value="Switzerland" <%# Container.ParentContainer["country_home"]=="Switzerland" ? "selected" : "" %> >Switzerland</option>
						<option data-country_home-id="218" value="Syria" <%# Container.ParentContainer["country_home"]=="Syria" ? "selected" : "" %> >Syria</option>
						<option data-country_home-id="219" value="Taiwan" <%# Container.ParentContainer["country_home"]=="Taiwan" ? "selected" : "" %> >Taiwan</option>
						<option data-country_home-id="220" value="Tajikistan" <%# Container.ParentContainer["country_home"]=="Tajikistan" ? "selected" : "" %> >Tajikistan</option>
						<option data-country_home-id="221" value="Tanzania" <%# Container.ParentContainer["country_home"]=="Tanzania" ? "selected" : "" %> >Tanzania</option>
						<option data-country_home-id="222" value="Thailand" <%# Container.ParentContainer["country_home"]=="Thailand" ? "selected" : "" %> >Thailand</option>
						<option data-country_home-id="223" value="Togo" <%# Container.ParentContainer["country_home"]=="Togo" ? "selected" : "" %> >Togo</option>
						<option data-country_home-id="224" value="Tokelau" <%# Container.ParentContainer["country_home"]=="Tokelau" ? "selected" : "" %> >Tokelau</option>
						<option data-country_home-id="225" value="Tonga" <%# Container.ParentContainer["country_home"]=="Tonga" ? "selected" : "" %> >Tonga</option>
						<option data-country_home-id="226" value="Trinidad and Tobago" <%# Container.ParentContainer["country_home"]=="Trinidad and Tobago" ? "selected" : "" %> >Trinidad and Tobago</option>
						<option data-country_home-id="227" value="Tunisia" <%# Container.ParentContainer["country_home"]=="Tunisia" ? "selected" : "" %> >Tunisia</option>
						<option data-country_home-id="228" value="Turkey" <%# Container.ParentContainer["country_home"]=="Turkey" ? "selected" : "" %> >Turkey</option>
						<option data-country_home-id="229" value="Turkmenistan" <%# Container.ParentContainer["country_home"]=="Turkmenistan" ? "selected" : "" %> >Turkmenistan</option>
						<option data-country_home-id="230" value="Turks and Caicos Islands" <%# Container.ParentContainer["country_home"]=="Turks and Caicos Islands" ? "selected" : "" %> >Turks and Caicos Islands</option>
						<option data-country_home-id="231" value="Tuvalu" <%# Container.ParentContainer["country_home"]=="Tuvalu" ? "selected" : "" %> >Tuvalu</option>
						<option data-country_home-id="232" value="Uganda" <%# Container.ParentContainer["country_home"]=="Uganda" ? "selected" : "" %> >Uganda</option>
						<option data-country_home-id="233" value="Ukraine" <%# Container.ParentContainer["country_home"]=="Ukraine" ? "selected" : "" %> >Ukraine</option>
						<option data-country_home-id="234" value="United Arab Emirates" <%# Container.ParentContainer["country_home"]=="United Arab Emirates" ? "selected" : "" %> >United Arab Emirates</option>
						<option data-country_home-id="235" value="United Kingdom" <%# Container.ParentContainer["country_home"]=="United Kingdom" ? "selected" : "" %> >United Kingdom</option>
						<option data-country_home-id="236" value="United States of America" <%# Container.ParentContainer["country_home"]=="United States of America" ? "selected" : "" %> >United States of America</option>
						<option data-country_home-id="237" value="Uruguay" <%# Container.ParentContainer["country_home"]=="Uruguay" ? "selected" : "" %> >Uruguay</option>
						<option data-country_home-id="238" value="Uzbekistan" <%# Container.ParentContainer["country_home"]=="Uzbekistan" ? "selected" : "" %> >Uzbekistan</option>
						<option data-country_home-id="239" value="Vanuatu" <%# Container.ParentContainer["country_home"]=="Vanuatu" ? "selected" : "" %> >Vanuatu</option>
						<option data-country_home-id="240" value="Venezuela, Bolivarian Republic of" <%# Container.ParentContainer["country_home"]=="Venezuela, Bolivarian Republic of" ? "selected" : "" %> >Venezuela, Bolivarian Republic of</option>
						<option data-country_home-id="241" value="Vietnam" <%# Container.ParentContainer["country_home"]=="Vietnam" ? "selected" : "" %> >Vietnam</option>
						<option data-country_home-id="242" value="U.S. Virgin Islands" <%# Container.ParentContainer["country_home"]=="U.S. Virgin Islands" ? "selected" : "" %> >U.S. Virgin Islands</option>
						<option data-country_home-id="244" value="Wallis and Futuna" <%# Container.ParentContainer["country_home"]=="Wallis and Futuna" ? "selected" : "" %> >Wallis and Futuna</option>
						<option data-country_home-id="246" value="Western Sahara" <%# Container.ParentContainer["country_home"]=="Western Sahara" ? "selected" : "" %> >Western Sahara</option>
						<option data-country_home-id="247" value="Samoa" <%# Container.ParentContainer["country_home"]=="Samoa" ? "selected" : "" %> >Samoa</option>
						<option data-country_home-id="248" value="Yemen" <%# Container.ParentContainer["country_home"]=="Yemen" ? "selected" : "" %> >Yemen</option>
						<option data-country_home-id="249" value="Democratic Republic of Congo" <%# Container.ParentContainer["country_home"]=="Democratic Republic of Congo" ? "selected" : "" %> >Democratic Republic of Congo</option>
						<option data-country_home-id="250" value="Zambia" <%# Container.ParentContainer["country_home"]=="Zambia" ? "selected" : "" %> >Zambia</option>
						<option data-country_home-id="251" value="Zimbabwe" <%# Container.ParentContainer["country_home"]=="Zimbabwe" ? "selected" : "" %> >Zimbabwe</option>
						<option data-country_home-id="254" value="Belarus" <%# Container.ParentContainer["country_home"]=="Belarus" ? "selected" : "" %> >Belarus</option>
						<option data-country_home-id="257" value="Hong Kong" <%# Container.ParentContainer["country_home"]=="Hong Kong" ? "selected" : "" %> >Hong Kong</option>
						<option data-country_home-id="258" value="North Korea" <%# Container.ParentContainer["country_home"]=="North Korea" ? "selected" : "" %> >North Korea</option>
						<option data-country_home-id="259" value="South Korea" <%# Container.ParentContainer["country_home"]=="South Korea" ? "selected" : "" %> >South Korea</option>
						<option data-country_home-id="262" value="Vatican" <%# Container.ParentContainer["country_home"]=="Vatican" ? "selected" : "" %> >Vatican</option>
						<option data-country_home-id="271" value="Timor-Leste" <%# Container.ParentContainer["country_home"]=="Timor-Leste" ? "selected" : "" %> >Timor-Leste</option>
						<option data-country_home-id="272" value="United States Minor Outlying Islands" <%# Container.ParentContainer["country_home"]=="United States Minor Outlying Islands" ? "selected" : "" %> >United States Minor Outlying Islands</option>
						<option data-country_home-id="273" value="Montenegro" <%# Container.ParentContainer["country_home"]=="Montenegro" ? "selected" : "" %> >Montenegro</option>
						<option data-country_home-id="274" value="Guernsey" <%# Container.ParentContainer["country_home"]=="Guernsey" ? "selected" : "" %> >Guernsey</option>
						<option data-country_home-id="275" value="Isle of Man" <%# Container.ParentContainer["country_home"]=="Isle of Man" ? "selected" : "" %> >Isle of Man</option>
						<option data-country_home-id="276" value="Jersey" <%# Container.ParentContainer["country_home"]=="Jersey" ? "selected" : "" %> >Jersey</option>
						<option data-country_home-id="277" value="Saint Barthélemy" <%# Container.ParentContainer["country_home"]=="Saint Barthélemy" ? "selected" : "" %> >Saint Barthélemy</option>
						<option data-country_home-id="278" value="Saint Martin (French Part)" <%# Container.ParentContainer["country_home"]=="Saint Martin (French Part)" ? "selected" : "" %> >Saint Martin (French Part)</option>
						<option data-country_home-id="279" value="Palestinian Territory, Occupied" <%# Container.ParentContainer["country_home"]=="Palestinian Territory, Occupied" ? "selected" : "" %> >Palestinian Territory, Occupied</option>
						<option data-country_home-id="280" value="Bonaire, Sint Eustatius and Saba" <%# Container.ParentContainer["country_home"]=="Bonaire, Sint Eustatius and Saba" ? "selected" : "" %> >Bonaire, Sint Eustatius and Saba</option>
						<option data-country_home-id="281" value="St. Maarten (Dutch Part)" <%# Container.ParentContainer["country_home"]=="St. Maarten (Dutch Part)" ? "selected" : "" %> >St. Maarten (Dutch Part)</option>
						<option data-country_home-id="282" value="Curaçao" <%# Container.ParentContainer["country_home"]=="Curaçao" ? "selected" : "" %> >Curaçao</option>
						<option data-country_home-id="283" value="South Sudan" <%# Container.ParentContainer["country_home"]=="South Sudan" ? "selected" : "" %> >South Sudan</option>
					</select>
				</div>
				<p>&nbsp;</p>
				<h4>Personal Contact Information </h4>
				<div class="form-group">
					<label for="IAForm_telephone_home">Telephone </label>
					<input type="text" placeholder="+1.XXX.XXX.XXXX" value="<%# Container.ParentContainer["telephone_home"] %>" id="IAForm_telephone_home" class="form-control" name="IAForm_telephone_home" maxlength="250">
				</div>
				<!--<div class="form-group">
			<label for="IAForm_mobile_home">Mobile </label>
			<input type="text" value="<%# Container.ParentContainer["mobile_home"] %>" id="IAForm_mobile_home" class="form-control" name="IAForm_mobile_home" maxlength="250">
		  </div>-->
				<div class="form-group">
					<label for="IAForm_email_home">Email Address </label>
					<input type="text" value="<%# Container.ParentContainer["email_home"] %>" id="IAForm_email_home" class="form-control" name="IAForm_email_home" maxlength="250">
				</div>
				<p>&nbsp;</p>
				<h4> Latham & Watkins Information </h4>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_DateJoinedFirm"] %>">Start Date</label>
					<input id="" type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_DateJoinedFirm"] %>" value="<%# Container.ParentContainer["AdditionalField_DateJoinedFirm"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_DateLeftFirm"] %>">End Date</label>
					<input id="" type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_DateLeftFirm"] %>" value="<%# Container.ParentContainer["AdditionalField_DateLeftFirm"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_LastLathamPosition"] %>">Position</label>
					<input type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_LastLathamPosition"] %>" value="<%# Container.ParentContainer["AdditionalField_LastLathamPosition"] %>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_LWDepartment"] %>">Law Department</label>
					<input type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_LWDepartment"] %>" value="<%# Container.ParentContainer["AdditionalField_LWDepartment"] %>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_PracticeGroups"] %>">Practice Area</label>
					<input type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_PracticeGroups"] %>" value="<%# Container.ParentContainer["AdditionalField_PracticeGroups"] %>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_Office"] %>">Office</label>
					<input type="text" class="form-control" readonly="readonly" name="<%# Container["AdditionalField_Office"] %>" value="<%# Container.ParentContainer["AdditionalField_Office"] %>">
				</div>
				<p>&nbsp;</p>
				<h4> Education History (most recent first) </h4>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University1Name"] %>">University Name (1st)</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University1Name"] %>" value="<%# Container.ParentContainer["AdditionalField_University1Name"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University1Degree"] %>">Degree</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University1Degree"] %>" value="<%# Container.ParentContainer["AdditionalField_University1Degree"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University1GraduationYear"] %>">Degree Graduation Year</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University1GraduationYear"] %>" value="<%# Container.ParentContainer["AdditionalField_University1GraduationYear"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University2Name"] %>">University Name (2nd)</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University2Name"] %>" value="<%# Container.ParentContainer["AdditionalField_University2Name"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University2Degree"] %>">Degree</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University2Degree"] %>" value="<%# Container.ParentContainer["AdditionalField_University2Degree"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University2GraduationYear"] %>">Degree Graduation Year</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University2GraduationYear"] %>" value="<%# Container.ParentContainer["AdditionalField_University2GraduationYear"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University3Name"] %>">University Name (3rd)</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University3Name"] %>" value="<%# Container.ParentContainer["AdditionalField_University3Name"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University3Degree"] %>">Degree</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University3Degree"] %>" value="<%# Container.ParentContainer["AdditionalField_University3Degree"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_University3GraduationYear"] %>">Degree Graduation Year</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_University3GraduationYear"] %>" value="<%# Container.ParentContainer["AdditionalField_University3GraduationYear"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_Clerkship(Court)"] %>">Clerkship (Court)</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_Clerkship(Court)"] %>" value="<%# Container.ParentContainer["AdditionalField_Clerkship(Court)"]%>">
				</div>
				<!--<div class="form-group">
			  <label for="IAForm_<%# Container["xx"] %>">Licenced to Practice (States)</label>
			  <input id="" type="text" class="form-control" name="_<%# Container["xx"] %>" value="<%# Container.ParentContainer["xx"]%>">
			</div>-->
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<h4> Employment History </h4>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_L&WAlumni-CurrentEmployer"] %>">Former Employer</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_L&WAlumni-CurrentEmployer"] %>" value="<%# Container.ParentContainer["AdditionalField_L&WAlumni-CurrentEmployer"]%>">
				</div>
				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_L&WAlumni-CurrentJobTitle"] %>">Former Job Title</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_L&WAlumni-CurrentJobTitle"] %>" value="<%# Container.ParentContainer["AdditionalField_L&WAlumni-CurrentJobTitle"]%>">
				</div>



<p>&nbsp;</p>
				<h4> Social Media </h4>

				<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_URL-LinkedIn"] %>">LinkedIn URL</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_URL-LinkedIn"] %>" value="<%# Container.ParentContainer["AdditionalField_URL-LinkedIn"]%>">
				</div>
<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_URL-Facebook"] %>">Facebook URL</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_URL-Facebook"] %>" value="<%# Container.ParentContainer["AdditionalField_URL-Facebook"]%>">
				</div>
<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_URL-Twitter"] %>">Twitter URL</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_URL-Twitter"] %>" value="<%# Container.ParentContainer["AdditionalField_URL-Twitter"]%>">
				</div>
<div class="form-group">
					<label for="IAForm_<%# Container["AdditionalField_URL-WeChat"] %>">WeChat URL</label>
					<input id="" type="text" class="form-control" name="IAForm_<%# Container["AdditionalField_URL-WeChat"] %>" value="<%# Container.ParentContainer["AdditionalField_URL-WeChat"]%>">
				</div>






				<h4> Profile Display</h4>
				<div class="form-group">
					<label for="VxForm_<%# Container["AdditionalField_WebPortalProfileParticipant"] %>"> Display a profile page in this Alumni website? </label>
					<label>
						<input type="radio" name="IAForm_<%# Container["AdditionalField_WebPortalProfileParticipant"] %>" value="True" <%# Container.ParentContainer["AdditionalField_WebPortalProfileParticipant"]=="True" ? "checked" : "" %> >
						<span>Show</span> </label>
					<label>
						<input type="radio" name="IAForm_<%# Container["AdditionalField_WebPortalProfileParticipant"] %>" value="False" <%# Container.ParentContainer["AdditionalField_WebPortalProfileParticipant"]=="False" ? "checked" : "" %>>
						<span>Hide</span> </label>
				</div>
				<div class="form-group">
					<input type="hidden" name="VxForm_Mode" value="edit" />
					<input type="hidden" name="VxForm_ExternalContactId" value="<%# Container.ParentContainer["ExternalContactId"] %>" />
					<input type="hidden" name="FolderSitePageId" value="<%# Container.ParentContainer["FolderSitePageId"] %>" />
					<input type="hidden" name="ProfileGuid" value="<%# Container.ParentContainer["ProfileGuid"] %>" />
				</div>
				<div class="form-group">
					<button value="Submit" name="submit" id="subtmit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-right" type="submit">Submit</button>
				</div>
			</ItemTemplate>
        </Vuture:AlumniFolderCustomFields>
      </ItemTemplate>
    </Vuture:ViewProfileControl>
  </form>
</div>
