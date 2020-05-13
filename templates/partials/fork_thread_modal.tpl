<div class="panel panel-primary fork-thread-card g__panel g__panel-primary g__fork-thread-card">
	<div class="panel-heading g__panel-heading">
		<h3 class="panel-title g__panel-title">[[topic:fork_topic]]</h3>
	</div>
	<div class="panel-body g__panel-body">
		<div class="form-group g__form-group">
			<label for="title">Title</label>
			<input id="fork-title" type="text" class="form-control g__form-control" placeholder="Enter new topic title">
		</div>
		<p>
			[[topic:fork_topic_instruction]]<br />
			<strong><span id="fork-pids"></span></strong>
		</p>
	</div>
	<div class="panel-footer g__panel-footer">
		&nbsp;
		<div class="btn-group pull-right g__btn-group g__pull-right">
			<button class="btn btn-link btn-xs g__btn g__btn-link g__btn-xs" id="fork_thread_cancel">[[global:buttons.close]]</button>
			<button class="btn btn-primary btn-xs g__btn g__btn-primary g__btn-xs" id="fork_thread_commit" disabled>[[topic:fork_topic]] <i class="fa fa-arrow-circle-right"></i></button>
		</div>
	</div>
</div>