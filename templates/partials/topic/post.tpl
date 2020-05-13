<div class="g__post-flex-align">
	<div class="clearfix post-header g__clearfix g__post-header">
		<div class="icon pull-left g__icon g__pull-left">
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
				<!-- IF posts.user.picture -->
				<img component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" itemprop="image" />
				<!-- ELSE -->
				<div component="user/picture" data-uid="{posts.user.uid}" class="user-icon g__user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
				<!-- ENDIF posts.user.picture -->
			</a>
		</div>
		<div class="g__post-header-main-info">
			<small class="pull-left g__pull-left">
				<strong>
					<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
				</strong>

				<!-- IMPORT partials/topic/badge.tpl -->

				<!-- IF posts.user.banned -->
				<span class="label label-danger g__label g__label-danger">[[user:banned]]</span>
				<!-- ENDIF posts.user.banned -->

				<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block g__visible-xs-inline-block g__visible-sm-inline-block g__visible-md-inline-block g__visible-lg-inline-block">
					<a class="permalink g__permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago g__timeago" title="{posts.timestampISO}"></span></a>

					<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden g__hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago g__timeago" title="{posts.editedISO}"></span></small>

					<!-- IF posts.toPid -->
					<a component="post/parent" class="btn btn-xs btn-default hidden-xs g__btn g__btn-xs g__btn-default g__hidden-xs" data-topid="{posts.toPid}" href="/post/{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
					<!-- ENDIF posts.toPid -->

					<span>
						<!-- IF posts.user.custom_profile_info.length -->
						&#124;
						<!-- BEGIN posts.user.custom_profile_info -->
						{posts.user.custom_profile_info.content}
						<!-- END posts.user.custom_profile_info -->
						<!-- ENDIF posts.user.custom_profile_info.length -->
					</span>
				</span>
			</small>
			<div class="content g__content" component="post/content" itemprop="text">
			{posts.content}
		</div>
		</div>
	</div>
	<div class="clearfix g__clearfix post-footer g__post-footer g__post-control-crumbs">
	<!-- IF posts.user.signature -->
	<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature g__post-signature">{posts.user.signature}</div>
	<!-- ENDIF posts.user.signature -->

	<small class="pull-right g__pull-right">
		<span class="post-tools g__post-tools">
			<a component="post/reply" href="#" class="no-select g__no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
			<a component="post/quote" href="#" class="no-select g__no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
		</span>

		<!-- IF !reputation:disabled -->
		<span class="votes g__votes">
			<a class="g__post-upvote" component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>

			<span class="g__post-vote-count" component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

			<!-- IF !downvote:disabled -->
			<a class="g__post-downvote" component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->
		</span>
		<!-- ENDIF !reputation:disabled -->

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>

	<!-- IF !hideReplies -->
	<a component="post/reply-count" href="#" class="threaded-replies no-select g__threaded-replies g__no-select <!-- IF !posts.replies.count -->hidden<!-- ENDIF !posts.replies.count -->">
		<span component="post/reply-count/avatars" class="avatars g__avatars <!-- IF posts.replies.hasMore -->hasMore<!-- ENDIF posts.replies.hasMore -->">
			<!-- BEGIN posts.replies.users -->
			<!-- IF posts.replies.users.picture -->
			<span><img component="user/picture" data-uid="{posts.replies.users.uid}" title="{posts.replies.users.username}" class="avatar g__avatar" src="{posts.replies.users.picture}"  itemprop="image" /></span>
			<!-- ELSE -->
			<div component="user/picture" data-uid="{posts.replies.users.uid}" title="{posts.replies.users.username}" class="user-icon g__user-icon" style="background-color: {posts.replies.users.icon:bgColor};">{posts.replies.users.icon:text}</div>
			<!-- ENDIF posts.replies.users.picture -->
			<!-- END posts.replies.users -->
		</span>

		<span class="replies-count g__replies-count" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
		<span class="replies-last hidden-xs g__replies-last g__hidden-xs">[[topic:last_reply_time]] <span class="timeago g__timeago" title="{posts.replies.timestampISO}"></span></span>

		<div class="fa-fw fa-chevron-right g__fa-chevron-right" component="post/replies/open"></div>
		<div class="fa-fw fa-chevron-down g__fa-chevron-down hidden" component="post/replies/close"></div>
		<div class="fa-fw fa-spin fa-spinner g__fa-spin g__fa-spinner hidden g__hidden" component="post/replies/loading"></div>
		<i class="fa fa-fw fa-chevron-right" component="post/replies/open"></i>
		<i class="fa fa-fw fa-chevron-down hidden" component="post/replies/close"></i>
		<i class="fa fa-fw fa-spin fa-spinner hidden" component="post/replies/loading"></i>
	</a>
	<!-- ENDIF !hideReplies -->
</div>
</div>