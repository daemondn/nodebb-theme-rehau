<div class="chats-full g__chats-full">
	<div class="g__chat-nav-wrapper" component="chat/nav-wrapper" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->">
		<div class="chat-search dropdown g__chat-search g__dropdown">
			<input class="form-control g__form-control g__form-control g__form-control" type="text" component="chat/search" placeholder="[[users:enter_username]]" data-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu g__dropdown-menu"></ul>
		</div>
		<ul component="chat/recent" class="chats-list g__chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<!-- IMPORT partials/chats/recent_room.tpl -->
			<!-- END rooms -->
		</ul>
	</div>
	<div class="g__chat-main-wrapper" component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
</div>