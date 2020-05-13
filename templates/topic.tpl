<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="row g__row">
	<div class="topic g__topic <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">

		<h1 component="post/header" class="hidden-xs g__hidden-xs" itemprop="name">
			<span class="g__pull-left g__thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]"></span>
			<span class="g__pull-left g__lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></span>
			<span class="g__pull-left g__arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="[[topic:moved]]"></span>
			<!-- BEGIN icons -->@value<!-- END icons -->

			<span class="topic-title g__topic-title" component="topic/title">{title}</span>
		</h1>

		<!-- IF merger -->
		<div component="topic/merged/message" class="alert alert-warning clearfix g__alert g__alert-warning g__clearfix">
			<span class="pull-left g__pull-left">[[topic:merged_message, {mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
			<span class="pull-right g__pull-right">
				<a href="{config.relative_path}/user/{merger.userslug}">
					<strong>{merger.username}</strong>
				</a>
				<small class="timeago g__timeago" title="{mergedTimestampISO}"></small>
			</span>
		</div>
		<!-- ENDIF merger -->

		<div component="topic/deleted/message" class="alert g__alert alert-warning g__alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted --> clearfix g__clearfix">
			<span class="pull-left g__pull-left">[[topic:deleted_message]]</span>
			<span class="pull-right g__pull-right">
				<!-- IF deleter -->
				<a href="{config.relative_path}/user/{deleter.userslug}">
					<strong>{deleter.username}</strong>
				</a>
				<small class="timeago g__timeago" title="{deletedTimestampISO}"></small>
				<!-- ENDIF deleter -->
			</span>
		</div>
		<ul component="topic" class="posts g__posts" data-tid="{tid}" data-cid="{cid}">
			<!-- BEGIN posts -->
				<li component="post" class=" g__topic-topic <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" id="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
					<!-- IF !posts.index -->
					<div class="post-bar-placeholder g__post-bar-placeholder"></div>
					<!-- ENDIF !posts.index -->
				</li>
			<!-- END posts -->
		</ul>

		<!-- IF config.enableQuickReply -->
		<!-- IMPORT partials/topic/quickreply.tpl -->
		<!-- ENDIF config.enableQuickReply -->

		<div class="post-bar g__post-bar">
			<!-- IMPORT partials/post_bar.tpl -->
		</div>

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

		<div class="visible-xs visible-sm pagination-block text-center g__visible-xs g__visible-sm g__pagination-block g__text-center">
			<div class="progress-bar g__progress-bar"></div>
			<div class="wrapper g__wrapper">
				<div class="fa fa-2x fa-angle-double-up g__fa-angle-double-up pointer fa-fw pagetop g__pagetop"></div>
				<div class="fa fa-2x fa-angle-up g__fa-angle-up pointer fa-fw pageup g__pageup"></div>
				<span class="pagination-text g__pagination-text"></span>
				<div class="fa fa-2x fa-angle-down g__fa-angle-down pointer fa-fw pagedown g__pagedown"></div>
				<div class="fa fa-2x fa-angle-double-down g__fa-angle-double-down pointer fa-fw pagebottom g__pagebottom"></div>
			</div>
		</div>
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 g__col-lg-3 g__col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div class="g__topic-footer" widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
