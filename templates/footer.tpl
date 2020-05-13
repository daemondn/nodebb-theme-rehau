		</div><!-- /.container#content -->
	</main>
	<!-- IF !isSpider -->
	<div class="topic-search hidden g__topic-search g__hidden">
		<div class="btn-group g__btn-group">
			<button type="button" class="btn btn-default g__btn btn-default count g__count"></button>
			<button type="button" class="btn btn-default g__btn btn-default prev g__prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default g__btn btn-default next g__next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window g__alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide g__alert g__alert-dismissable g__alert-warning g__clearfix g__hide" component="toaster/toast">
			<button type="button" class="close g__close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p g__p-footer>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->


	<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	<!-- BEGIN scripts -->
	<script defer type="text/javascript" src="{scripts.src}"></script>
	<!-- END scripts -->

	<script>
		window.addEventListener('load', function () {
			require(['forum/footer']);

			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide g__hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>
</body>
</html>
