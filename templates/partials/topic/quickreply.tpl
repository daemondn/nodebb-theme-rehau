<!-- IF loggedIn -->
<div class="clearfix quick-reply g__clearfix g__quick-reply">
	<div class="icon pull-left hidden-xs g__icon g__pull-left g__hidden-xs">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<!-- IF loggedInUser.picture -->
			<img component="user/picture" data-uid="{loggedInUser.uid}" src="{loggedInUser.picture}" align="left" itemprop="image" />
			<!-- ELSE -->
			<div component="user/picture" data-uid="{loggedInUser.uid}" class="user-icon g__user-icon" style="background-color: {loggedInUser.icon:bgColor};">{loggedInUser.icon:text}</div>
			<!-- ENDIF loggedInUser.picture -->
			<!-- IF loggedInUser.status -->
			<i component="user/status" class="fa fa-circle status {loggedInUser.status}" title="[[global:{loggedInUser.status}]]"></i>
			<!-- ENDIF loggedInUser.status -->
		</a>
	</div>
	<form method="post" action="{config.relative_path}/compose">
		<input type="hidden" name="tid" value="{tid}" />
		<input type="hidden" name="_csrf" value="{config.csrf_token}" />
		<div class="quickreply-message g__quickreply-message">
			<textarea name="content" component="topic/quickreply/text" class="form-control g__form-control" rows="5"></textarea>
		</div>
		<button type="submit" component="topic/quickreply/button" class="btn btn-primary pull-right g__btn g__btn-primary g__pull-right">Post quick reply</button>
	</form>
</div>
<!-- ENDIF loggedIn -->
