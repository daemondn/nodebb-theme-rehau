<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix g__row g__clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 g__content g__col-xs-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="icon pull-left g__icon g__pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title g__title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description g__description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
			<!-- IF !config.hideSubCategories -->
			{function.generateChildrenCategories}
			<!-- ENDIF !config.hideSubCategories -->
		</div>
		<span class="visible-xs pull-right g__visible-xs g__pull-right">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink g__permalink" href="{../teaser.url}">
				<small class="timeago g__timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
	</div>

	<!-- IF !../link -->
	<div class="col-md-1 hidden-xs stats g__col-md-1 g__hidden-sm g__hidden-xs g__stats">
		<span class="{../unread-class} human-readable-number g__human-readable-number" title="{../totalTopicCount}">{../totalTopicCount} </span>
		<small> [[global:topics]]</small>
	</div>
	<div class="col-md-1 hidden-xs stats g__col-md-1 g__hidden-sm g__hidden-xs g__stats">
		<span class="{../unread-class} human-readable-number g__human-readable-number" title="{../totalPostCount}">{../totalPostCount} </span>
		<small> [[global:posts]]</small>
	</div>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 teaser hidden-xs g__col-md-3 g__col-sm-3 g__teaser g__hidden-xs" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
