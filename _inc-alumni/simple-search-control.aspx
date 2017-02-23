<form role="form" class="form" method="get" action="/Search/SearchResult.aspx" accept-charset="utf-8">
    <div class="form-group last_name">
        <input value="" placeholder="Surname" id="IAForm_lastName" class="form-control required" name="IAForm_lastName" maxlength="250" type="text">
    </div>
    <div class="form-group first_name">
        <input placeholder="First Name" value="" id="IAForm_firstName" class="form-control required" name="IAForm_firstName" maxlength="250" type="text">
    </div>
    <div class="form-group">
        <input placeholder="Department" class="form-control required" name="IAForm_AdditionalField_LWDepartment" maxlength="250" type="text">
    </div>
    <div class="form-group">
       
       <select type="text" placeholder="" class="form-control" name="IAForm_AdditionalField_Office" id="IAForm_AdditionalField_Office">
            <option value="">--- Select Office---</option>
            
                    <option value="Abu Dhabi">
                        Abu Dhabi
                    </option>
                
                    <option value="Barcelona">
                        Barcelona
                    </option>
                
                    <option value="Beijing">
                        Beijing
                    </option>
                
                    <option value="Boston">
                        Boston
                    </option>
                
                    <option value="Boston Waltham">
                        Boston Waltham
                    </option>
                
                    <option value="Brussels">
                        Brussels
                    </option>
                
                    <option value="Century City">
                        Century City
                    </option>
                
                    <option value="Chicago">
                        Chicago
                    </option>
                
                    <option value="Client Site">
                        Client Site
                    </option>
                
                    <option value="Doha">
                        Doha
                    </option>
                
                    <option value="Dubai">
                        Dubai
                    </option>
                
                    <option value="Düsseldorf">
                        Düsseldorf
                    </option>
                
                    <option value="Frankfurt">
                        Frankfurt
                    </option>
                
                    <option value="GSO">
                        GSO
                    </option>
                
                    <option value="Hamburg">
                        Hamburg
                    </option>
                
                    <option value="Hong Kong">
                        Hong Kong
                    </option>
                
                    <option value="Houston">
                        Houston
                    </option>
                
                    <option value="London">
                        London
                    </option>
                
                    <option value="Los Angeles">
                        Los Angeles
                    </option>
                
                    <option value="Madrid">
                        Madrid
                    </option>
                
                    <option value="Manchester">
                        Manchester
                    </option>
                
                    <option value="Milan">
                        Milan
                    </option>
                
                    <option value="Moscow">
                        Moscow
                    </option>
                
                    <option value="Munich">
                        Munich
                    </option>
                
                    <option value="New Jersey">
                        New Jersey
                    </option>
                
                    <option value="New York">
                        New York
                    </option>
                
                    <option value="Northern Virginia">
                        Northern Virginia
                    </option>
                
                    <option value="Orange County">
                        Orange County
                    </option>
                
                    <option value="Paris">
                        Paris
                    </option>
                
                    <option value="Riyadh">
                        Riyadh
                    </option>
                
                    <option value="Rome">
                        Rome
                    </option>
                
                    <option value="San Diego">
                        San Diego
                    </option>
                
                    <option value="San Francisco">
                        San Francisco
                    </option>
                
                    <option value="Seoul">
                        Seoul
                    </option>
                
                    <option value="Shanghai">
                        Shanghai
                    </option>
                
                    <option value="Silicon Valley">
                        Silicon Valley
                    </option>
                
                    <option value="Singapore">
                        Singapore
                    </option>
                
                    <option value="Tokyo">
                        Tokyo
                    </option>
                
                    <option value="Washington">
                        Washington
                    </option>
                
        </select>

    </div>
    <div class="form-group">
        <Vuture:StoredProcedureRepeaterXMLParser ID="Vx605652112123X" StoredProcedureName="usp_Vx_FrontEnd_ContentTypeCustomFields_Get" runat="server">
            <Parameter Name="intSitePageId" Type="Integer" Value='<%$ vx: SITE_PAGE_ID%>' />
            <Parameter Name="strContentType" Type="NVarChar" Value="Web.{SiteId}-alumnifolders" />
            <ItemTemplate>
                <div class="radio">
                    <label>
                        <input checked="checked" type="radio" name="FolderSitePageId" value="<%# Container[" SitePageId "] %>">
                        <%# Container["DisplayText"] %>
                    </label>
                </div>
            </ItemTemplate>
        </Vuture:StoredProcedureRepeaterXMLParser>
    </div>
    <!-- <div class="notice">
		<p> <a href="/search/advancedprofilesearch.aspx" class="pull-right">Advanced Search</a></p>
	</div> -->
    <div class="form-group">
        <button value="" name="submit" id="subtmit" class="standard-button" type="submit">Search</button>
    </div>
</form>
