<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header" class="g__widget-header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="row g__row">
	<h1 class="categories-title g__categories-title">{name}</h1>
	<div class="category <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length --> g__category">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<!-- IF children.length --><hr class="hidden-xs g__hidden-xs"/><!-- ENDIF children.length -->

		<div class="clearfix g__clearfix">
			<!-- IF privileges.topics:create -->
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary g__btn g__btn-primary g__new-topic-button" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				<!-- IF !loggedIn -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary g__btn g__btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF !loggedIn -->
			<!-- ENDIF privileges.topics:create -->

			<span class="pull-right g__pull-right" component="category/controls">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->
			</span>
		</div>
		<!-- IF !topics.length -->
		<!-- IF privileges.topics:create -->
		<hr class="visible-xs g__visible-xs" />
		<div class="alert alert-warning g__alert g__alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		<!-- ENDIF privileges.topics:create -->
		<!-- ENDIF !topics.length -->

		<a href="{url}">
			<div class="alert alert-warning hide g__alert g__alert-warning g__hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
	<div widget-area="sidebar" class="g__sidebar-col col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>

</div>

<div widget-area="footer" class="g__footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
