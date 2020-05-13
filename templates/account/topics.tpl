<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row g__row g__topics-wrapper">
		<h1 class="g__topics-title">{title}</h1>

		<!-- IF !topics.length -->
			<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center">{noItemsFoundKey}</div>
		<!-- ENDIF !topics.length -->

		<div class="category g__category">
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>
