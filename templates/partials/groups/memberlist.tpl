<div class="row g__row">
	<!-- IF group.isOwner -->
	<div class="col-lg-2 g__col-lg-2">
		<button component="groups/members/add" type="button" class="btn btn-primary g__btn g__btn-primary" title="[[groups:details.add-member]]"></button>
	</div>
	<!-- ENDIF group.isOwner -->
	<div class="<!-- IF group.isOwner -->col-lg-10 g__col-lg-10<!-- ELSE -->col-lg-12 g__col-lg-12<!-- ENDIF group.isOwner -->">
		<div class="input-group g__input-group">
			<input class="form-control g__form-control" type="text" component="groups/members/search" placeholder="[[global:search]]"/>
			<span class="input-group-addon search-button g__input-group-addon g__search-button"></span>
		</div>
	</div>
</div>

<table component="groups/members" class="table table-striped table-hover g__table g__table-striped g__table-hover" data-nextstart="{group.membersNextStart}">
	<tbody>
	<!-- BEGIN group.members -->
	<tr data-uid="{group.members.uid}">
		<td>
			<a href="{config.relative_path}/user/{group.members.userslug}">
				<!-- IF group.members.picture -->
				<img class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" src="{group.members.picture}" />
				<!-- ELSE -->
				<div class="avatar avatar-sm avatar-rounded g__avatar g__avatar-sm g__avatar-rounded" style="background-color: {group.members.icon:bgColor};">{group.members.icon:text}</div>
				<!-- ENDIF group.members.picture -->
			</a>
		</td>
		<td class="member-name g__member-name">
			<a class="g__memberlist-link" href="{config.relative_path}/user/{group.members.userslug}">{group.members.username}</a> <i title="[[groups:owner]]" class="fa fa-star text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>

			<!-- IF group.isOwner -->
			<div class="owner-controls btn-group pull-right g__owner-controls g__btn-group g__pull-right">
				<a class="btn btn-sm g__btn g__btn-sm g__btn-owner-star" href="#" data-ajaxify="false" data-action="toggleOwnership" title="[[groups:details.grant]]">
					<i class="fa fa-star"></i>
				</a>

				<a class="btn btn-sm g__btn g__btn-sm g__btn-owner-ban" href="#" data-ajaxify="false" data-action="kick" title="[[groups:details.kick]]">
					<i class="fa fa-ban"></i>
				</a>
			</div>
			<!-- ENDIF group.isOwner -->
		</td>
	</tr>
	<!-- END group.members -->
	</tbody>
</table>