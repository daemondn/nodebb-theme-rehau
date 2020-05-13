<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="search g__search">
	<div class="row g__row">
		<div class="col-xs-12 g__col-xs-12">
			<form id="advanced-search" class="g__advanced-search">
				<div class="form-group g__form-group">
					<div class="row g__row">
						<div class="col-md-5 g__col-md-5">
							<label>[[global:search]]</label>
							<input type="text" class="form-control g__form-control" id="search-input" placeholder="[[global:search]]">
						</div>
						<div class="col-md-5 g__col-md-5">
							<label>[[search:in]]</label>
							<select id="search-in" class="form-control g__form-control">
								<option class="g__search-option" value="titlesposts">[[search:titles-posts]]</option>
								<option class="g__search-option" value="titles">[[search:titles]]</option>
								<option class="g__search-option" value="posts">[[global:posts]]</option>
								<option class="g__search-option" value="users">[[global:users]]</option>
								<option class="g__search-option" value="tags">[[tags:tags]]</option>
							</select>
						</div>
						<div class="col-md-2 g__col-md-2">
							<label>&nbsp;</label>
							<button type="submit" class="btn btn-primary g__btn g__btn-primary form-control g__form-control">[[global:search]]</button>
						</div>
					</div>
				</div>

				<div class="panel panel-default g__panel g__panel-default">
					<div class="panel-heading g__panel-heading" data-toggle="collapse" data-target=".search-options">
						<h3 class="panel-title g__panel-title"><i class="fa fa-caret g__caret-down"></i> [[search:advanced-search]]</h3>
					</div>
					<div class="panel-body search-options collapse g__panel-body g__search-options g__collapse <!-- IF expandSearch -->in<!-- ENDIF expandSearch -->">

						<div class="form-group g__form-group post-search-item">
							<div class="row g__row">
								<div class="col-md-3 g__col-md-3">
									<label>[[search:match-words]]</label>
									<select id="match-words-filter" class="form-control g__form-control">
										<option class="g__search-option" value="all">[[search:all]]</option>
										<option class="g__search-option" value="any">[[search:any]]</option>
									</select>
								</div>
								<div class="col-md-3 g__col-md-3">
									<label>[[search:posted-by]]</label>
									<input type="text" class="form-control g__form-control" id="posted-by-user" placeholder="[[search:posted-by]]">
								</div>
								<div class="col-md-6 g__col-md-6">
									<label>[[search:has-tags]]</label>
									<input type="text" class="form-control g__form-control" id="has-tags">
								</div>
							</div>
						</div>

						<div class="form-group g__form-group post-search-item g__post-search-item">
							<label>[[search:in-categories]]</label>
							<select multiple class="form-control g__form-control" id="posted-in-categories" size="{categoriesCount}">
								<!-- BEGIN categories -->
								<option class="g__search-option" value="{categories.value}">{categories.text}</option>
								<!-- END categories -->
							</select>
							<input type="checkbox" class="g__checkbox-input" id="search-children"> [[search:search-child-categories]]
						</div>


						<div class="form-group g__form-group post-search-item">
							<label>[[search:reply-count]]</label>
							<div class="row g__row">
								<div class="col-md-6 g__col-md-6">
									<select id="reply-count-filter" class="form-control g__form-control">
										<option class="g__search-option" value="atleast">[[search:at-least]]</option>
										<option class="g__search-option" value="atmost">[[search:at-most]]</option>
									</select>
								</div>
								<div class="col-md-6 g__col-md-6">
									<input type="text" class="form-control g__form-control" id="reply-count">
								</div>
							</div>
						</div>

						<div class="form-group g__form-group post-search-item">
							<label>[[search:post-time]]</label>
							<div class="row g__row">
								<div class="col-md-6 g__col-md-6">
									<select id="post-time-filter" class="form-control g__form-control">
										<option class="g__search-option" value="newer">[[search:newer-than]]</option>
										<option class="g__search-option" value="older">[[search:older-than]]</option>
									</select>
								</div>
								<div class="col-md-6 g__col-md-6">
									<select id="post-time-range" class="form-control g__form-control">
										<option class="g__search-option" value="">[[search:any-date]]</option>
										<option class="g__search-option" value="86400">[[search:yesterday]]</option>
										<option class="g__search-option" value="604800">[[search:one-week]]</option>
										<option class="g__search-option" value="1209600">[[search:two-weeks]]</option>
										<option class="g__search-option" value="2592000">[[search:one-month]]</option>
										<option class="g__search-option" value="7776000">[[search:three-months]]</option>
										<option class="g__search-option" value="15552000">[[search:six-months]]</option>
										<option class="g__search-option" value="31104000">[[search:one-year]]</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group g__form-group post-search-item">
							<label>[[search:sort-by]]</label>
							<div class="row g__row">
								<div class="col-md-6 g__col-md-6">
									<select id="post-sort-by" class="form-control g__form-control">
										<option class="g__search-option" value="relevance">[[search:relevance]]</option>
										<option class="g__search-option" value="timestamp">[[search:post-time]]</option>
										<option class="g__search-option" value="teaser.timestamp">[[search:last-reply-time]]</option>
										<option class="g__search-option" value="topic.title">[[search:topic-title]]</option>
										<option class="g__search-option" value="topic.postcount">[[search:number-of-replies]]</option>
										<option class="g__search-option" value="topic.viewcount">[[search:number-of-views]]</option>
										<option class="g__search-option" value="topic.timestamp">[[search:topic-start-date]]</option>
										<option class="g__search-option" value="user.username">[[search:username]]</option>
										<option class="g__search-option" value="category.name">[[search:category]]</option>
									</select>
								</div>
								<div class="col-md-6 g__col-md-6">
									<select id="post-sort-direction" class="form-control g__form-control">
										<option class="g__search-option" value="desc">[[search:descending]]</option>
										<option class="g__search-option" value="asc">[[search:ascending]]</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-group g__form-group post-search-item">
							<label>[[search:show-results-as]]</label>
							<div class="radio g__radio">
								<label>
									<input type="radio" name="options" id="show-as-posts" checked>
									[[global:posts]]
								</label>
							</div>
							<div class="radio g__radio">
								<label>
									<input type="radio" name="options" id="show-as-topics">
									[[global:topics]]
								</label>
							</div>
						</div>

						<div class="btn-group g__btn-group">
							<button type="submit" class="btn btn-primary g__btn g__btn-primary">[[global:search]]</button>
							<a class="btn btn-default g__btn g__btn-default" id="save-preferences" href="#">[[search:save-preferences]]</a>
							<a class="btn btn-default g__btn g__btn-default" id="clear-preferences" href="#">[[search:clear-preferences]]</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="row g__row">
		<div id="results" class="col-md-12 g__col-md-12" data-search-query="{search_query}">
			<!-- IF matchCount -->
			<div class="alert alert-info g__alert g__alert-info">[[search:results_matching, {matchCount}, {search_query}, {time}]] </div>
			<!-- ELSE -->
			<!-- IF search_query -->
			<div class="alert alert-warning g__alert g__alert-warning" >[[search:no-matches]]</div>
			<!-- ENDIF search_query -->
			<!-- ENDIF matchCount -->

			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix g__topic-row g__panel g__panel-default g__clearfix">
				<div class="panel-body g__panel-body">

					<a href="{config.relative_path}/post/{posts.pid}" class="search-result-text g__search-result-text">
						<h4>{posts.topic.title}</h4>
					</a>
					<!-- IF showAsPosts -->
					<div class="search-result-text g__search-result-text">
						{posts.content}
						<p class="fade-out g__fade-out"></p>
					</div>
					<!-- ENDIF showAsPosts -->

					<small>
						<span class="pull-right post-preview-footer g__pull-right g__post-preview-footer">
							<a href="{config.relative_path}/user/{posts.user.userslug}">
								<!-- IF posts.user.picture -->
								<img class="user-img g__user-img" title="{posts.user.username}" src="{posts.user.picture}"/>
								<!-- ELSE -->
								<div class="user-icon user-img g__user-icon g__user-img" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
								<!-- ENDIF posts.user.picture -->
							</a>
							<a href="{config.relative_path}/category/{posts.category.slug}">[[global:posted_in, {posts.category.name}]] <i class="fa {posts.category.icon}"></i> <span class="timeago g__timeago" title="{posts.timestampISO}"></span></a>
						</span>
					</small>
				</div>
			</div>
			<!-- END posts -->

			<!-- IF users.length -->
			<ul id="users-container" class="users-container g__users-container">
			<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<!-- ENDIF users.length -->

			<!-- IF tags.length -->
			<!-- IMPORT partials/tags_list.tpl -->
			<!-- ENDIF tags.length -->

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>
