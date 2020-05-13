<ul component="category" class="topic-list g__topic-list" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li component="category/topic" class="row clearfix category-item g__row g__clearfix g__category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{function.stripTags, title}">

		<div class="col-md-6 col-sm-9 col-xs-10 content g__col-md-6 g__col-sm-9 g__col-xs-10 g__content">
			<div class="avatar pull-left g__avatar g__pull-left" title="{topics.user.username}">
				<!-- IF showSelect -->
				<div class="select g__select" component="topic/select">
					<!-- IF topics.thumb -->
					<img src="{topics.thumb}" class="user-img g__user-img" />
					<!-- ELSE -->
					<!-- IF topics.user.picture -->
					<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}" class="user-img g__user-img" />
					<!-- ELSE -->
					<div class="user-icon g__user-icon" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</div>
					<!-- ENDIF topics.user.picture -->
					<!-- ENDIF topics.thumb -->
					<i class="fa fa-check"></i>
				</div>
				<!-- ENDIF showSelect -->

				<!-- IF !showSelect -->
				<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->" class="pull-left g__pull-left">
					<!-- IF topics.thumb -->
					<img src="{topics.thumb}" class="user-img g__user-img" />
					<!-- ELSE -->
					<!-- IF topics.user.picture -->
					<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}" class="user-img g__user-img" />
					<!-- ELSE -->
					<div class="user-icon g__user-icon" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</div>
					<!-- ENDIF topics.user.picture -->
					<!-- ENDIF topics.thumb -->
				</a>
				<!-- ENDIF !showSelect -->

			</div>

			<h2 component="topic/header" class="title g__title">
				<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->" title="[[topic:pinned]]"></i>
				<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->" title="[[topic:locked]]"></i>
				<i component="topic/moved" class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->" title="[[topic:moved]]"></i>
				<!-- BEGIN icons -->@value<!-- END icons -->

				<!-- IF !topics.noAnchor -->
				<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->" itemprop="url">{topics.title}</a>
				<!-- ELSE -->
				<span>{topics.title}</span><br />
				<!-- ENDIF !topics.noAnchor -->
				<div class="g__topics_list-flex">
					<!-- IF !template.category -->

					<small>
						<a href="{config.relative_path}/category/{topics.category.slug}"><span class="fa-stack fa-lg g__fa-stack g__fa-lg" style="{function.generateCategoryBackground, topics.category}"><i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span> {topics.category.name}</a> /
					</small>
					<!-- ENDIF !template.category -->

					<!-- IF topics.tags.length -->
					<span class="tag-list hidden-xs g__tag-list g__hidden-xs">
						<!-- BEGIN tags -->
						<a href="{config.relative_path}/tags/{topics.tags.value}"><span class="tag" style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.valueEscaped}</span></a>
						<!-- END tags -->
					</span>
					<!-- ENDIF topics.tags.length -->

					<small class="hidden-xs g__hidden-xs"><span class="timeago g__timeago" title="{topics.timestampISO}"></span> &bull; <a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->">{topics.user.username}</a></small>
				</div>
			</h2>
		</div>

		<div class="mobile-stat col-xs-2 visible-xs text-right g__mobile-stat g__col-xs-2 g__visible-xs g__text-right">
			<span class="human-readable-number g__human-readable-number">сообщений {topics.postcount}</span> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"></a>
		</div>

		<div class="col-md-1 hidden-xs stats stats-votes g__col-md-1 g__hidden-sm g__hidden-xs g__stats g__stats-votes">
			<!-- IF !reputation:disabled -->
			<span class="human-readable-number g__human-readable-number" title="{topics.votes}">{topics.votes}</span><br />
			<small>[[global:votes]]</small>
			<!-- END -->
		</div>

		<div class="col-md-1 hidden-xs stats stats-postcoun g__stats-postcount g__col-md-1 g__hidden-sm g__hidden-xs g__stats">
			<span class="human-readable-number g__human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
			<small>[[global:posts]]</small>
		</div>

		<div class="col-md-1 hidden-xs stats stats-viewcount g__stats-viewcount g__col-md-1 g__hidden-sm g__hidden-xs g__stats">
			<span class="human-readable-number g__human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
			<small>[[global:views]]</small>
		</div>

		<div class="col-md-3 col-sm-3 teaser hidden-xs g__col-md-3 g__col-sm-3 g__teaser g__hidden-xs" component="topic/teaser">
			<div class="card g__card" style="border-color: {topics.category.bgColor}">
				<!-- IF topics.unreplied -->
				<p class="g__p-no-replies">
					[[category:no_replies]]
				</p>
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<a class="g__img-right" href="{config.relative_path}/user/{topics.teaser.user.userslug}">
					<!-- IF topics.teaser.user.picture -->
					<img title="{topics.teaser.user.username}" class="user-img g__user-img" src="{topics.teaser.user.picture}" />
					<!-- ELSE -->
					<span title="{topics.teaser.user.username}" class="user-icon user-img g__user-icon g__user-img" style="background-color: {topics.teaser.user.icon:bgColor};">{topics.teaser.user.icon:text}</span>
					<!-- ENDIF topics.teaser.user.picture -->
				</a>
				<p>
					<a class="permalink g__permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago g__timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
					<span class="post-content g__post-content">
						{topics.teaser.content}
					</span>
				</p>

				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	<!-- END topics -->
</ul>
