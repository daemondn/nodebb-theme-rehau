<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row g__users g__row g__user-block-container">

		<div class="col-sm-8 g__col-sm-8 col-xs-12 g__col-xs-12">
			<h2 class="g__blocks-title">Блокировки, {username}</h2>
			<ul id="users-container" class="users-container g__users-container" data-nextstart="{nextStart}">
				<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
			<!-- IMPORT partials/paginator.tpl -->
		</div>
		<div class="col-sm-4 g__col-sm-4 col-xs-12 g__col-xs-12">
			<div class="panel panel-default g__panel g__panel-default">
				<div class="panel-body g__panel-body form g__form">
					<div class="input-group g__input-group">
						<label class="g__label-search">
							<p>Поиск</p>
							<input type="text" class="form-control g__form-control" id="user-search" placeholder="Введите имя">
							<span id="search-button" class="input-group-addon search-button g__input-group-addon g__search-button"></span>
							<div class="block-edit g__block-edit">
								<!-- IF edit -->
								<!-- BEGIN edit -->
								<button class="btn g__btn btn-sm g__btn-sm btn-primary g__btn-primary pull-right g__pull-right" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
								<div class="pull-left g__pull-left">
									<a href="{config.relative_path}/uid/{../uid}">
										<!-- IF ../picture -->
										<img class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" src="{../picture}" itemprop="image" />
										<!-- ELSE -->
										<div class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div><!-- END -->{../username}
									</a>
								</div>
								<!-- END -->
								<!-- END -->
							</div>
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>