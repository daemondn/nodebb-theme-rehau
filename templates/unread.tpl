<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="unread g__unread">
	<div class="btn-toolbar g__btn-toolbar">
		<div class="pull-left g__pull-left">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary g__btn g__btn-primary g__new-topic-button">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary g__btn g__btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
		<div class="g__flex-class-aline">
			<div class="markread g__markread btn-group g__btn-group pull-right g__pull-right category-dropdown-container g__category-dropdown-container bottom-sheet g__bottom-sheet<!-- IF !topics.length --> hidden<!-- ENDIF !topics.length -->">
				<div type="button" class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown">
					[[unread:mark_as_read]] <span class="caret g__caret"></span>
				</div>
				<ul class="dropdown-menu category-dropdown-menu g__dropdown-menu g__category-dropdown-menu" role="menu">

					<li role="presentation">
						<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
					</li>

					<li role="presentation">
						<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
					</li>
					<li class="divider g__divider"></li>
					<!-- BEGIN categories -->
					<li role="presentation" class="category g__category" data-cid="{categories.cid}">
						<a role="menu-item" href="#">{categories.level}{categories.name}</a>
					</li>
					<!-- END categories -->
				</ul>
			</div>

			<!-- IMPORT partials/category-filter.tpl -->

			<div class="btn-group pull-right bottom-sheet g__btn-group g__pull-right g__bottom-sheet">
			<div type="button" class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown">
			{selectedFilter.name} <span class="caret g__caret"></span>
			</div>
			<ul class="dropdown-menu g__dropdown-menu" role="menu">
				<!-- BEGIN filters -->
				<li role="presentation" class="category g__category">
					<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				<!-- END filters -->
			</ul>
		</div>
		</div>
	</div>

	<hr class="hidden-xs g__hidden-xs"/>

	<div class="category g__category">
		<div id="category-no-topics" class="alert alert-warning g__alert g__alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide g__alert g__alert-warning g__hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide g__btn g__btn-primary g__hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
