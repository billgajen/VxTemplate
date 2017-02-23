<div class="form_container">
	<div class="warning">
		<%= Request.QueryString["errorMessage"]%>
	</div>
	<form method="post" action='/API/AlumniRegisterProfile' accept-charset="utf-8" enctype="multipart/form-data" class="form" role="form">
		<Vuture:ViewProfileControl ID="VxVireProfileControl" runat="server" ProfileGuid="<%$ QueryString: ProfileGuid %>">
			<ItemTemplate>
				<Vuture:AlumniFolderCustomFields ID="Vx89985254" runat="server" VxFolderSitePageId='<%# Container["FolderSitePageId"] %>'>
					<ItemTemplate>
						<h4>Edit your profile image</h4>
						<div class="form-group-holder">
							<div class="form-group">
								<div class="col-sm-3"> <img src="/API/ProfileImage/<%# Container.ParentContainer["ProfileGuid"] %>.jpg?width=175&height=175" alt="Image not found" /> </div>
								<div class="file col-sm-9">
									<label for="Vx_ProfilePhoto">Profile photo</label>
									<input name="Vx_ProfilePhoto" value="" type="file" />
									<div class="alert" role="alert">
										<p>Allowed image formats are JPG,JPEG,PNG,GIF,BMP
											<br /> Minimum image dimensions should be 400px * 400px
                                                                                        <br /> Maximum image dimensions should be 1200px * 1200px
											<br /> Maximum image size should be 5 MB</p>
									</div>
								</div>
							</div>
							<div class="form-group">
								<input type="hidden" name="VxForm_Mode" value="edit" />
								<input type="hidden" name="VxForm_ExternalContactId" value="<%# Container.ParentContainer["ExternalContactId"] %>" />
								<input type="hidden" name="FolderSitePageId" value="<%# Container.ParentContainer["FolderSitePageId"] %>" />
								<input type="hidden" name="ProfileGuid" value="<%# Container.ParentContainer["ProfileGuid"] %>" />
							</div>
							<div class="form-group">
								<button value="Submit" name="submit" id="subtmit" class="btn btn-primary btn-md branded_button branded_button_inverted pull-right" type="submit">Update</button>
							</div>
						</div>
					</ItemTemplate>
				</Vuture:AlumniFolderCustomFields>
			</ItemTemplate>
		</Vuture:ViewProfileControl>
	</form>
</div>
