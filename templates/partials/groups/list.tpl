	<!-- BEGIN groups -->
	<div class="col-lg-4 col-md-6 col-sm-12 g__col-lg-4 g__col-md-6 g__col-sm-12" component="groups/summary" data-slug="{groups.slug}">
		<div class="panel panel-default g__panel g__panel-default">
			<a href="{config.relative_path}/groups/{groups.slug}" class="panel-heading list-cover" style="<!-- IF groups.cover:thumb:url -->background-image: url({groups.cover:thumb:url});<!-- ENDIF groups.cover:thumb:url -->">

			</a>
			<div class="panel-body g__panel-body">
				<a href="{config.relative_path}/groups/{groups.slug}" class="panel-title g__panel-title">{groups.displayName}</a>
				<ul class="members g__members">
					<!-- BEGIN members -->
					<li>
						<a href="{config.relative_path}/user/{groups.members.userslug}">
							<!-- IF groups.members.picture -->
							<img class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" src="{groups.members.picture}" title="{groups.members.username}" />
							<!-- ELSE -->
							<div class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" style="background-color: {groups.members.icon:bgColor};" title="{groups.members.username}">{groups.members.icon:text}</div>
							<!-- ENDIF groups.members.picture -->
						</a>
					</li>
					<!-- END members -->
					<!-- IF groups.truncated -->
					<li class="truncated g__truncated"><i class="fa fa-ellipsis-h"></i></li>
					<!-- ENDIF groups.truncated -->
				</ul>
			</div>
		</div>
	</div>
	<!-- END groups -->