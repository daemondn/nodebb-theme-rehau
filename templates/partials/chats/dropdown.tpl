<!-- IF rooms.length -->
<!-- BEGIN rooms -->
<li class="g__dropdown-unread-li <!-- IF ../unread -->unread<!-- ENDIF ../unread -->" data-roomid="{rooms.roomId}">
	<strong class="room-name g__room-name">
		<!-- IF !rooms.lastUser.uid -->
		<span>[[modules:chat.no-users-in-room]]</span>
		<!-- ELSE -->
		<!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName -->
		<!-- ENDIF !rooms.lastUser.uid -->
	</strong>
	<div class="avatar-placeholder g__avatar-placeholder"></div>
	<!-- BEGIN rooms.users -->
	<!-- IF @first -->
	<div class="main-avatar g__main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	<!-- END rooms.users -->

	<ul class="members g__members">
		<!-- BEGIN rooms.users -->
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		<!-- END rooms.users -->
	</ul>

	<span class="teaser-content g__teaser-content">{rooms.teaser.content}</span>
	<span class="teaser-timestamp timeago pull-right g__teaser-timestamp g__timeago g__pull-right" title="{rooms.teaser.timestampISO}"></span>
</li>
<!-- END rooms -->
<!-- ELSE -->
<li class="no_active g__no_active"><a href="#">[[modules:chat.no_active]]</a></li>
<!-- ENDIF rooms.length -->