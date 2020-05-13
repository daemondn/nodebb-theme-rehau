<!-- IMPORT partials/breadcrumbs.tpl -->

<!-- IF valid -->
<div class="well g__well">
	<!-- IF displayExpiryNotice -->
	<div class="alert alert-warning g__alert g__alert-warning" >
		[[reset_password:password_expired]]
	</div>
	<!-- ENDIF displayExpiryNotice -->
	<div class="alert alert-success hidden g__alert g__alert-success g__hidden" id="success">
		<button type="button" class="close g__close" data-dismiss="alert">&times;</button>
		<strong class="g__alert-strong" >[[reset_password:password_changed.title]]</strong>
		<p class="g__alert-p">[[reset_password:password_changed.message]]</p>
	</div>
	<div class="alert alert-warning hidden g__alert g__alert-warning g__hidden" id="notice">
		<strong class="g__alert-strong"></strong>
		<p class="g__alert-p"></p>
	</div>
	<form onsubmit="return false;" id="reset-form" class="row g__row">
		<div class="col-sm-6 g__col-sm-6">
			<label for="password">[[reset_password:new_password]]</label>
			<input class="form-control g__form-control" type="password" placeholder="[[reset_password:new_password]]" id="password" /><br />
		</div>
		<div class="col-sm-6 g__col-sm-6">
			<label for="repeat">[[reset_password:repeat_password]]</label>
			<input class="form-control g__form-control" type="password" placeholder="[[reset_password:repeat_password]]" id="repeat" /><br />
		</div>
		<div class="col-xs-12 g__col-xs-12">
			<button class="btn btn-primary btn-block g__btn g__btn-primary g__btn-block" id="reset" type="submit">[[reset_password:reset_password]]</button>
		</div>
	</form>
</div>
<!-- ELSE -->
<div class="panel panel-default panel-danger g__panel g__panel-default g__panel-danger">
	<div class="panel-heading g__panel-heading">
		<h3 class="panel-title g__panel-title">[[reset_password:wrong_reset_code.title]]</h3>
	</div>
	<div class="panel-body g__panel-body">
		<p>[[reset_password:wrong_reset_code.message]]</p>
	</div>
</div>
<!-- ENDIF valid -->