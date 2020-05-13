<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown bottom-sheet g__btn-group g__topic-watch-dropdown g__bottom-sheet" component="topic/watch">

	<div class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown" type="button">

		<span component="category/watching/menu" <!-- IF isIgnored -->class="hidden g__hidden"<!-- ENDIF isIgnored --><!-- IF ../isIgnored -->class="hidden g__hidden"<!-- ENDIF ../isIgnored -->><span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[category:watching]]</span></span>

		<span component="category/ignoring/menu" <!-- IF !../isIgnored --><!-- IF !isIgnored -->class="hidden g__hidden"<!-- ENDIF !isIgnored --><!-- ENDIF !../isIgnored -->><span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[category:ignoring]]</span></span>

		<span class="caret g__caret"></span>
	</div>

	<ul class="dropdown-menu dropdown-menu-right g__dropdown-menu g__dropdown-menu-right">
		<li><a href="#" component="category/watching">[[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
		<li><a href="#" component="category/ignoring">[[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->