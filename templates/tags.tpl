<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="tags g__tags">
	<h1 class="categories-title g__categories-title">[[pages:tags]]</h1>
	<!-- IF displayTagSearch -->
	<!-- IF tags.length -->
	<div class="row g__row">
		<div class="col-lg-12 g__col-lg-12">
			<div class="input-group g__input-group">
				<label class="g__label-search">
					<p>Поиск</p>
				<input type="text" class="form-control g__form-control" id="tag-search">
				<span class="input-group-addon search-button g__input-group-addon g__search-button"><i class="fa fa-search"></i></span>
				</label>
			</div>
		</div>
	</div>
	<!-- ENDIF tags.length -->
	<!-- ENDIF displayTagSearch -->

	<!-- IF !tags.length -->
	<div class="alert alert-warning g__alert g__alert-warning" >[[tags:no_tags]]</div>
	<!-- ENDIF !tags.length -->

	<div class="category row g__category g__row">
		<div class="col-md-12 g__col-md-12 clearfix g__clearfix tag-list g__tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>
