<div component="groups/container" class="groups details row g__groups g__details g__row g__group-details">
	<div component="groups/cover" style="background-image: url({group.cover:url}); background-position: {group.cover:position};">
		<!-- IF group.isOwner -->
		<div class="controls g__controls">
			<span class="upload g__upload"><i class="fa fa-fw fa-4x fa-upload g__fa-upload"></i></span>
			<span class="resize g__resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove g__remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save g__save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator g__indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF group.isOwner -->
	</div>

	<div class="col-xs-12 g__col-xs-12">
		<!-- IMPORT partials/breadcrumbs.tpl -->
	</div>

	<div class="col-lg-4 col-xs-12 g__col-lg-4 g__col-xs-12 g__group-left">
		<div class="panel panel-default g__panel g__panel-default">
			<div class="panel-heading g__panel-heading">
				<h3 class="panel-title g__panel-title g__details-group-info">
					[[groups:details.title]]
					<!-- IF group.private --><span class="label label-info g__label g__label-info">[[groups:details.private]]</span><!-- ENDIF group.private -->
					<!-- IF group.hidden --><span class="label label-info g__label g__label-info">[[groups:details.hidden]]</span>&nbsp;<!-- ENDIF group.hidden -->
				</h3>
			</div>
			<div class="panel-body g__panel-body">
				<h1>{group.displayName}</h1>
				<p>{group.descriptionParsed}</p>
				<!-- IF loggedIn -->
				<div class="pull-right g__pull-right">
					{function.membershipBtn, group}
				</div>
				<!-- ENDIF loggedIn -->
				<!-- IF isAdmin -->
				<div class="pull-right g__pull-right">
					<a href="{config.relative_path}/admin/manage/groups/{group.nameEncoded}" target="_blank" class="btn btn-info g__btn g__btn-info g__details-red">[[user:edit]]</a>
				</div>
				<!-- ENDIF isAdmin -->

			</div>
		</div>
		<div class="panel panel-default g__panel g__panel-default">
			<div class="panel-heading g__panel-heading">
				<h3 class="panel-title g__panel-title">[[groups:details.members]]</h3>
			</div>
			<div class="panel-body g__panel-body">
				<!-- IMPORT partials/groups/memberlist.tpl -->
			</div>
		</div>
		<!-- IF group.isOwner -->
		<div class="panel panel-default g__panel g__panel-default">
			<div class="panel-heading g__panel-heading">
				<h3 class="panel-title clearfix g__panel-title g__clearfix" >[[groups:details.pending]]
					<!-- IF group.pending.length -->
					<div class="btn-group pull-right g__btn-group g__pull-right">
						<div type="button" class="btn btn-default btn-sm dropdown-toggle g__btn g__btn-default g__btn-sm g__dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							[[global:more]] <span class="caret g__caret"></span>
						</div>
						<ul class="dropdown-menu g__dropdown-menu" role="menu">
							<li><a href="#" data-ajaxify="false" data-action="acceptAll">[[groups:pending.accept_all]]</a></li>
							<li><a href="#" data-ajaxify="false" data-action="rejectAll">[[groups:pending.reject_all]]</a></li>
						</ul>
					</div>
					<!-- ENDIF group.pending.length -->
				</h3>
			</div>
			<div class="panel-body g__panel-body">
				<table component="groups/pending" class="table table-striped table-hover g__table g__table-striped g__table-hover">
					<!-- IF !group.pending.length -->
					<div class="alert alert-info g__alert g__alert-info">[[groups:pending.none]]</div>
					<!-- ENDIF !group.pending.length -->
					<!-- BEGIN group.pending -->
					<tr data-uid="{group.pending.uid}">
						<td>
							<!-- IF group.pending.picture -->
							<a href="{config.relative_path}/user/{group.pending.userslug}"><img class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" src="{group.pending.picture}" /></a>
							<!-- ELSE -->
							<div class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" style="background-color: {group.pending.icon:bgColor};">{group.pending.icon:text}</div>
							<!-- ENDIF group.pending.picture -->
						</td>
						<td class="member-name g__member-name">
							<a class="g__details-member-name" href="{config.relative_path}/user/{group.pending.userslug}">{group.pending.username}</a>
						</td>
						<td class="g__details-member-btn">
							<div class="btn-group pull-right g__btn-group g__pull-right g__details-member-btn-container">
								<div type="button" class="btn btn-default btn-sm dropdown-toggle g__btn g__btn-default g__btn-sm g__dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									[[global:more]] <span class="caret g__caret"></span>
								</div>
								<ul class="dropdown-menu g__dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="accept">[[groups:pending.accept]]</a></li>
									<li><a href="#" data-ajaxify="false" data-action="reject">[[groups:pending.reject]]</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- END group.pending -->
				</table>
			</div>
		</div>
		<div class="panel panel-default g__panel g__panel-default">
			<div class="panel-heading g__panel-heading">
				<h3 class="panel-title clearfix g__panel-title g__clearfix" >
					[[groups:details.invited]]
				</h3>
			</div>
			<div class="panel-body g__panel-body g__input-details-body">
				<div class="input-group g__input-group">
					<input class="form-control g__form-control" type="text" component="groups/members/invite" placeholder="[[groups:invited.search]]"/>
					<span class="input-group-addon search-button g__input-group-addon g__search-button"></span>
				</div>

				<div class="form-group g__form-group">
					<textarea class="form-control g__form-control g__textarea-detail" component="groups/members/bulk-invite" placeholder="[[groups:bulk-invite-instructions]]"></textarea>
				</div>

				<div class="form-group g__form-group clearfix g__clearfix g__bulk-invite-wrapper">
					<button class="btn btn-default btn-sm pull-right g__btn g__btn-default g__btn-sm g__pull-right g__bulk-invite-button" component="groups/members/bulk-invite-button">[[groups:bulk-invite]]</button>
				</div>
				<table component="groups/invited" class="table table-striped table-hover g__table g__table-striped g__table-hover">
					<!-- IF !group.invited.length -->
					<div class="alert alert-info g__alert g__alert-info">[[groups:invited.none]]</div>
					<!-- ENDIF !group.invited.length -->
					<!-- BEGIN group.invited -->
					<tr data-uid="{group.invited.uid}">
						<td>
							<!-- IF group.invited.picture -->
							<a href="{config.relative_path}/user/{group.invited.userslug}"><img class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" src="{group.invited.picture}" /></a>
							<!-- ELSE -->
							<div class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" style="background-color: {group.invited.icon:bgColor};">{group.invited.icon:text}</div>
							<!-- ENDIF group.invited.picture -->
						</td>
						<td class="member-name g__member-name">
							<a href="{config.relative_path}/user/{group.invited.userslug}">{group.invited.username}</a>
						</td>
						<td>
							<div class="btn-group pull-right g__btn-group g__pull-right">
								<div type="button" class="btn btn-default btn-sm dropdown-toggle g__btn g__btn-default g__btn-sm g__dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									[[global:more]] <span class="caret g__caret"></span>
								</div>
								<ul class="dropdown-menu g__dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="rescindInvite">[[groups:invited.uninvite]]</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- END group.invited -->
				</table>
			</div>
		</div>

		<div class="panel panel-default g__panel g__panel-default g__collapse-panel">
			<div class="panel-heading pointer g__panel-heading g__pointer" data-toggle="collapse" data-target=".options">
				<h3 class="panel-title g__panel-title g__collapse-ico">
					[[groups:details.owner_options]]
				</h3>
			</div>

			<div class="panel-body options collapse g__panel-body g__options g__collapse g__collapse-main">
				<form component="groups/settings" role="form" class="g__groups-settings">
					<div class="form-group g__form-group">
						<label class="g__collapse-label" for="name">[[groups:details.group_name]]</label>
						<input <!-- IF group.system -->readonly<!-- ENDIF group.system --> class="form-control g__form-control" name="name" id="name" type="text" value="{group.displayName}" />
					</div>
					<div class="form-group g__form-group">
						<label class="g__collapse-label" for="name">[[groups:details.description]]</label>
						<textarea class="form-control g__form-control" name="description" id="description" type="text" maxlength="255">{group.description}</textarea>
					</div>
					<div class="form-group g__form-group user-title-option g__user-title-option">
						<label class="g__collapse-label" for="userTitle">[[groups:details.badge_text]]</label>
						<input component="groups/userTitleOption" class="form-control g__form-control g__groups-userTitleOption" name="userTitle" id="userTitle" type="text" maxlength="40" value="{group.userTitle}"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled --> />
					</div>

					<div class="form-group g__form-group user-title-option g__user-title-option">
						<label class="g__collapse-label-second">[[groups:details.badge_preview]]</label>
						<span class="g__label label<!-- IF !group.userTitleEnabled --> hide<!-- ENDIF !group.userTitleEnabled -->" style="background-color: {group.labelColor}"><i class="fa<!-- IF group.icon --> {group.icon}<!-- ENDIF group.icon -->"></i> <!-- IF group.userTitle -->{group.userTitle}<!-- ELSE -->{group.displayName}<!-- ENDIF group.userTitle --></span>

						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm g__groups-userTitleOption" data-action="icon-select"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled -->>[[groups:details.change_icon]]</button>
						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm g__groups-userTitleOption" data-action="color-select"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled -->>[[groups:details.change_colour]]</button>
						<input type="hidden" name="labelColor" value="<!-- IF group.labelColor -->{group.labelColor}<!-- ENDIF group.labelColor -->" />
						<input type="hidden" name="icon" value="<!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" />
						<div id="icons" class="hidden g__hidden">
							<div class="icon-container">
								<div class="row fa-icons">
									<i class="fa fa-doesnt-exist"></i>
									<!-- IMPORT partials/fontawesome.tpl -->
								</div>
							</div>
						</div>
					</div>
					<div class="checkbox g__checkbox">
						<label>
							<input name="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled -->> <strong>[[groups:details.userTitleEnabled]]</strong>
						</label>
					</div>
					<div class="checkbox g__checkbox">
						<label>
							<input name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private -->> <strong>[[groups:details.private]]</strong>
							<!-- IF !allowPrivateGroups -->
							<p class="help-block g__help-block">
								[[groups:details.private_system_help]]
							</p>
							<!-- ENDIF !allowPrivateGroups -->
							<p class="help-block g__help-block">
								[[groups:details.private_help]]
							</p>
						</label>
					</div>
					<div class="checkbox g__checkbox">
						<label>
							<input name="disableJoinRequests" type="checkbox"<!-- IF group.disableJoinRequests --> checked<!-- ENDIF group.disableJoinRequests -->> <strong>[[groups:details.disableJoinRequests]]</strong>
						</label>
					</div>
					<div class="checkbox g__checkbox">
						<label>
							<input name="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden -->> <strong>[[groups:details.hidden]]</strong>
							<p class="help-block g__help-block">
								[[groups:details.hidden_help]]
							</p>
						</label>
					</div>
					<button class="btn btn-primary g__btn g__btn-primary g__detail-btn-save" type="button" data-action="update">[[global:save_changes]]</button>
					<button class="btn btn-link btn-xs pull-right g__btn g__btn-link g__btn-xs g__pull-right g__detail-btn-delete-group" type="button" data-action="delete">[[groups:details.delete_group]]</button>
				</form>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->
		<div widget-area="left">
			<!-- BEGIN widgets.left -->
			{{widgets.left.html}}
			<!-- END widgets.left -->
		</div>
	</div>
	<div class="col-lg-8 col-xs-12 g__col-lg-8 g__col-xs-12 g__group-right">
		<div class="col-lg-11 g__col-lg-11">
			<!-- IF !posts.length -->
			<div class="alert alert-info g__alert g__alert-info">[[groups:details.has_no_posts]]</div>
			<!-- ENDIF !posts.length -->
			<!-- IMPORT partials/posts_list.tpl -->
		</div>
		<div widget-area="right">
			<!-- BEGIN widgets.right -->
			{{widgets.right.html}}
			<!-- END widgets.right -->
		</div>
	</div>
</div>
