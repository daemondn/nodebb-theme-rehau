<div class="modal g__modal" tabindex="-1" role="dialog" aria-labelledby="Flag post" aria-hidden="true">
	<div class="modal-dialog modal-lg g__modal-dialog g__modal-lg">
		<div class="modal-content g__modal-content">
			<div class="modal-header g__modal-header">
				<button type="button" class="close g__close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title g__modal-title">
					[[flags:modal-title]]
				</h4>
			</div>
			<div class="modal-body g__modal-body">
				<p class="lead g__lead">
					[[flags:modal-body, {type}, {id}]]
				</p>
				<div class="btn-group btn-group-justified g__btn-group g__btn-group-justified">
					<div class="btn-group g__btn-group">
						<button class="btn btn-default flag-reason g__btn g__btn-default g__flag-reason">[[flags:modal-reason-spam]]</button>
					</div>
					<div class="btn-group g__btn-group">
						<button class="btn btn-default flag-reason g__btn g__btn-default g__flag-reason">[[flags:modal-reason-offensive]]</button>
					</div>
					<div class="btn-group g__btn-group">
						<button class="btn btn-default toggle-custom">[[flags:modal-reason-other]]</button>
					</div>
				</div>
				<div class="form-group g__form-group">
					<textarea class="form-control g__form-control" id="flag-reason-custom" disabled="disabled"></textarea>
				</div>

				<button type="button" class="btn btn-primary pull-right g__flag-post-commit" id="flag-post-commit" disabled>[[flags:modal-submit]]</button>
				<div class="clear g__clear"></div>
			</div>
		</div>
	</div>
</div>