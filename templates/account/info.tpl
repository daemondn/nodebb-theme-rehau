<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->
	<h1 class="categories-title g__categories-title">Личная информация</h1>
	<div class="row g__row g__info-wrapper">
		<div class="col-sm-6 g__col-sm-6 g__info-left">
			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">[[global:recentips]]</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<ul class="g__info-list">
						<!-- BEGIN ips -->
						<li class="g__info-list-item">@value</li>
						<!-- END ips -->
					</ul>
				</div>
			</div>

			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">[[user:info.username-history]]</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<ul class="list-group g__list-group g__info-list-group">
						<!-- BEGIN usernames -->
						<li class="list-group-item g__list-group-item g__info-list-group-item">
							{../value}
							<small class="pull-right g__pull-right"><span class="timeago g__timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END usernames -->
					</ul>
				</div>
			</div>

			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">[[user:info.email-history]]</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<ul class="list-group g__list-group g__info-list-group">
						<!-- BEGIN emails -->
						<li class="list-group-item g__list-group-item g__info-list-group-item">
							{../value}
							<small class="pull-right g__pull-right"><span class="timeago g__timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END emails -->
					</ul>
				</div>
			</div>
		</div>
		<div class="col-sm-6 g__col-sm-6 g__info-right">
			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">[[user:info.latest-flags]]</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<!-- IF history.flags.length -->
					<ul class="recent-flags g__recent-flags g__info-recent-flags">
						<!-- BEGIN history.flags -->
						<li class="g__info-recent-flags-item">
							<p>
								<a class="title g__title" href="{config.relative_path}/post/{../pid}">{../title}</a><br />
								<span class="timestamp g__timestamp">Flagged <span class="timeago g__timeago" title="{../timestampISO}"></span> ({../timestampReadable})</span>
							</p>
						</li>
						<!-- END history.flags -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-success g__alert g__alert-success">[[user:info.no-flags]]</div>
					<!-- ENDIF history.flags.length -->
				</div>
			</div>

			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">

						[[user:info.ban-history]]

						<!-- IF !banned -->
						<!-- IF !isSelf -->
						<button class="btn btn-xs pull-right btn-danger g__btn g__btn-xs g__pull-right g__btn-danger g__info-btn-danger" component="account/ban">[[user:ban_account]]</button>
						<!-- ENDIF !isSelf -->
						<!-- ELSE -->
						<!-- IF !isSelf -->
						<button class="btn btn-xs pull-right g__btn g__btn-xs g__pull-right btn-success g__btn-success g__info-btn-success" component="account/unban">[[user:unban_account]]</button>
						<!-- ENDIF !isSelf -->
						<!-- ENDIF !banned -->
					</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<!-- IF history.bans.length -->
					<ul class="ban-history g__ban-history">
						<!-- BEGIN history.bans -->
						<li class="g__info-ban-history">
							<p class="g__info-ban-history-p">
								<a class="g__info-ban-history-a" href="{config.relative_path}/user/{history.bans.user.userslug}">
									<!-- IF history.bans.user.picture -->
									<img title="{history.bans.user.username}" class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" src="{history.bans.user.picture}" />
									<!-- ELSE -->
									<span title="{history.bans.user.username}" class="avatar avatar-sm avatar-rounded user-icon g__user-icon  g__avatar g__avatar-sm g__avatar-rounded" style="background-color: {history.bans.user.icon:bgColor};">{history.bans.user.icon:text}</span>
									<!-- ENDIF history.bans.user.picture -->
								</a>
								<span class="timestamp timeago g__timestamp g__timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
								<!-- IF ../until -->
								<span class="expiry g__expiry">[[user:info.banned-until, {../untilReadable}]]</span><br />
								<!-- ELSE -->
								<span class="expiry g__expiry">[[user:info.banned-permanently]]</span><br />
								<!-- ENDIF ../until -->
								<span class="reason g__reason"><strong>[[user:info.banned-reason-label]]</strong>: {../reason}</span>
							</p>
						</li>
						<!-- END history.bans -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-success g__alert g__alert-success">[[user:info.no-ban-history]]</div>
					<!-- ENDIF history.bans.length -->
				</div>
			</div>
			<!-- IF isAdminOrGlobalModerator -->
			<div class="panel panel-default g__panel g__panel-default g__info-block">
				<div class="panel-heading g__panel-heading g__info-heading">
					<h3 class="panel-title g__panel-title g__info-title">[[user:info.moderation-note]]</h3>
				</div>
				<div class="panel-body g__panel-body g__info-panel-body">
					<textarea component="account/moderation-note" class="form-control g__form-control g__account-moderation-note"></textarea>

					<button class="btn btn-sm pull-right btn-success g__btn g__btn-sm g__pull-right g__btn-success g__account-save-moderation-note" component="account/save-moderation-note">[[user:info.moderation-note.add]]</button>

					<div class="g__account-moderation-note-list" component="account/moderation-note/list">
						<!-- BEGIN moderationNotes -->
						<div class="clearfix g__clearfix g__info-note-list">
							<div class="icon pull-left g__icon g__pull-left">
								<a href="<!-- IF moderationNotes.user.userslug -->{config.relative_path}/user/{moderationNotes.user.userslug}<!-- ELSE -->#<!-- ENDIF moderationNotes.user.userslug -->">
									<!-- IF moderationNotes.user.picture -->
									<img class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" data-uid="{moderationNotes.user.uid}" src="{moderationNotes.user.picture}" align="left" itemprop="image" />
									<!-- ELSE -->
									<div class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" data-uid="{moderationNotes.user.uid}" style="background-color: {moderationNotes.user.icon:bgColor};">{moderationNotes.user.icon:text}</div>
									<!-- ENDIF moderationNotes.user.picture -->
								</a>
							</div>
							<div class="pull-left g__pull-left">
								<strong>
									<a href="<!-- IF moderationNotes.user.userslug -->{config.relative_path}/user/{moderationNotes.user.userslug}<!-- ELSE -->#<!-- ENDIF moderationNotes.user.userslug -->" itemprop="author" data-username="{moderationNotes.user.username}" data-uid="{moderationNotes.user.uid}">{moderationNotes.user.username}</a>
								</strong>

								<div class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block g__visible-xs-inline-block g__visible-sm-inline-block g__visible-md-inline-block g__visible-lg-inline-block">
									<span class="timeago g__timeago" title="{moderationNotes.timestampISO}"></span>
								</div>
								<br />

								<div class="content g__content">
									{moderationNotes.note}
								</div>
							</div>
						</div>
						<!-- END moderationNotes -->
					</div>
					<!-- IMPORT partials/paginator.tpl -->
				</div>
			</div>
			<!-- ENDIF isAdminOrGlobalModerator -->
		</div>
	</div>
</div>