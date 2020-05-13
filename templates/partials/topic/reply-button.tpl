<div component="topic/reply/container" class="btn-group action-bar g__topic-watch <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">
	<a href="{config.relative_path}/compose?tid={tid}&title={title}" class="btn btn-primary g__btn g__btn-primary g__reply-link" component="topic/reply" data-ajaxify="false" role="button">[[topic:reply]]
		<div type="button" class="btn btn-info dropdown-toggle g__btn g__btn-info g__dropdown-toggle g__reply-btn" data-toggle="dropdown">
			<span class="caret g__caret"></span>
		</div>
		<ul class="dropdown-menu pull-right g__dropdown-menu g__pull-right" role="menu">
			<li><a href="#" component="topic/reply-as-topic">[[topic:reply-as-topic]]</a></li>
		</ul>
	</a>
</div>

<!-- IF loggedIn -->
<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<a component="topic/reply/locked" class="btn btn-primary g__btn g__btn-primary" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<a component="topic/reply/locked" class="btn btn-primary hidden g__btn g__btn-primary g__hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a component="topic/reply/guest" href="{config.relative_path}/login" class="btn btn-primary g__btn g__btn-primary">[[topic:guest-login-reply]]</a>
<!-- ENDIF !privileges.topics:reply -->
<!-- ENDIF loggedIn -->