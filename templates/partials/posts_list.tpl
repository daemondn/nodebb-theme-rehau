<ul component="posts" class="posts-list g__posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item row g__posts-list-item g__row<!-- IF posts.deleted --> deleted<!-- ELSE --><!-- IF posts.topic.deleted --> deleted<!-- ENDIF posts.topic.deleted --><!-- ENDIF posts.deleted -->" data-pid="{posts.pid}" data-uid="{posts.uid}">
		<div class="col-lg-11 col-sm-10 col-xs-9 post-body g__col-lg-11 g__col-sm-10 g__col-xs-9 g__post-body">
			<a class="topic-title g__topic-title" href="{config.relative_path}/post/{posts.pid}">
				<!-- IF !posts.isMainPost -->RE: <!-- ENDIF !posts.isMainPost -->{posts.topic.title}
			</a>

			<div component="post/content" class="content g__content">
				{posts.content}
			</div>

			<small class="topic-category g__topic-category"><a href="{config.relative_path}/category/{posts.category.slug}">[[global:posted_in, {posts.category.name}]]</a></small>

			<div class="post-info g__post-info">
				<a href="{config.relative_path}/user/{posts.user.userslug}">
					<!-- IF posts.user.picture -->
					<img title="{posts.user.username}" class="img-rounded user-img g__img-rounded g__user-img" src="{posts.user.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img g__user-icon g__user-img" style="background-color: {posts.user.icon:bgColor};" title="{posts.user.username}">{posts.user.icon:text}</div>
					<!-- ENDIF posts.user.picture -->
				</a>

				<div class="post-author g__post-author">
					<a href="{config.relative_path}/user/{posts.user.userslug}">{posts.user.username}</a><br />
					<span class="timeago g__timeago" title="{posts.timestampISO}"></span>
				</div>
			</div>
		</div>
	</li>
	<!-- END posts -->
</ul>
<div component="posts/loading" class="loading-indicator text-center hidden g__loading-indicator g__text-center g__hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>