<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row g__row">
	<!-- IF allowLocalLogin -->
	<div class="<!-- IF alternate_logins -->col-md-6<!-- ELSE -->col-md-12<!-- ENDIF alternate_logins --> g__login-col">
		<div class="login-block">
			<div class="alert alert-danger g__alert g__alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close g__close" data-dismiss="alert">&times;</button>
				<strong class="g__strong danger">[[login:failed_login_attempt]]</strong>
				<p class="g__confirm-p danger">{error}</p>
			</div>

			<form class="form-horizontal g__form-horizontal" role="form" method="post" id="login-form">
				<div class="form-group g__form-group">
					<label for="username" class="col-lg-2 control-label g__control-label">{allowLoginWith}</label>
					<div class="col-lg-10 g__col-lg-10 g__col-lg-10 g__col-lg-10">
						<input class="form-control g__form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}"/>
					</div>
				</div>
				<div class="form-group g__form-group">
					<label for="password" class="col-lg-2 control-label g__control-label">[[user:password]]</label>
					<div class="col-lg-10 g__col-lg-10">
						<input class="form-control g__form-control" type="password" placeholder="[[user:password]]" name="password" id="password" <!-- IF username -->autocomplete="off"<!-- ENDIF username -->/>
					</div>
				</div>
				<div class="form-group g__form-group">
					<div class="col-lg-offset-2 col-lg-10 g__col-lg-10">
						<div class="checkbox g__checkbox">
							<label>
								<input type="checkbox" class="g__checkbox-input" name="remember" id="remember" checked /> [[login:remember_me]]
							</label>
						</div>
					</div>
				</div>
				<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				<input type="hidden" name="noscript" id="noscript" value="true" />
				<div class="form-group g__form-group">
					<div class="col-lg-offset-2 col-lg-10 g__col-lg-10">
						<button class="btn btn-primary btn-lg btn-block g__btn g__btn-primary g__btn-lg g__btn-block" id="login" type="submit">[[global:login]]</button>
						<!-- IF allowRegistration -->
						<span class="g__login-span">[[login:dont_have_account]] <a class="g__login-a" href="{config.relative_path}/register">[[register:register]]</a></span>
						<!-- ENDIF allowRegistration -->
						&nbsp; <a class="g__login-a" id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
					</div>
				</div>
			</form>

		</div>
	</div>
	<!-- ENDIF allowLocalLogin -->

	<!-- IF alternate_logins -->
	<div class="<!-- IF allowLocalLogin -->col-md-6<!-- ELSE -->col-md-12<!-- ENDIF allowLocalLogin --> g__login-col">
		<div class="alt-login-block g__alt-login-block">
			<h4 class="g__login-title">[[login:alternative_logins]]</h4>
			<ul class="alt-logins g__alt-logins">
				<!-- BEGIN authentication -->
				<li class="{authentication.name} g__alt-logins-item"><a class="g__alt-logins-a" rel="nofollow noopener noreferrer" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></a></li>
				<!-- END authentication -->
			</ul>
		</div>
	</div>
	<!-- ENDIF alternate_logins -->
</div>
