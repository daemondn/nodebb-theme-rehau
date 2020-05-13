<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown bottom-sheet g__topic-watch" component="topic/watch">
	<div class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown" type="button">
		<span component="topic/following/menu" <!-- IF !isFollowing -->class="hidden g__hidden"<!-- ENDIF !isFollowing -->><span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[topic:watching]]</span></span>

		<span component="topic/not-following/menu" <!-- IF !isNotFollowing -->class="hidden g__hidden"<!-- ENDIF !isNotFollowing -->><span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[topic:not-watching]]</span></span>

		<span component="topic/ignoring/menu" <!-- IF !isIgnoring -->class="hidden g__hidden"<!-- ENDIF !isIgnoring -->><span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[topic:ignoring]]</span></span>

		<span class="caret g__caret"></span>
	</div>
	<ul class="dropdown-menu dropdown-menu-right g__dropdown-menu g__dropdown-menu-right">
		<li><a href="#" component="topic/following"><i component="topic/following/check" class="fa fa-fw <!-- IF isFollowing -->fa-check<!-- ENDIF isFollowing -->"></i></i> [[topic:watching]]<p class="help-text hidden-xs g__help-text g__hidden-xs"><small>[[topic:watching.description]]</small></p></a></li>
		<li><a href="#" component="topic/not-following"><i component="topic/not-following/check" class="fa fa-fw <!-- IF isNotFollowing -->fa-check<!-- ENDIF isNotFollowing -->"></i></i> [[topic:not-watching]]<p class="help-text hidden-xs g__help-text g__hidden-xs"><small>[[topic:not-watching.description]]</small></p></a></li>
		<li><a href="#" component="topic/ignoring"><i component="topic/ignoring/check" class="fa fa-fw <!-- IF isIgnoring -->fa-check<!-- ENDIF isIgnoring -->"></i></i> [[topic:ignoring]]<p class="help-text hidden-xs g__help-text g__hidden-xs"><small>[[topic:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->