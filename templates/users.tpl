<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="g__popular-header" widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="users g__users">
	<h1 class="categories-title g__categories-title">Участники</h1>
	<div class="row g__row">
		<div class="col-lg-6 g__col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<!-- IF displayUserSearch -->
		<div class="col-lg-3 g__col-lg-3 col-xs-9 g__col-xs-9">
			<div class="search g__search">
				<div class="input-group g__input-group">
					<input class="form-control g__form-control" id="search-user" type="text" placeholder="Введите имя пользователя"/>
					<span class="input-group-addon g__input-group-addon ">
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<ul id="users-container" class="users-container g__users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box g__users-box anon-user g__anon-user">
			<div class="user-icon g__user-icon">G</div>
			<br/>
			<div class="user-info g__user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<!-- IMPORT partials/paginator.tpl -->
</div>
