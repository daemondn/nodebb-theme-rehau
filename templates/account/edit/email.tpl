<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->

	<form class="form-horizontal edit-form g__form-horizontal g__edit-form">
		<div class="control-group g__control-group">
			<label class="control-label g__control-label" for="inputNewEmail">[[user:email]]</label>
			<div class="controls g__controls">
				<input class="form-control g__form-control" type="text" id="inputNewEmail" placeholder="[[user:email]]" value="{email}">
			</div>
		</div>

		<!-- disables autocomplete on FF --><input type="password" style="display:none">

		<!-- IF isSelf -->
		<div class="control-group g__control-group">
			<label class="control-label g__control-label" for="inputCurrentPassword">[[user:current_password]]</label>
			<div class="controls g__controls">
				<input autocomplete="off" class="form-control g__form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
			</div>
		</div>
		<!-- ENDIF isSelf -->

		<input class="g__email-input" type="hidden" name="uid" id="inputUID" value="{uid}" />

		<br/>
		<div class="form-actions g__form-actions">
			<a id="submitBtn" href="#" class="btn btn-primary btn-block g__btn g__btn-primary g__btn-block"><i class="hide fa fa-spinner fa-spin g__fa-spinner g__fa-spin"></i> [[user:change_email]]</a>
		</div>
	</form>
</div>
