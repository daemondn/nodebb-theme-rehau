<div class="clearfix g__clearfix">
	<div class="tags pull-left g__tags g__pull-left">
		<!-- BEGIN tags -->
		<a href="{config.relative_path}/tags/{tags.value}">
		<span class="tag-item g__tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.valueEscaped}</span>
		<span class="tag-topic-count human-readable-number g__tag-topic-count g__human-readable-number" title="{tags.score}">{tags.score}</span></a>
		<!-- END tags -->
	</div>

	<!-- IMPORT partials/topic/browsing-users.tpl -->

	<div class="topic-main-buttons pull-right g__topic-main-buttons g__pull-right">
		<span class="loading-indicator btn pull-left hidden g__loading-indicator g__btn g__pull-left g__hidden" done="0">
			<span class="hidden-xs g__hidden-xs g__fa-refresh g__fa-spin">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</span>

		<!-- IMPORT partials/topic/stats.tpl -->

		<!-- IMPORT partials/topic/reply-button.tpl -->

		<!-- IF loggedIn -->
		<button component="topic/mark-unread" class="btn btn-default g__topic-watch">
			<span class="visible-sm-inline visible-md-inline visible-lg-inline g__topic-watch-unread"> [[topic:mark_unread]]</span>
		</button>
		<!-- ENDIF loggedIn -->

		<!-- IMPORT partials/topic/watch.tpl -->

		<!-- IMPORT partials/topic/sort.tpl -->

		<div class="pull-right g__pull-right">
		<!-- IMPORT partials/thread_tools.tpl -->
		</div>
	</div>
</div>