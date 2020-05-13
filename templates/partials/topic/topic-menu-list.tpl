<!-- IF privileges.editable -->
<li><a class="g__topic-menu-link g__topic-lock" component="topic/lock" href="#" class="<!-- IF locked -->hidden<!-- ENDIF locked -->"> [[topic:thread_tools.lock]]</a></li>
<li><a class="g__topic-menu-link g__topic-unlock" component="topic/unlock" href="#" class="<!-- IF !locked -->hidden<!-- ENDIF !locked -->"> [[topic:thread_tools.unlock]]</a></li>
<li><a class="g__topic-menu-link g__topic-arrows" component="topic/move" href="#"> [[topic:thread_tools.move]]</a></li>
<li><a class="g__topic-menu-link g__topic-fork" component="topic/fork" href="#"> [[topic:thread_tools.fork]]</a></li>
<li><a class="g__topic-menu-link g__topic-pin" component="topic/pin" href="#" class="<!-- IF pinned -->hidden<!-- ENDIF pinned -->"> [[topic:thread_tools.pin]]</a></li>
<li><a class="g__topic-menu-link g__topic-unpin" component="topic/unpin" href="#" class="<!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"> [[topic:thread_tools.unpin]]</a></li>
<li><a class="g__topic-menu-link g__topic-move-posts" component="topic/move-posts" href="#"> [[topic:thread_tools.move-posts]]</a></li>
<li><a class="g__topic-menu-link g__mark-unread-for-al" component="topic/mark-unread-for-all" href="#"> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
<li class="divider g__divider"></li>
<!-- ENDIF privileges.editable -->

<!-- IF privileges.deletable -->
<li><a class="g__topic-menu-link g__topic-delete" component="topic/delete" href="#" class="<!-- IF deleted -->hidden<!-- ENDIF deleted -->">[[topic:thread_tools.delete]]</a></li>
<li><a class="g__topic-menu-link g__topic-restore" component="topic/restore" href="#" class="<!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"> [[topic:thread_tools.restore]]</a></li>
<!-- IF privileges.purge -->
<li><a class="g__topic-menu-link g__topic-purge" component="topic/purge" href="#" class="<!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"> [[topic:thread_tools.purge]]</a></li>
<!-- END -->
<!-- IF privileges.isAdminOrMod -->
<li><a class="g__topic-menu-link g__topic-trash" component="topic/delete/posts" href="#"> [[topic:thread_tools.delete-posts]]</a></li>
<!-- ENDIF privileges.isAdminOrMod -->

<!-- BEGIN thread_tools -->
<li><a class="g__topic-menu-link g__topic-tools" href="#" class="{thread_tools.class}"> {thread_tools.title}</a></li>
<!-- END thread_tools -->
<!-- ENDIF privileges.deletable -->