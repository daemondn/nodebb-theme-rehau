<div class="card g__card" style="border-color: {../bgColor}">
	<!-- BEGIN posts -->
	<!-- IF @first -->
	<div class="g__lastpost-container" component="category/posts">
		<a href="{config.relative_path}/user/{../user.userslug}">
			<!-- IF ../user.picture -->
			<img class="user-img g__user-img" title="{../user.username}" alt="{../user.username}" src="{../user.picture}">
			<!-- ELSE -->
			<span class="user-icon user-img g__user-icon g__user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
			<!-- ENDIF ../user.picture -->
		</a>
		<p>
			<a class="permalink g__permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<small class="timeago g__timeago" title="{../timestampISO}"></small>
			</a>
			<span class="post-content g__post-content g__lastpost-mod">{../content}</span>
		</p>
	</div>
	<!-- ENDIF @first -->
	<!-- END posts -->

	<!-- IF !../posts.length -->
	<div class="g__category-posts" component="category/posts">
		<div class="post-content g__post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
