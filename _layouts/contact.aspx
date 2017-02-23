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
	<div class="wrapper article">
		<div id="col_01" class="vx_drag vx_blocks_file_blocks-header">
			<div class="vx_block">
				<!--#include file="../_inc/header-type-two.aspx"-->
			</div>
		</div>
		<div id="col_02" class="vx_drag vx_blocks_file_blocks-hero page-intro">
			<div class="vx_block row hero">
				<div class="row-content">
					<div class="col-sm-12">
						<div class="vx_image" style="">
							<img src="/_images/hero(1).jpg" alt="hero" title="hero" height="508" width="1310" style="">
						</div>
					</div>
				</div>
			</div>
			<div class="vx_block row text-area">
				<div class="row-content">
					<div class="col-sm-8 vx_text">
						<div class="vx_text">
							<h1>Contact us</h1>
							<p>We value your feedback</p>
						</div>
						<div class="author-date">
							<vuture:storedprocedurerepeaterxmlparser id="Vx316825537" storedprocedurename="usp_Vx_FrontEnd_PageCustomFields_Get" runat="server">
								<parameter name="intSitePageId" type="Integer" value='<%$ vx: SITE_PAGE_ID%>'></parameter>
								<itemtemplate>
									<p>
										<%# Container["Author Full name"] != "" ? Container["Author Full name"] : "" %><span><%# Container["Date Published"] != "" ? Container["Date Published"] : "" %></span></p>
								</itemtemplate>
							</vuture:storedprocedurerepeaterxmlparser>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area">
			<div class="row">
				<div class="row-content">
					<div class="col-sm-offset-4 col-sm-8 article-content">
						<div id="frm_01" class="vx_form bs-component">
							<form action="/API/Form/Process" method="post" accept-charset="utf-8" data-prefill="disconnect" autocomplete="off">
								<p class="instruction_paragraph"><span>We value your feedback. If you have a question or need help, send us a message and we'll get back to you shortly.</span></p>
								<p class="single_line_text">
									<label for="vx_form_element_3">Your full name *</label>
									<input name="VxForm_Your-Full-Name" value="" id="vx_form_element_3" class="required" type="text">
								</p>
								<p class="single_line_text">
									<label for="vx_form_element_4">Your email *</label>
									<input name="VxForm_Email" value="" id="vx_form_element_4" class="required" type="text">
								</p>
								<p class="drop_down">
									<label for="vx_form_element_6">Subject *</label>
									<select class="required" name="VxForm_Subject" id="vx_form_element_6">
										<option value="Alumni news">Alumni news</option>
										<option value="Registration issues">Registration issues</option>
										<option value="System error">System error</option>
										<option value="Website feedback">Website feedback</option>
										<option value="Opt-out alumni directory">Opt-out alumni network</option>
										<option value="Other">Other</option>
									</select>
								</p>
								<p class="paragraph_text">
									<label for="vx_form_element_7">Message *</label>
									<textarea name="VxForm_Message" rows="8" cols="40" id="vx_form_element_7" class="required"></textarea>
								</p>
								<p class="submit">
									<input name="" value="Send" type="submit">
								</p>
								<input value="Contact Us form: Clifford Chance Alumni" id="_strId" name="_strId" type="hidden">
								<input value="test@vutu.re" id="__vx_email" name="__vx_email" type="hidden">
								<input value="/landing-pages/contactformsubmissionthankyou.aspx" id="__vx_redirect" name="__vx_redirect" type="hidden">
								<input value="32825" id="_intSitePageId" name="_intSitePageId" type="hidden">
								<input value="" id="_intEmailHistoryId" name="_intEmailHistoryId" type="hidden">
								<input value="" id="_intEmailListId" name="_intEmailListId" type="hidden">
								<input value="" id="_intEmailId" name="_intEmailId" type="hidden">
								<input value="" id="_strInteraction" name="_strInteraction" type="hidden">
								<input name="_intInstanceId" id="_intInstanceId" value="0" type="hidden">
								<input name="_autoActivityType" id="_autoActivityType" value="" type="hidden">
								<input name="_intIaFolderId" id="_intIaFolderId" value="" type="hidden">
								<input name="_vxUpdateMethod" id="_vxUpdateMethod" value="" type="hidden">
								<input name="_sourceFolder" id="_sourceFolder" value="" type="hidden">
								<input name="_formId" id="_formId" value="625" type="hidden">
								<input name="_formName" id="_formName" value="Contact Us form: Clifford Chance Alumni" type="hidden">
								<input value="" id="_selected_FolderForDateId" name="_selected_FolderForDateId" type="hidden">
								<input value="" id="_dateProcessedField" name="_dateProcessedField" type="hidden">
								<input type="hidden" name="_ON24IntegrationEventURL" id="_ON24IntegrationEventURL" value="">
								<input type="hidden" name="_ON24IntegrationEventGUID" id="_ON24IntegrationEventGUID" value="">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--#include file="../_inc/footer.aspx"-->
	</div>
</body>

</html>
