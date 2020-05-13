<!-- IF !error -->
<div class="alert alert-success g__alert g__alert-success">
	<strong class="g__strong">[[notifications:email-confirmed]]</strong>
	<p class="g__confirm-p">[[notifications:email-confirmed-message]]</p>
<!-- ELSE -->
<div class="alert alert-danger g__alert g__alert-danger">
	<strong class="g__strong danger">{error}</strong>
	<p class="g__confirm-p danger">[[notifications:email-confirm-error-message]]</p>
<!-- ENDIF !error -->
	<p>
		<a class="g__a-confirm" href="{config.relative_path}/">[[notifications:back_to_home, {config.siteTitle}]]</a>
	</p>
</div>
