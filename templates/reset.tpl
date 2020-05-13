<!-- IMPORT partials/breadcrumbs.tpl -->


<div class="alert alert-info g__alert g__alert-info">
	[[reset_password:enter_email]]
</div>

<div class="well g__well">
	<div class="alert alert-success hide g__alert g__alert-success g__hide" id="success">
		<button type="button" class="close g__close" data-dismiss="alert">&times;</button>
		[[reset_password:password_reset_sent]]
	</div>
	<div class="alert alert-danger hide g__alert g__alert-danger g__hide" id="error">
		<button type="button" class="close g__close" data-dismiss="alert">&times;</button>
		[[reset_password:invalid_email]]
	</div>
	<form class="g__reset-form" onsubmit="return false;">
		<input type="text" class="form-control g__form-control input-block input-lg" placeholder="[[reset_password:enter_email_address]]" id="email" />

		<br />
		<button class="btn btn-primary btn-block btn-lg g__btn g__btn-primary g__btn-block g__btn-lg" id="reset" type="submit">[[reset_password:reset_password]]</button>
	</form>
</div>
