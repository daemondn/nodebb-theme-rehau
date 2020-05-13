<div class="g__topic-browsing-users" component="topic/browsing-users">
	<!-- BEGIN browsingUsers -->
	<div class="pull-left g__pull-left">
		<a href="<!-- IF browsingUsers.userslug -->{config.relative_path}/user/{browsingUsers.userslug}<!-- ELSE -->#<!-- ENDIF browsingUsers.userslug -->">
			<!-- IF browsingUsers.picture -->
			<img class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" component="user/picture" data-uid="{browsingUsers.uid}" src="{browsingUsers.picture}" align="left" itemprop="image" title="{browsingUsers.username}"/>
			<!-- ELSE -->
			<div class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" component="user/picture" data-uid="{browsingUsers.uid}" title="{browsingUsers.username}" style="background-color: {browsingUsers.icon:bgColor};">{browsingUsers.icon:text}</div>
			<!-- ENDIF browsingUsers.picture -->
		</a>
	</div>
	<!-- END browsingUsers -->
</div>