
<div id="chat-modal" class="chat-modal hide g__chat-modal g__hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog g__modal-dialog">
		<div class="modal-content g__modal-content">
			<div class="modal-header g__modal-header">
				<button id="chat-close-btn" type="button" class="close g__close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<button type="button" class="close hidden-xs hidden-sm g__close g__hidden-xs g__hidden-sm" data-action="maximize"><span aria-hidden="true"><i class="fa fa-expand"></i></span><span class="sr-only g__sr-only">[[modules:chat.maximize]]</span></button>
				<button type="button" class="close hidden-xs hidden-sm g__close g__hidden-xs g__hidden-sm" data-action="minimize"><span aria-hidden="true"><i class="fa fa-minus"></i></span><span class="sr-only g__sr-only">[[modules:chat.minimize]]</span></button>
				<div class="dropdown pull-right g__dropdown g__pull-right">
					<button class="close g__close" data-toggle="dropdown" component="chat/controlsToggle"><i class="fa fa-gear"></i></button>
					<ul class="dropdown-menu dropdown-menu-right g__dropdown-menu g__dropdown-menu-right pull-right g__dropdown-menu g__dropdown-menu-right g__pull-right" component="chat/controls">
						<!-- IF users.length -->
						<li class="dropdown-header g__dropdown-header">[[modules:chat.in-room]]</li>
						<!-- BEGIN users -->
						<li>
							<a href="{config.relative_path}/uid/{../uid}" class="g__a-dropdown">
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
							<a href="#" data-action="members" class="g__members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
						</li>
						<li>
							<a href="#" data-action="rename" class="g__rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
						</li>
						<li>
							<a href="#" data-action="leave" class="g__leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
						</li>
					</ul>
				</div>

				<h4 class="g__chat-room-name" component="chat/room/name"><!-- IF roomName -->{roomName}<!-- ELSE -->{usernames}<!-- ENDIF roomName --></h4>
			</div>

			<div class="modal-body g__modal-body">
				<ul class="chat-content g__chat-content" component="chat/messages">
					<!-- IMPORT partials/chats/messages.tpl -->
				</ul>

				<div class="g__chat-composer" component="chat/composer">
					<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control g__form-control chat-input mousetrap g__form-control g__form-control g__chat-input g__mousetrap" rows="1"></textarea>
					<button class="btn btn-primary g__btn g__btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
					<span class="g__chat-message-remaining" component="chat/message/remaining">{maximumChatMessageLength}</span>
				</div>
			</div>
		</div>
	</div>
</div>