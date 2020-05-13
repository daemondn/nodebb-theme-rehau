<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row g__row g__groups-wrapper">
		<h1 class="g__groups-title">[[pages:{template.name}, {username}]]</h1>
	</div>

	<div class="groups list g__groups g__list">
		<div component="groups/container" id="groups-list" class="row g__row">
			<!-- IF !groups.length -->
			<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center">[[groups:no_groups_found]]</div>
			<!-- ELSE -->
			<!-- IMPORT partials/groups/list.tpl -->
			<!-- ENDIF !groups.length -->
		</div>
	</div>
</div>