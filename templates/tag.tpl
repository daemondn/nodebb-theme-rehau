<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="tag g__tag">
	<div class="btn-toolbar g__btn-toolbar">
		<div class="pull-left g__pull-left">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary g__btn g__btn-primary g__new-topic-button">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary g__btn g__btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
	</div>

	<hr class="hidden-xs g__hidden-xs"/>

	<!-- IF !topics.length -->
	<div class="alert alert-warning g__alert g__alert-warning" >[[tags:no_tag_topics]]</div>
	<!-- ENDIF !topics.length -->

	<div class="category g__category">
		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide g__btn g__btn-primary g__hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>

</div>
