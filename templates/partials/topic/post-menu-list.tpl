<!-- IF posts.display_moderator_tools -->
<li role="presentation" class="dropdown-header g__dropdown-header">[[topic:tools]]</li>
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/edit" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon g__menu-icon"></span> [[topic:edit]]
	</a>
</li>
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/delete" role="menuitem" tabindex="-1" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->">
		<div class="inline menu-icon g__inline g__menu-icon"></div> <span>[[topic:delete]]</span>
	</a>
</li>
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/restore" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<div class="inline menu-icon g__inline g__menu-icon"><i class="fa fa-history"></i></div> <span>[[topic:restore]]</span>
	</a>
</li>
<!-- IF posts.display_purge_tools -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/purge" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<span class="menu-icon g__menu-icon"><i class="fa fa-eraser"></i></span> [[topic:purge]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_history -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/view-history" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon g__menu-icon"><i class="fa fa-history"></i></span> [[topic:view-history]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_move_tools -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/move" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon g__menu-icon"></span> [[topic:move]]
	</a>
</li>
<!-- ENDIF posts.display_move_tools -->

<!-- IF posts.ip -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/copy-ip" role="menuitem" tabindex="-1" href="#" data-clipboard-text="{posts.ip}">
		<span class="menu-icon g__menu-icon" ><i class="fa fa-copy"></i></span> [[topic:copy-ip]] {posts.ip}
	</a>
</li>
<!-- IF posts.display_ip_ban -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/ban-ip" role="menuitem" tabindex="-1" href="#" data-ip="{posts.ip}">
		<span class="menu-icon g__menu-icon"><i class="fa fa-ban"></i></span> [[topic:ban-ip]] {posts.ip}
	</a>
</li>
<!-- ENDIF posts.display_ip_ban -->
<!-- ENDIF posts.ip -->
<!-- ENDIF posts.display_moderator_tools -->

<!-- BEGIN posts.tools -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="{posts.tools.action}" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon g__menu-icon"><i class="fa {posts.tools.icon}"></i></span> {{posts.tools.html}}
	</a>
</li>
<!-- END posts.tools -->
<!-- IF posts.toolsVisible -->
<li role="presentation" class="divider g__divider"></li>
<!-- ENDIF posts.toolsVisible -->

<!-- IF !posts.deleted -->
<!-- IF config.loggedIn -->
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/bookmark" role="menuitem" tabindex="-1" href="#" data-bookmarked="{posts.bookmarked}">

		<span class="bookmark-text g__bookmark-text">[[topic:bookmark]]</span>
		<span component="post/bookmark-count" class="bookmarkCount g__bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
	</a>
</li>
<!-- ENDIF config.loggedIn -->

<!-- IF postSharing.length -->
<li role="presentation" class="divider g__divider"></li>
<li role="presentation" class="dropdown-header g__dropdown-header">[[topic:share_this_post]]</li>
<!-- ENDIF postSharing.length -->
<!-- BEGIN postSharing -->
	<li class="g__post-menu-list-item" role="presentation">
		<a role="menuitem" component="share/{postSharing.id}" tabindex="-1" href="#"><span class="menu-icon g__menu-icon"><i class="fa {postSharing.class}"></i></span> {postSharing.name}</a>
	</li>
<!-- END postSharing -->

<!-- IF posts.display_flag_tools -->
<li role="presentation" class="divider g__divider"></li>
<li class="g__post-menu-list-item" role="presentation">
	<a component="post/flag" role="menuitem" tabindex="-1" href="#">
		[[topic:flag_title]]
	</a>
</li>
<!-- ENDIF posts.display_flag_tools -->
<!-- ENDIF !posts.deleted -->