<div id="{alert_id}" class="alert alert-dismissable alert-{type} clearfix g-alert g-alert-dismissable g-alert-{type} g-clearfix" component="toaster/toast">
	<button type="button" class="close g-close" data-dismiss="alert" aria-hidden="true">&times;</button>

	<!-- IF image -->
	<img class="g-alert__img" src="{image}">
	<!-- ENDIF image -->

	<!-- IF title -->
	<strong g-alert__strong>{title}</strong>
	<!-- ENDIF title -->

	<!-- IF message -->
	<p g-alert__p>{message}</p>
	<!-- ENDIF message -->
</div>
