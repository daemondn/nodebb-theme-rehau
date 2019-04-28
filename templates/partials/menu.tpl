			<div class="navbar-header">
				<button type="button" class="navbar-toggle pull-left" id="mobile-menu">
					<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="{unreadCount.notification}"></span>
					<i class="fa fa-lg fa-fw fa-bars"></i>
				</button>
				<button type="button" class="navbar-toggle hidden" id="mobile-chats">
					<span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count" data-content="{unreadCount.chat}"></span>
					<i class="fa fa-lg fa-comment-o"></i>
				</button>

				<div component="navbar/title" class="visible-xs hidden">
					<span></span>
				</div>
			</div>

			<div id="nav-dropdown" class="hidden-xs">
				<!-- IF !maintenanceHeader -->
				<!-- IF config.searchEnabled -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET">
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
							<div class="hidden" id="search-fields">
								<div class="form-group">
									<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
									<a href="#"><i class="fa fa-gears fa-fw advanced-search-link"></i></a>
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
						</form>
						<ul id="quick-search-results" class="dropdown-menu quick-search-results hidden">
							<!-- IMPORT partials/quick-search-results.tpl -->
						</ul>
					</li>
					<li class="visible-xs" id="search-menu">
						<a href="{relative_path}/search">
							<i class="fa fa-search fa-fw"></i> [[global:search]]
						</a>
					</li>
				</ul>
				<!-- ENDIF config.searchEnabled -->

				<ul class="nav navbar-nav navbar-right hidden-xs">
					<li>
						<a href="#" id="reconnect" class="hide" title="[[global:reconnecting-message, {config.siteTitle}]]">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block visible-lg visible-md">
					<li class="dropdown">
						<a><i class="fa fa-angle-double-up pointer fa-fw pagetop"></i></a>
						<a><i class="fa fa-angle-up pointer fa-fw pageup"></i></a>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="pagination-text"></span>
						</a>

						<a><i class="fa fa-angle-down pointer fa-fw pagedown"></i></a>
						<a><i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i></a>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
							<li>
  								<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
  							</li>
						</ul>
					</li>
				</ul>

				<ul id="main-nav" class="nav navbar-nav">
					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a class="navigation-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
				</ul>

				<!-- ELSE -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>
