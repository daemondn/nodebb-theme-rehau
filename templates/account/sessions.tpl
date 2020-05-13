<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF sessions.length -->
	<div class="row g__row">
		<div class="col-xs-12 col-md-12 g__col-xs-12 g__col-md-12">
			<p class="lead g__lead">[[user:sessions.description]]</p>
			<hr />
			<ul class="list-group g__list-group" component="user/sessions">
				<!-- BEGIN sessions -->
				<li class="list-group-item g__list-group-item" data-uuid="{../uuid}">
					<div class="pull-right g__pull-right">
						<!-- IF isSelfOrAdminOrGlobalModerator -->
						<!-- IF !../current -->
						<button class="btn btn-xs btn-default g__btn g__btn-xs g__btn-default" type="button" data-action="revokeSession">Revoke Session</button>
						<!-- ENDIF !../current -->
						<!-- ENDIF isSelfOrAdminOrGlobalModerator -->
						{function.userAgentIcons}
						<i class="fa fa-circle g__fa-circle text-<!-- IF ../current -->success<!-- ELSE -->muted<!-- ENDIF ../current -->"></i>
					</div>
					{../browser} {../version} on {../platform}<br />
					<small class="timeago text-muted g__timeago g__text-muted" title="{../datetimeISO}"></small>
					<ul class="g__session-ul">
						<li class="g__session-li"><strong>[[global:ip_address]]</strong>: {../ip}</li>
					</ul>
				</li>
				<!-- END sessions -->
			</ul>
		</div>
	</div>
	<!-- ENDIF sessions.length -->
</div>