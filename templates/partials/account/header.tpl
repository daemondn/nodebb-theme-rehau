<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="cover g__cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	<div class="avatar-wrapper g__avatar-wrapper" data-uid="{uid}">
		<!-- IF picture -->
		<img src="{picture}" class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded" />
		<!-- ELSE -->
		<div class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
		<!-- ENDIF picture -->
		<i component="user/status" class="fa fa-circle g__fa-circle status {status}" title="[[global:{status}]]"></i>

		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<button class="btn-morph fab g__btn-morph g__fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<span class="s1 g__s1"></span>
				<span class="s2 g__s2"></span>
				<span class="s3 g__s3"></span>
			</span>
		</button>
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
	</div>

	<div class="container g__container">
		<!-- IMPORT partials/account/menu.tpl -->

		<!-- IF allowCoverPicture -->
		<div class="controls g__controls">
			<span class="upload g__upload"><i class="fa fa-fw fa-4x fa-upload g__fa-upload"></i></span>
			<span class="resize g__resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove g__remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save g__save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator g__indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF allowCoverPicture -->
	</div>
</div>
