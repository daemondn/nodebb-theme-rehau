<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row g__users g__row">
		<h1 class="g__groups-title" g__groups-title>[[pages:{template.name}, {username}]]</h1>

		<ul id="users-container" class="users-container g__users-container" data-nextstart="{nextStart}">
			<!-- IMPORT partials/users_list.tpl -->
		</ul>

		<!-- IF !users.length -->
		<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center">[[user:has_no_follower]]</div>
		<!-- ENDIF !users.length -->

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>