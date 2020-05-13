<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->
	<h2 class="g__blocks-title">[[user:consent.title]]</h2>
	<p class="lead g__lead">[[user:consent.lead]]</p>
	<p>[[user:consent.intro]]</p>

	<hr />

	<div class="row g__row">
		<div class="col-sm-6 g__col-sm-6">
			<!-- IF gdpr_consent -->
			<div class="alert alert-success g__alert g__alert-success">
				<i class="fa fa-check pull-right fa-3x"></i>
				[[user:consent.received]]
			</div>
			<!-- ELSE -->
			<div class="alert alert-warning g__alert g__alert-warning" >
				[[user:consent.not_received]]
				<br /><br />
				<div class="text-center g__text-center">
					<button class="btn g__btn btn-warning g__btn-warning" data-action="consent">[[user:consent.give]]</button>
				</div>
			</div>
			<!-- END -->
			<div class="panel panel-default g__panel g__panel-default">
				<div class="panel-body g__panel-body">
					<p>[[user:consent.email_intro]]</p>
					<!-- IF digest.enabled -->
					<p>[[user:consent.digest_frequency, {digest.frequency}]]</p>
					<!-- ELSE -->
					[[user:consent.digest_off]]
					<!-- END -->

					<div class="text-center g__text-center">
						<a class="btn btn-default g__btn g__btn-default" href="./settings">
							<i class="fa fa-cog"></i>
							[[pages:account/settings]]
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 g__col-sm-6">
			<div class="panel panel-default g__panel g__panel-default">
				<div class="panel-body g__panel-body">
					<p><strong>[[user:consent.right_of_access]]</strong></p>
					<p>[[user:consent.right_of_access_description]]</p>
					<p><strong>[[user:consent.right_to_rectification]]</strong></p>
					<p>[[user:consent.right_to_rectification_description]]</p>
					<p><strong>[[user:consent.right_to_erasure]]</strong></p>
					<p>[[user:consent.right_to_erasure_description]]</p>
					<p><strong>[[user:consent.right_to_data_portability]]</strong></p>
					<p>[[user:consent.right_to_data_portability_description]]</p>

					<div class="btn-group-vertical btn-block g__btn-group-vertical g__btn-block">
						<a class="btn btn-default g__btn g__btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/profile">
							<i class="fa fa-download"></i> [[user:consent.export_profile]]
						</a>
						<a class="btn btn-default g__btn g__btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/posts">
							<i class="fa fa-download"></i> [[user:consent.export_posts]]
						</a>
						<a class="btn btn-default g__btn g__btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/uploads">
							<i class="fa fa-download"></i> [[user:consent.export_uploads]]
						</a>
					</div>
				</div>
			</div>
	</div>
</div>