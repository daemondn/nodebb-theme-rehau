<div class="row g__row">
	<div class="col-sm-4 col-md-3 g__col-sm-4 g__col-md-3">
		<!-- IMPORT partials/flags/filters.tpl -->
	</div>
	<div class="col-sm-8 col-md-9 g__col-sm-8 g__col-md-9">
		<div class="text-center g__text-center">
			<div class="panel panel-default g__panel g__panel-default">
				<div class="panel-body g__panel-body">
					<div><canvas id="flags:daily" height="250"></canvas></div>
					<p>

					</p>
				</div>
				<div class="panel-footer g__panel-footer"><small>Daily flags</small></div>
			</div>
		</div>

		<!-- IF hasFilter -->
		<div class="alert alert-warning g__alert g__alert-warning" >
			<p class="pull-right g__pull-right">
				<a href="{config.relative_path}/flags?reset=1">[[flags:filter-reset]]</a>
			</p>
			[[flags:filter-active]]
		</div>
		<!-- ENDIF hasFilter -->
		<table class="table table-striped table-hover g__table g__table-striped g__table-hover" component="flags/list">
			<thead>
				<tr>
					<th>[[flags:state]]</th>
					<th></th>
					<th><span class="hidden-xs g__hidden-xs">[[flags:reporter]] </span><i class="fa fa-user-plus"></i></th>
					<th><span class="hidden-xs g__hidden-xs">[[flags:reported-at]] </span><i class="fa fa-clock-o"></i></th>
				</tr>
			</thead>
			<tbody>
				<!-- IF !flags.length -->
				<tr>
					<td colspan="4">
						<div class="alert alert-success text-center g__alert g__alert-success g__text-center">
							[[flags:no-flags]]
						</div>
					</td>
				</tr>
				<!-- ENDIF !flags.length -->
				<!-- BEGIN flags -->
				<tr data-flag-id="{../flagId}">
					<td><span class="label g__label label-{../labelClass}">[[flags:state-{../state}]]</span></td>
					<td>
						<a href="{config.relative_path}/flags/{../flagId}">
							<strong>{../target_readable}</strong> &mdash; <span component="flags/list/description">{../description}</span>
						</a>
					</td>
					<td>
						<!-- IF ../reporter.picture -->
						<img class="avatar avatar-sm g__avatar g__avatar-sm" src="{../reporter.picture}" />
						<!-- ELSE -->
						<div class="avatar avatar-sm g__avatar g__avatar-sm" style="background-color: {../reporter.icon:bgColor};">{../reporter.icon:text}</div>
						<!-- ENDIF ../reporter.picture -->
						{../reporter.username}
					</td>
					<td><span class="timeago g__timeago" title="{../datetimeISO}"></span></td>
				</tr>
				<!-- END flags -->
			</tbody>
		</table>

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>
