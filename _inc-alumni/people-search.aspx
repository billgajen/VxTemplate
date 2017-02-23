<div class="people_search_form" role="search">
	<form action="/api/search/people" method="get" class="form form-inline">
		<p class="form_group">
			<b>Filter by:</b>

			<label class="sr-only" for="VxForm_Search_Surname">Filter by surname</label>
			<span class="input-group">
				<span class="input-group-addon glyphicon glyphicon-user"> </span>
				<select name="VxForm_Search_Surname" id="VxForm_Search_Surname" class="form-control">
					<option value="">Surname</option>
					<option>Swartz</option>
				</select>
			</span>

			<label class="sr-only" for="VxForm_Search_Location">Filter by location</label>
			<span class="input-group">
				<span class="input-group-addon glyphicon glyphicon-map-marker"> </span>
				<select name="VxForm_Search_Location" id="VxForm_Search_Location" class="form-control">
					<option value="">Location</option>
					<option>London</option>
				</select>
			</span>

			<label class="sr-only" for="VxForm_Search_Department">Filter by department</label>
			<span class="input-group">
				<span class="input-group-addon glyphicon glyphicon-th"> </span>
				<select name="VxForm_Search_Department" id="VxForm_Search_Department" class="form-control">
					<option value="">Department</option>
					<option>Technology</option>
				</select>
			</span>
		</p>
	</form>
</div>