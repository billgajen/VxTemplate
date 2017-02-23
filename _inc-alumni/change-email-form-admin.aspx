<form method="post" action="/API/AlumniChangeEmail" accept-charset="utf-8" enctype="multipart/form-data" class="form">       
      <div class='<%= !String.IsNullOrEmpty(Request.QueryString["errorMessage"]) ? "alert alert-danger" : "" %>'><%=Request["errorMessage"] %></div>
      <div class="form-group">
		<label for="IAForm_businessElectronicAddress">New Email: * </label>
		<input value="" id="IAForm_Email" class="form-control email required" name="IAForm_businessElectronicAddress" maxlength="250" placeholder="Email address" />
	</div>
     <div class="form-group" style="width:100%">          
       <input type="checkbox" name="emailVarificationRequired" value="true" checked/> <p> Email verification required </p>
     </div>
     <div>
         <input type="hidden" name="ProfileGuid" value="<%= Request.QueryString["profileguid"] %>" />
         <input type="hidden" name="editBy" value="<%= Request.QueryString["editby"]%>" />
     </div>
	<div class="form-group">
		<button type="submit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-left" id="subtmit" name="submit">Change Email</button>
	</div>
</form>

