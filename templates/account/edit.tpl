<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->
	<!-- IF sso.length --><div><!-- ENDIF sso.length -->

		<h1 class="categories-title g__categories-title">Редактировать профиль</h1>
		<div class="row g__row g__edit-setting">
			<div class="col-md-2 g__col-md-2 col-sm-4 g__col-sm-4 g__edit-left">
				<div class="account-picture-block text-center g__account-picture-block g__text-center">
					<div class="row g__row g__edit-row">
						<div class="col-xs-12 g__col-xs-12 hidden-xs g__hidden-xs g__edit-col">
							<!-- IF picture -->
							<img id="user-current-picture" class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded g__avatar-in-edit" src="{picture}" />
							<!-- ELSE -->
							<div class="avatar avatar-xl avatar-rounded g__avatar g__avatar-xl g__avatar-rounded g__avatar-div" style="background-color: {icon:bgColor};">{icon:text}</div>
							<!-- ENDIF picture -->
						</div>
					</div>
					<ul class="list-group g__list-group g__edit-group">
						<!-- IF allowProfilePicture -->
						<a id="changePictureBtn" href="#" class="list-group-item g__list-group-item g__edit-list-item">[[user:change_picture]]</a>
						<!-- ENDIF allowProfilePicture -->
						<!-- IF !username:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item g__list-group-item g__edit-list-item">[[user:change_username]]</a>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item g__list-group-item g__edit-list-item">[[user:change_email]]</a>
						<!-- ENDIF !email:disableEdit -->
						<!-- IF canChangePassword -->
						<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item g__list-group-item g__edit-list-item">[[user:change_password]]</a>
						<!-- ENDIF canChangePassword -->
						<!-- BEGIN editButtons -->
						<a href="{config.relative_path}{editButtons.link}" class="list-group-item g__list-group-item g__edit-list-item">{editButtons.text}</a>
						<!-- END editButtons -->
					</ul>

					<!-- IF config.requireEmailConfirmation -->
					<!-- IF email -->
					<!-- IF isSelf -->
					<a id="confirm-email" href="#" class="btn btn-warning g__btn g__btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a><br/><br/>
					<!-- ENDIF isSelf -->
					<!-- ENDIF email -->
					<!-- ENDIF config.requireEmailConfirmation -->

				</div>
			</div>

			<div class="g__edit-what  <!-- IF !sso.length -->col-md-9 col-sm-8<!-- ELSE -->col-md-5 col-sm-4<!-- ENDIF !sso.length -->">
				<div class="g__edit-what-second">
					<form class='form-horizontal g__form-horizontal'>
						<div class="control-group g__control-group g__edit-control-group">
							<label class="control-label g__control-label g__edit-label" for="inputFullname">[[user:fullname]]</label>
							<div class="controls g__controls g__edit-controls">
								<input class="form-control g__form-control g__edit-input-controle" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
							</div>
						</div>
						<!-- IF allowWebsite -->
						<div class="control-group g__control-group g__edit-control-group">
							<label class="control-label g__control-label g__edit-label" for="inputWebsite">[[user:website]]</label>
							<div class="controls g__controls g__edit-controls">
								<input class="form-control g__form-control g__edit-input-controle" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
							</div>
						</div>
						<!-- ENDIF allowWebsite -->

						<div class="control-group g__control-group g__edit-control-group">
							<label class="control-label g__control-label g__edit-label" for="inputLocation">[[user:location]]</label>
							<div class="controls g__controls g__edit-controls">
								<input class="form-control g__form-control g__edit-input-controle" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
							</div>
						</div>

						<div class="control-group g__control-group g__edit-control-group">
							<label class="control-label g__control-label g__edit-label" for="inputBirthday">[[user:birthday]]</label>
							<div class="controls g__controls g__edit-controls">
								<input class="form-control g__form-control g__edit-input-controle" id="inputBirthday" value="{birthday}" placeholder="mm/dd/yyyy">
							</div>
						</div>

						<div class="control-group g__control-group g__edit-control-group">
							<label class="control-label g__control-label g__edit-label" for="grouptitle">[[user:grouptitle]]</label>
							<div class="controls g__controls g__edit-controls g__edit-icons">
								<select class="form-control g__form-control g__edit-select" id="groupTitle" data-property="groupTitle" <!-- IF allowMultipleBadges --> multiple<!-- ENDIF allowMultipleBadges -->>
									<option class="g__search-option" value="">[[user:no-group-title]]</option>
									<!-- BEGIN groups -->
									<!-- IF groups.userTitleEnabled -->
									<option class="g__search-option" value="{groups.name}" <!-- IF groups.selected -->selected<!-- ENDIF groups.selected -->>{groups.userTitle}</option>
									<!-- ENDIF groups.userTitleEnabled -->
									<!-- END groups -->
								</select>
							</div>
						</div>

						<!-- IF allowAboutMe -->
						<div class="control-group g__control-group g__edit-control-textarea">
							<label class="control-label g__control-label g__edit-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<div class="controls g__controls g__edit-controls-text">
								<textarea class="form-control g__form-control g__edit-textarea-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
							</div>
						</div>
						<!-- ENDIF allowAboutMe -->

						<!-- IF allowSignature -->
						<!-- IF !disableSignatures -->
						<div class="control-group g__control-group g__edit-control-textarea">
							<label class="control-label g__control-label g__edit-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<div class="controls g__controls g__edit-controls-text">
								<textarea class="form-control g__form-control g__edit-textarea-control" id="inputSignature" rows="5">{signature}</textarea>
							</div>
						</div>
						<!-- ENDIF !disableSignatures -->
						<!-- ENDIF allowSignature -->

						<input class="g__edit-input" type="hidden" id="inputUID" value="{uid}"><br />

						<div class="form-actions g__form-actions g__edit-form-brn">
							<a id="submitBtn" href="#" class="btn btn-primary g__btn g__btn-primary g__edit-btn">[[global:save_changes]]</a>
						</div>

					</form>
				</div>
			</div>

			<!-- IF sso.length -->
			<div class="col-md-5 col-sm-4 g__col-md-5 g__col-sm-4">
				<label class="control-label g__control-label g__edit-label">[[user:sso.title]]</label>
				<div class="list-group g__list-group">
					<!-- BEGIN sso -->
					<div class="list-group-item g__list-group-item">
						<!-- IF ../deauthUrl -->
						<a class="btn btn-default btn-xs pull-right g__btn g__btn-default g__btn-xs g__pull-right" href="{../deauthUrl}">[[user:sso.dissociate]]</a>
						<!-- END -->
						<a class="g__edit-one-link" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
							<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
							<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
							{../name}
						</a>
					</div>
					<!-- END sso -->
				</div>
			</div>
			<!-- ENDIF sso.length -->
		</div>
	<!-- IF sso.length --></div><!-- ENDIF sso.length -->
</div>

