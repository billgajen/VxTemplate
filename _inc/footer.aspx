<footer class="row">
	<div class="row-content">
		<div class="col-sm-3 col-md-2">
			<p>&copy; Wunderbar</p>
		</div>
		<div class="col-sm-9 col-md-10 vx_menu vx_include_footer footer-nav" id="men_02">
			<!--#include file="../_inc/footer-menu.aspx"-->
		</div>
	</div>
</footer>
<div class="site-search-form">
	<form method="get" action="/search/searchResult.aspx" accept-charset="utf-8">
		<fieldset>
			<div class="form-group">
				<input class="form-control default-value" placeholder="Keyword" type="text" name="searchValue" value="<%=Request.QueryString[" searchValue "]%>" maxlength="100" />
			</div>
		</fieldset>
		<div class="form-group">
			<button class="btn btn-primary btn-md branded_button pull-right" type="submit">Search &raquo;</button>
		</div>
		<div class="close-button"><i class="icon icon-close"></i></div>
	</form>
</div>

<script type="text/javascript" src="/_js/plugins/lightbox.js"></script>
