	<div class="modal g__modal" tabindex="-1" role="dialog" aria-labelledby="upload-file" aria-hidden="true">
		<div class="modal-dialog g__modal-dialog">
			<div class="modal-content g__modal-content">
				<div class="modal-header g__modal-header">
					<button type="button" class="close g__close" data-dismiss="modal" aria-hidden="true">x</button>
					<h3>{title}</h3>
				</div>
				<div class="modal-body g__modal-body">
					<form id="uploadForm" action="" method="post" enctype="multipart/form-data">
						<div class="form-group g__form-group">
							<!-- IF description -->
							<label for="fileInput">{description}</label>
							<!-- ENDIF description -->
							<input type="file" id="fileInput" name="files[]" <!-- IF accept -->accept="{accept}"<!-- ENDIF accept -->>
							<!-- IF showHelp -->
							<p class="help-block g__help-block">
								<!-- IF accept -->
								[[global:allowed-file-types, {accept}]]
								<!-- ENDIF accept -->

								<!-- IF fileSize --><span id="file-size-block">([[uploads:maximum-file-size, {fileSize}]])</span><!-- ENDIF fileSize -->
							</p>
							<!-- ENDIF showHelp -->
						</div>
						<input type="hidden" id="params" name="params" />
					</form>

					<div id="upload-progress-box" class="progress progress-striped hide g__progress g__progress-striped g__hide">
						<div id="upload-progress-bar" class="progress-bar progress-bar-success g__progress-bar g__progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0">
							<span class="sr-only g__sr-only"> [[success:success]]</span>
						</div>
					</div>

					<div id="alert-status" class="alert alert-info hide g__alert g__alert-info g__hide"></div>
					<div id="alert-success" class="alert alert-success hide g__alert g__alert-success g__hide"></div>
					<div id="alert-error" class="alert alert-danger hide g__alert g__alert-danger g__hide"></div>
				</div>
				<div class="modal-footer g__modal-footer">
					<button class="btn btn-default g__btn g__btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
					<button id="fileUploadSubmitBtn" class="btn btn-primary g__btn g__btn-primary">{button}</button>
				</div>
			</div>
		</div>
	</div>