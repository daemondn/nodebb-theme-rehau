<!-- IF privileges.editable -->
<div class="btn-group thread-tools bottom-sheet g__btn-group g__thread-tools g__bottom-sheet">
	<div class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown" type="button">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline g__visible-sm-inline g__visible-md-inline g__visible-lg-inline">[[topic:thread_tools.title]]</span>
		<span class="caret g__caret"></span>
	</div>
	<ul class="dropdown-menu pull-right g__dropdown-menu g__pull-right">
		<li>
			<a class="g__tools-topic-a g__fa-inbox" component="topic/mark-unread-for-all" href="#"> [[topic:thread_tools.markAsUnreadForAll]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-thumb-tack" component="topic/pin" href="#">[[topic:thread_tools.pin]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__thumb-tack fa-rotate-90" component="topic/unpin" href="#" class="hidden g__hidden"> [[topic:thread_tools.unpin]]
			</a>
		</li>

		<li>
			<a class="g__tools-topic-a g__fa-lock" component="topic/lock" href="#"> [[topic:thread_tools.lock]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-unlock"" component="topic/unlock" href="#" class="hidden g__hidden"> [[topic:thread_tools.unlock]]
			</a>
		</li>

		<li class="divider g__divider"></li>

		<li>
			<a class="g__tools-topic-a g__fa-arrows" component="topic/move" href="#"> [[topic:thread_tools.move]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-arrows" component="topic/move-all" href="#"> [[topic:thread_tools.move_all]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-code-fork" component="topic/merge" href="#"> [[topic:thread_tools.merge]]
			</a>
		</li>

		<li class="divider g__divider"></li>

		<li>
			<a class="g__tools-topic-a g__fa-trash-o" component="topic/delete" href="#">
				[[topic:thread_tools.delete]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-history" component="topic/restore" href="#" class="hidden g__hidden">
				[[topic:thread_tools.restore]]
			</a>
		</li>
		<li>
			<a class="g__tools-topic-a g__fa-eraser" component="topic/purge" href="#" class="hidden g__hidden"> [[topic:thread_tools.purge]]
			</a>
		</li>

		<!-- BEGIN thread_tools -->
		<li>
			<a class="g__tools-topic-a" href="#" class="{thread_tools.class}">{thread_tools.title}</a>
		</li>
		<!-- END thread_tools -->
	</ul>
</div>
<!-- ENDIF privileges.editable -->