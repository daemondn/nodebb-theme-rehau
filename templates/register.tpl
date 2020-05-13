<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row register g__register">
	<div class="{register_window:spansize} g__register-spansize">
		<div class="register-block g__register-block">
			<div class="g__alert g__alert-danger alert alert-danger<!-- IF !error --> hidden<!-- ENDIF !error -->" id="register-error-notify" >
				<strong class="g__alert-strong">[[error:registration-error]]</strong>
				<p class="g__alert-p">{error}</p>
			</div>
			<form component="register/local" class="form-horizontal g__form-horizontal" role="form" action="{config.relative_path}/register" method="post">
				<div class="form-group g__form-group">
					<label for="email" class="g__col-lg-4 g__control-label">[[register:email_address]]</label>
					<div class="col-lg-8  g__col-lg-8">
						<input class="form-control g__form-control" type="email" placeholder="[[register:email_address_placeholder]]" name="email" id="email" autocorrect="off" autocapitalize="off" />
						<span class="register-feedback g__register-feedback" id="email-notify"></span>
						<span class="register-feedback g__register-feedback">[[register:help.email]]</span>
					</div>
				</div>
				<div class="form-group g__form-group">
					<label for="username" class="g__col-lg-4 g__control-label">[[register:username]]</label>
					<div class="col-lg-8  g__col-lg-8">
						<input class="form-control g__form-control" type="text" placeholder="[[register:username_placeholder]]" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="off" />
						<span class="register-feedback g__register-feedback" id="username-notify"></span>
						<span class="help-block g__help-block">[[register:help.username_restrictions, {minimumUsernameLength}, {maximumUsernameLength}]]</span>
					</div>
				</div>
				<div class="form-group g__form-group">
					<label for="password" class="g__col-lg-4 g__control-label">[[register:password]]</label>
					<div class="col-lg-8  g__col-lg-8">
						<input class="form-control g__form-control" type="password" placeholder="[[register:password_placeholder]]" name="password" id="password" />
						<span class="register-feedback g__register-feedback" id="password-notify"></span>
						<span class="help-block g__help-block">[[register:help.minimum_password_length, {minimumPasswordLength}]]</span>
					</div>
				</div>
				<div class="form-group g__form-group">
					<label for="password-confirm" class="g__col-lg-4 g__control-label">[[register:confirm_password]]</label>
					<div class="col-lg-8  g__col-lg-8">
						<input class="form-control g__form-control" type="password" placeholder="[[register:confirm_password_placeholder]]" name="password-confirm" id="password-confirm" />
						<span class="register-feedback g__register-feedback" id="password-confirm-notify"></span>
					</div>
				</div>

				<!-- BEGIN regFormEntry -->
				<div class="form-group g__form-group">
					<label for="register-{regFormEntry.styleName}" class="g__col-lg-4 g__control-label">{regFormEntry.label}</label>
					<div id="register-{regFormEntry.styleName}" class="col-lg-8  g__col-lg-8">
						{{regFormEntry.html}}
					</div>
				</div>
				<!-- END regFormEntry -->

				<div class="form-group g__form-group">
					<div class="col-lg-offset-4 g__col-lg-offset-4 col-lg-8 g__col-lg-8">
						<button class="btn btn-primary btn-lg btn-block g__btn g__btn-primary g__btn-lg g__btn-block" id="register" type="submit">[[register:register_now_button]]</button>
					</div>
				</div>
				<input class="g__register-input g__register-ref" id="referrer" type="hidden" name="referrer" value="" />
				<input class="g__register-input g__register-token" id="token" type="hidden" name="token" value="" />
				<input class="g__register-input g__register-noscript" id="noscript" type="hidden" name="noscript" value="true" />
				<input class="g__register-input g__register-hidden" type="hidden" name="_csrf" value="{config.csrf_token}" />
			</form>
		</div>
	</div>

	<!-- IF alternate_logins -->
	<div class="col-md-6 g__col-md-6">
		<div class="alt-register-block g__alt-register-block">
			<h4 class="g__register-blog-title">[[register:alternative_registration]]</h4>
			<ul class="alt-logins g__alt-logins">
				<!-- BEGIN authentication -->
				<li class="{authentication.name} g__register-blog-li"><a rel="nofollow noopener noreferrer" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></i></a></li>
				<!-- END authentication -->
			</ul>
		</div>
	</div>
	<!-- ENDIF alternate_logins -->
</div>
