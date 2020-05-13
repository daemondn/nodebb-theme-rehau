
<div class="notifications g__notifications">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="btn-toolbar g__btn-toolbar">
		<div class="dropdown pull-right g__dropdown g__pull-right">
			<div class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
				<i class="fa fa-eye"></i>
				<span class="caret g__caret"></span>
			</div>
			<ul class="dropdown-menu dropdown-menu-right g__dropdown-menu g__dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
				<li class="g__notifications-mark_all" role="presentation"><a role="menuitem" tabindex="-1" href="#" data-ajaxify="false" component="notifications/mark_all">[[notifications:mark_all_read]]</a></li>
			</ul>
		</div>

		<div class="dropdown pull-right g__dropdown g__pull-right">
			<div class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" type="button" data-toggle="dropdown">
				<!-- IF selectedFilter -->{selectedFilter.name}<!-- ENDIF selectedFilter --> <span class="caret g__caret"></span>
			</div>
			<ul class="dropdown-menu g__dropdown-menu" role="menu">
				<!-- BEGIN filters -->
				<!-- IF filters.separator -->
				<li role="separator" class="divider g__divider"></li>
				<!-- ELSE -->
				<li role="presentation" class="category g__category">
					<a class="g__notification-link" role="menu-item" href="{config.relative_path}/notifications?filter={filters.filter}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i> {filters.name}</a>
				</li>
				<!-- ENDIF filters.separator -->
				<!-- END filters -->
			</ul>
		</div>
	</div>

	<hr />

	<div class="alert alert-info g__alert g__alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="notifications-list g__notifications-list" data-nextstart="{nextStart}">
	<!-- BEGIN notifications -->
		<li class="g__notifications-item" data-nid="{notifications.nid}" class="{notifications.readClass}" component="notifications/item">
			<!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<a class="pull-left g__pull-left" href="{config.relative_path}/user/{notifications.user.userslug}"><img class="user-img g__user-img" src="{notifications.image}" /></a>
			<!-- ENDIF notifications.from -->
			<!-- ELSE -->
			<a class="pull-left g__pull-left" href="{config.relative_path}/user/{notifications.user.userslug}"><div class="pull-left user-icon user-img g__pull-left g__user-icon g__user-img" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div></a>
			<!-- ENDIF notifications.image -->

			<p class="g__notification-item-p">
				<a class="g__notifications-item-link" component="notifications/item/link" href="{config.relative_path}{notifications.path}">{notifications.bodyShort}</a>
			</p>
			<p class="timestamp g__timestamp">
				<span class="timeago g__timeago" title="{notifications.datetimeISO}"></span>
			</p>
		</li>
	<!-- END notifications -->
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>


