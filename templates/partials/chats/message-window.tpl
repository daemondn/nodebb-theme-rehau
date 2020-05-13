<!-- IF roomId -->
<div component="chat/messages" class="expanded-chat g__expanded-chat" data-roomid="{roomId}">
	<div class="g__chat-header" component="chat/header">
		<button type="button" class="close g__close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only g__sr-only">[[modules:chat.pop-out]]</span></button>
		<button type="button" class="close g__close" aria-label="Close" data-action="close"><span aria-hidden="true">&times;</span></button>
		
		<div class="dropdown pull-right g__dropdown g__pull-right">
			<button class="close g__close" data-toggle="dropdown" component="chat/controlsToggle"><i class="fa fa-gear"></i></button>
			<ul class="dropdown-menu dropdown-menu-right g__dropdown-menu g__dropdown-menu-right pull-right g__pull-right" component="chat/controls">
				<!-- IF users.length -->
				<li class="dropdown-header g__dropdown-header">[[modules:chat.in-room]]</li>
				<!-- BEGIN users -->
				<li>
					<a href="{config.relative_path}/uid/{../uid}">
						<!-- IF ../picture -->
						<img class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" src="{../picture}" itemprop="image" />
						<!-- ELSE -->
						<div class="avatar avatar-sm g__avatar g__avatar-sm" component="user/picture" style="background-color: {../icon:bgColor};">{../icon:text}</div><!-- END -->{../username}
					</a>
				</li>
				<!-- END -->
				<li role="separator" class="divider g__divider"></li>
				<!-- END -->
				<li class="dropdown-header g__dropdown-header">[[modules:chat.options]]</li>
				<li>
					<a href="#" data-action="members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
				</li>
				<li>
					<a href="#" data-action="rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
				</li>
				<li>
					<a href="#" data-action="leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
				</li>
			</ul>
		</div>
		<span class="members g__members">
			[[modules:chat.chatting_with]]:
			<!-- BEGIN users -->
			<a href="{config.relative_path}/uid/{../uid}">{../username}</a><!-- IF !@last -->,<!-- END -->
			<!-- END -->
		</span>
	</div>
	<ul class="chat-content g__chat-content">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<div class="g__chat-composer" component="chat/composer">
		<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control g__form-control chat-input mousetrap g__chat-input g__mousetrap" rows="2"></textarea>
		<button class="btn btn-primary g__btn g__btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
		<span class="g__chat-message-remaining" component="chat/message/remaining">{maximumChatMessageLength}</span>
	</div>
</div>
<!-- ELSE -->
<div class="alert alert-info g__alert g__alert-info">
	[[modules:chat.no-messages]]
</div>
<!-- ENDIF roomId -->