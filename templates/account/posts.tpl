<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row g__row g__post-aligner">
		<h1 class="g__post-title">{title}</h1>

		<!-- IF !posts.length -->
			<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center">{noItemsFoundKey}</div>
		<!-- ENDIF !posts.length -->

		<div class="col-xs-12 g__col-xs-12">
			<!-- IMPORT partials/posts_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>