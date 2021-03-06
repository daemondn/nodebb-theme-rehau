<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="top g__top">
	<div class="btn-toolbar g__btn-toolbar">
		<div class="pull-left g__pull-left">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary g__btn g__btn-primary g__new-topic-button">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary g__btn g__btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
		<div class="g__flex-class-aline">
			<!-- IMPORT partials/category-filter.tpl -->

			<div class="btn-group g__btn-group pull-right g__pull-right <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
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

			<div class="btn-group g__btn-group pull-right g__pull-right <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
			<div type="button" class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown">
			{selectedTerm.name} <span class="caret g__caret"></span>
			</div>
			<ul class="dropdown-menu g__dropdown-menu" role="menu">
				<!-- BEGIN terms -->
				<li role="presentation" class="category g__category">
					<a role="menu-item" href="{config.relative_path}/{terms.url}"><i class="fa fa-fw <!-- IF terms.selected -->fa-check<!-- ENDIF terms.selected -->"></i>{terms.name}</a>
				</li>
				<!-- END terms -->
			</ul>
		</div>
		</div>
	</div>

	<hr class="hidden-xs g__hidden-xs"/>

	<div class="category g__category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning g__alert g__alert-warning"  id="category-no-topics">[[top:no_top_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>