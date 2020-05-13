
<!-- IF !notifications.length -->
<li class="no-notifs g__no-notifs"><a href="#">[[notifications:no_notifs]]</a></li>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<li class="{notifications.readClass}" data-nid="{notifications.nid}" data-path="{config.relative_path}{notifications.path}" <!-- IF notifications.pid --> data-pid="{notifications.pid}"<!-- ENDIF notifications.pid --><!-- IF notifications.tid --> data-tid="{notifications.tid}"<!-- ENDIF notifications.tid -->>
	<!-- IF notifications.image -->
	<!-- IF notifications.from -->
	<a href="{config.relative_path}/user/{notifications.user.userslug}"><img class="pull-left user-img avatar avatar-md avatar-rounded g__pull-left g__user-img g__avatar g__avatar-md g__avatar-rounded"src="{notifications.image}" /></a>
	<!-- ENDIF notifications.from -->
	<!-- ELSE -->
	<a href="{config.relative_path}/user/{notifications.user.userslug}"><div class="pull-left avatar avatar-md avatar-rounded g__pull-left g__avatar g__avatar-md g__avatar-rounded" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div></a>
	<!-- ENDIF notifications.image -->

	<div class="pull-right mark-read g__pull-right g__mark-read" aria-label="Mark Read"></div>
	<a href="{config.relative_path}{notifications.path}">
		<span class="pull-right relTime g__pull-right g__relTime">{notifications.timeago}</span>
		<span class="text g__text">{notifications.bodyShort}</span>
	</a>
	<div class="clear g__clear"></div>
</li>
<!-- END notifications -->
