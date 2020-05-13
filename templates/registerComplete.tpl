<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row g__row">
	<div class="col-xs-12 col-sm-8 col-sm-offset-2 g__col-xs-12 g__col-sm-8 g__col-sm-offset-2">
		<p class="lead text-center g__lead g__text-center">
			[[register:interstitial.intro]]
		</p>

		<!-- IF errors.length -->
		<div class="alert alert-warning g__alert g__alert-warning" >
			<p>
				[[register:interstitial.errors-found]]
			</p>
			<ul>
				<!-- BEGIN errors -->
				<li>@value</li>
				<!-- END errors -->
			</ul>
		</div>
		<!-- ENDIF errors.length -->
	</div>
</div>

<form class="g__register-complete-form" role="form" method="post">
	<!-- BEGIN sections -->
	<div class="row g__row">
		<div class="col-xs-12 col-sm-8 col-sm-offset-2 g__col-xs-12 g__col-sm-8 g__col-sm-offset-2">
			<div class="panel panel-default g__panel g__panel-default">
				<div class="panel-body g__panel-body">
					@value
				</div>
			</div>
		</div>
	</div>
	<!-- END sections -->

	<div class="row g__row">
		<input class="g__register-complete-input" type="hidden" name="_csrf" value="{config.csrf_token}" />
		<div class="col-xs-12 col-sm-8 col-sm-offset-2 g__col-xs-12 g__col-sm-8 g__col-sm-offset-2">
			<button class="btn btn-primary btn-block g__btn g__btn-primary g__btn-block">[[topic:composer.submit]]</button>
		</div>
	</div>
</form>
<form class="g__register-complete-form" role="form" method="post" action="{config.relative_path}/register/abort">
	<p class="text-center g__text-center">
		<button class="btn btn-link g__btn g__btn-link">[[register:cancel_registration]]</button>
	</p>
</form>