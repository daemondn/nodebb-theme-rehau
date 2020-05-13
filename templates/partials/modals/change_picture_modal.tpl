<div class="row g__row">
	<div class="col-xs-6 col-sm-8 col-md-6 g__col-xs-6 g__col-sm-8 g__col-md-6">
		<div class="list-group media g__list-group g__media">
			<button type="button" class="list-group-item g__list-group-item" data-type="default">
				<div class="media-left g__media-left">
					<!-- IF defaultAvatar -->
					<img class="media-object g__media-object" src="{defaultAvatar}"  />
					<!-- ELSE -->
					<div class="user-icon media-object g__user-icon g__media-object" style="background-color: {icon.bgColor};">{icon.text}</div>
					<!-- ENDIF defaultAvatar -->
				</div>
				<div class="media-body g__media-body">
					<h4 class="media-heading g__media-heading">[[user:default_picture]]</h4>
				</div>
			</button>
			<!-- BEGIN pictures -->
			<button type="button" class="list-group-item g__list-group-item" data-type="{pictures.type}">
				<div class="media-left g__media-left">
					<img class="media-object g__media-object" src="{pictures.url}" title="{pictures.text}" />
				</div>
				<div class="media-body g__media-body">
					<h4 class="media-heading g__media-heading">{pictures.text}</h4>
				</div>
			</button>
			<!-- END pictures -->
		</div>
	</div>
	<div class="col-xs-6 col-sm-4 col-md-6 g__col-xs-6 g__col-sm-4 g__col-md-6">
		<div class="btn-group-vertical btn-block g__btn-group-vertical g__btn-block" role="group">
			<!-- IF allowProfileImageUploads -->
			<button type="button" class="btn btn-default g__btn g__btn-default" data-action="upload">
				<span class="hidden-xs hidden-sm g__hidden-xs g__hidden-sm">
					[[user:upload_new_picture]]
				</span>
				<span class="visible-xs-inline visible-sm-inline g__visible-xs-inline g__visible-sm-inline">
					<i class="fa fa-plus g__fa-plus"></i>
					<i class="fa fa-upload g__fa-upload"></i>
				</span>
			</button>
			<!-- ENDIF allowProfileImageUploads -->
			<button type="button" class="btn btn-default g__btn g__btn-default" data-action="upload-url">
				<span class="hidden-xs hidden-sm g__hidden-xs g__hidden-sm">
					[[user:upload_new_picture_from_url]]
				</span>
				<span class="visible-xs-inline visible-sm-inline g__visible-xs-inline g__visible-sm-inline">
					<i class="fa fa-plus g__fa-plus"></i>
					<i class="fa fa-link g__fa-link"></i>
				</span>
			</button>
			<!-- IF uploaded -->
			<button type="button" class="btn btn-default g__btn g__btn-default" data-action="remove-uploaded">
				<span class="hidden-xs hidden-sm g__hidden-xs g__hidden-sm">
					[[user:remove_uploaded_picture]]
				</span>
				<span class="visible-xs-inline visible-sm-inline g__visible-xs-inline g__visible-sm-inline">
					<i class="fa fa-picture-o g__fa-picture-o"></i>
					<i class="fa fa-long-arrow-right g__fa-long-arrow-right"></i>
					<i class="fa fa-trash-o g__fa-trash-o"></i>
				</span>
			</button>
			<!-- ENDIF uploaded -->
		</div>
	</div>
</div>