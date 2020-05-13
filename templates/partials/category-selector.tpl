<div component="category-selector" class="btn-group g__btn-group <!-- IF pullRight -->pull-right<!-- ENDIF pullRight -->">
	<div type="button" class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown">
		<span component="category-selector-selected">[[topic:thread_tools.select_category]]</span> <span class="caret g__caret"></span>
	</div>
	<ul class="dropdown-menu category-dropdown-menu g__dropdown-menu g__category-dropdown-menu" role="menu">
		<!-- BEGIN categories -->
		<li role="presentation" class="category g__category <!-- IF categories.disabledClass -->disabled<!-- ENDIF categories.disabledClass -->" data-cid="{categories.cid}" data-name="{categories.name}">
			<a role="menu-item">{categories.level}<span component="category-markup">{categories.name}</span></a>
		</li>
		<!-- END categories -->
	</ul>
</div>