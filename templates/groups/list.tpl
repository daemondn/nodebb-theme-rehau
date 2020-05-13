<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="groups list g__groups g__list">
	<h1 class="categories-title g__categories-title">[[pages:groups]]</h1>
	<div class="row g__row">
		<div class="col-lg-8  g__col-lg-8">
			<div class="row g__row">
				<!-- IF allowGroupCreation -->
				<div class="pull-left g__pull-left">
					<button class="btn btn-primary g__btn g__btn-primary g__new-topic-button" data-action="new">[[groups:new_group]]</button>
				</div>
				<!-- ENDIF allowGroupCreation -->
				<div class="g__flex-class-aline">
					<div class="col-xs-7 col-md-5 g__col-xs-7 g__col-md-5 text-left pull-right g__text-left g__pull-right">
						<div class="input-group g__input-group">
							<label class="g__label-search">
								<p>Поиск</p>
								<input type="text" class="form-control g__form-control" name="query" value="" id="search-text">
								<span id="search-button" class="input-group-addon search-button g__input-group-addon g__search-button"></span>
							</label>
						</div>
					</div>
					<div class="col-xs-5 g__col-xs-5 col-md-3 g__col-md-3 text-left pull-right g__text-left g__pull-right">
					<select class="form-control g__form-control" id="search-sort">
						<option class="g__search-option" value="alpha">[[groups:details.group_name]]</option>
						<option class="g__search-option" value="count">[[groups:details.member_count]]</option>
						<option class="g__search-option" value="date">[[groups:details.creation_date]]</option>
					</select>
				</div>
				</div>
			</div>
		</div>
	</div>
	<div component="groups/container" class="row g__row g__groups-container" id="groups-list" data-nextstart={nextStart}>
		<!-- IF groups.length -->
		<!-- IMPORT partials/groups/list.tpl -->
		<!-- ELSE -->
		<div class="col-xs-12 g__col-xs-12">
			<div class="alert alert-warning g__alert g__alert-warning" >
			[[groups:no_groups_found]]
			</div>
		</div>
		<!-- ENDIF groups.length -->
	</div>
	<div class="col-lg-4 g__col-lg-4">

	</div>
</div>