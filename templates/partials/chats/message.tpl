<li component="chat/message" class="chat-message g__chat-message clear g__clear<!-- IF ../deleted --> deleted<!-- END -->" data-index="{messages.index}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
	<div class="message-header g__message-header">
		<a href="{config.relative_path}/user/{messages.fromUser.userslug}">
			<!-- IF messages.fromUser.picture -->
			<img class="chat-user-image not-responsive g__chat-user-image g__not-responsive" src="{messages.fromUser.picture}">
			<!-- ELSE -->
			<div class="user-icon g__user-icon chat-user-image g__chat-user-image" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
			<!-- ENDIF messages.fromUser.picture -->
		</a>
		<strong><span class="chat-user g__chat-user"><a href="{config.relative_path}/user/{messages.fromUser.userslug}">{messages.fromUser.username}</a></span></strong>
		<!-- IF ../fromUser.banned -->
		<span class="label label-danger g__label g__label-danger">[[user:banned]]</span>
		<!-- END -->
		<!-- IF ../fromUser.deleted -->
		<span class="label label-danger g__label g__label-danger">[[user:deleted]]</span>
		<!-- END -->
		<span class="chat-timestamp timeago g__chat-timestamp g__timeago" title="{messages.timestampISO}"></span>
		<!-- IF isAdminOrGlobalMod -->
		<div class="chat-ip pull-right" title="[[modules:chat.show-ip]]"><i class="fa fa-info-circle chat-ip-button"></i></div>
		<!-- ENDIF isAdminOrGlobalMod -->
		<!-- IF messages.edited -->
		<div class="text-muted pull-right g__text-muted g__pull-right" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit g__fa-edit"></i></span></div>
		<!-- ENDIF messages.edited -->
		<!-- IF !config.disableChatMessageEditing -->
		<!-- IF messages.self -->
		<div class="pull-right btn-group controls g__pull-right g__btn-group g__controls">
			<button class="btn btn-xs btn-link g__btn g__btn-xs g__btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
			<button class="btn btn-xs btn-link g__btn g__btn-xs g__btn-link" data-action="delete"><i class="fa fa-times"></i></button>
			<button class="btn btn-xs btn-link g__btn g__btn-xs g__btn-link" data-action="restore"><i class="fa fa-repeat"></i></button>
		</div>
		<!-- ENDIF messages.self -->
		<!-- ENDIF !config.disableChatMessageEditing -->
	</div>
	<div component="chat/message/body" class="message-body g__message-body">
		{messages.content}
	</div>
</li>