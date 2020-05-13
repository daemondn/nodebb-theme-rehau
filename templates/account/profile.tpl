<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="profile row g__profile g__row">
		<h1 class="categories-title g__categories-title">Участники</h1>
		<div class="avatar-wrapper g__avatar-wrapper" data-uid="{uid}">
			<!-- IF picture -->
			<img src="{picture}" class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded" />
			<!-- ELSE -->
			<div class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
			<!-- ENDIF picture -->
			<!-- IF loggedIn -->
			<!-- IF !isSelf -->
			<button class="btn-morph fab g__btn-morph g__fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<i class="s1 g__s1"></i>
				<i class="s2 g__s2"></i>
				<i class="s3 g__s3"></i>
			</span>
			</button>
			<!-- ENDIF !isSelf -->
			<!-- ENDIF loggedIn -->
		</div>
		<div class="g__profile-name-info">
			<h1 class="fullname g__fullname"><span><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span> <i component="user/status" class="fa fa-circle g__fa-circle status {status}" title="[[global:{status}]]"></i></h1>
			<h2 class="username g__username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h2>
			<!-- IF isAdminOrGlobalModeratorOrModerator -->
			<!-- IF banned -->
			<div class="text-center g__profile-text-admin">
			<!-- IF banned_until -->
			[[user:info.banned-until, {banned_until_readable}]]
			<!-- ELSE -->
			[[user:info.banned-permanently]]
			<!-- ENDIF banned_until -->
			</div>
			<!-- ENDIF banned -->
			<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->

			<!-- IF selectedGroup.length -->
			<div class="text-center g__text-center">
			<!-- BEGIN selectedGroup -->
			<!-- IF selectedGroup.slug -->
				<a href="{config.relative_path}/groups/{selectedGroup.slug}"><small class="label group-label inline-block g__label g__group-label g__inline-block" style="background-color: {selectedGroup.labelColor};"><!-- IF selectedGroup.icon --><i class="fa {selectedGroup.icon}"></i> <!-- ENDIF selectedGroup.icon -->{selectedGroup.userTitle}</small></a>
			<!-- ENDIF selectedGroup.slug -->
			<!-- END selectedGroup -->
			</div>
			<br/>
			<!-- ENDIF selectedGroup.length -->

			<!-- IF aboutme -->
			<span component="aboutme" class="text-center aboutme g__text-center g__aboutme">{aboutme}</span>
			<!-- ENDIF aboutme -->

			<div class="account-stats g__account-stats">
				<!-- IF !reputation:disabled -->
				<div class="stat g__stat">
					<div class="human-readable-number g__human-readable-number" title="{reputation}">{reputation}</div>
					<span class="stat-label g__stat-label">[[global:reputation]]</span>
				</div>
				<!-- ENDIF !reputation:disabled -->

				<div class="stat g__stat">
					<div class="human-readable-number g__human-readable-number" title="{postcount}">{postcount}</div>
					<span class="stat-label g__stat-label">[[global:posts]]</span>
				</div>

				<div class="stat g__stat">
					<div class="human-readable-number g__human-readable-number" title="{profileviews}">{profileviews}</div>
					<span class="stat-label g__stat-label">[[user:profile_views]]</span>
				</div>

				<div class="stat g__stat">
					<div class="human-readable-number g__human-readable-number" title="{followerCount}">{followerCount}</div>
					<span class="stat-label g__stat-label">[[user:followers]]</span>
				</div>

				<div class="stat g__stat">
					<div class="human-readable-number g__human-readable-number"  title="{followingCount}">{followingCount}</div>
					<span class="stat-label g__stat-label">[[user:following]]</span>
				</div>
			</div>

			<div class="text-center profile-meta g__text-center g__profile-meta">
				<div class="g__profile-wrapper">
					<span>[[user:joined]]</span>
					<strong class="timeago g__timeago" title="{joindateISO}"></strong>
				</div>
				<div class="g__profile-wrapper">
					<span>[[user:lastonline]]</span>
					<strong class="timeago g__timeago" title="{lastonlineISO}"></strong>
				</div>
			</div>
		</div>
		<!-- IMPORT partials/account/menu.tpl -->
	</div>
		<div class="row g__row">
		<div class="col-xs-12 account-block hidden g__col-xs-12 g__account-block g__hidden">
			<div class="account-picture-block text-center g__account-picture-block g__text-center" >
				<span>
					<span class="account-username g__account-username"> {username}</span>
				</span>

				<!-- IF !isSelf -->
				<!-- IF isFollowing -->
				<a component="account/unfollow" href="#" class="btn btn-warning btn-sm g__btn g__btn-warning g__btn-sm">[[user:unfollow]]</a>
				<!-- ELSE -->
				<a component="account/follow" href="#" class="btn btn-success g__btn-success btn-sm g__btn g__btn-sm">[[user:follow]]</a>
				<!-- ENDIF isFollowing -->
				<!-- ENDIF !isSelf -->
			</div>
		</div>
	</div>

	<!-- IF groups.length -->
	<div class="row g__row">
		<div class="col-xs-12 hidden g__col-xs-12 g__hidden">
			<!-- BEGIN groups -->
			<a href="{config.relative_path}/groups/{groups.slug}"><span class="label group-label inline-block g__label g__group-label g__inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
			<!-- END groups -->
		</div>
	</div>
	<!-- ENDIF groups.length -->

	<!-- IF ips.length -->
	<div class="row g__row">
		<div class="col-xs-12 hidden g__col-xs-12 g__hidden">
			<div class="panel-heading g__panel-heading">
				<h3 class="panel-title g__panel-title">[[global:recentips]]</h3>
			</div>
			<div class="panel-body g__panel-body">
			<!-- BEGIN ips -->
				<div>{ips.ip}</div>
			<!-- END ips -->
			</div>
		</div>
	</div>
	<!-- ENDIF ips.length -->

	<div class="row g__row">
		<div class="col-xs-12 g__profile-comment-main">
			<h1 class="g__profile-comment-name">[[pages:account/posts, {username}]]</h1>

			<div class="col-xs-12 g__profile-comment-body">
				<!-- IF !posts.length -->
				<div class="alert alert-warning g__alert g__alert-warning" >[[user:has_no_posts]]</div>
				<!-- ENDIF !posts.length -->
				<!-- IMPORT partials/posts_list.tpl -->
				<!-- IF config.usePagination -->
					<!-- IMPORT partials/paginator.tpl -->
				<!-- ENDIF config.usePagination -->
			</div>
		</div>
	</div>

	<div id="user-action-alert" class="alert alert-success hide g__alert g__alert-success g__hide"></div>
</div>
