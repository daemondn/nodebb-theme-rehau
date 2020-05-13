<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->
	<h1 class="categories-title g__categories-title">Настройка профиля</h1>
	<div class="row g__row g__settings-wrapper">
		<div class="col-xs-12 col-md-6 g__col-xs-12 g__col-md-6">
			<!-- IF !disableCustomUserSkins -->
			<h4 class="g__setting-title">[[user:select-skin]]</h4>
			<div class="well g__well">
				<label class="g__settings-select-class-label">
					<select class=" g__settings-select-class form-control g__form-control" id="bootswatchSkin" data-property="bootswatchSkin">
						<!-- BEGIN bootswatchSkinOptions -->
						<option value="{bootswatchSkinOptions.value}" <!-- IF bootswatchSkinOptions.selected -->selected<!-- ENDIF bootswatchSkinOptions.selected -->>{bootswatchSkinOptions.name}</option>
						<!-- END bootswatchSkinOptions -->
					</select>
				</label>
			</div>
			<!-- ENDIF !disableCustomUserSkins -->

			<!-- IF allowUserHomePage -->
			<h4 class="g__setting-title">[[user:select-homepage]]</h4>
			<div class="well g__well">
				<div class="form-group g__form-group">
					<label  class="g__settings-label-class" for="dailyDigestFreq">[[user:homepage]]</label>
					<label class="g__settings-select-class-label">
						<select class=" g__settings-select-class form-control g__form-control" data-property="homePageRoute">
							<option class="g__search-option" value="none">None</option>
							<!-- BEGIN homePageRoutes -->
							<option class="g__search-option" value="{homePageRoutes.route}" <!-- IF homePageRoutes.selected -->selected="1"<!-- ENDIF homePageRoutes.selected -->>{homePageRoutes.name}</option>
							<!-- END homePageRoutes -->
						</select>
					</label>
					<p class="help-block g__help-block">[[user:homepage_description]]</p>
				</div>
				<div id="homePageCustom" class="form-group g__form-group" style="display: none;">
					<label class="g__settings-label-class"  for="homePageCustom">[[user:custom_route]]</label>
					<input type="text" class="form-control g__form-control" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}"/>
					<p class="help-block g__help-block">[[user:custom_route_help]]</p>
				</div>
			</div>
			<!-- ENDIF allowUserHomePage -->

			<h4 class="g__setting-title g__settings-margin">[[global:privacy]]</h4>
			<div class="well g__well">
				<!-- IF !hideEmail -->
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="showemail" <!-- IF settings.showemail -->checked <!-- ENDIF settings.showemail -->/> <strong>[[user:show_email]]</strong>
					</label>
				</div>
				<!-- ENDIF !hideEmail -->

				<!-- IF !hideFullname -->
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="showfullname" <!-- IF settings.showfullname -->checked<!-- ENDIF settings.showfullname -->/> <strong>[[user:show_fullname]]</strong>
					</label>
				</div>
				<!-- ENDIF !hideFullname -->
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="restrictChat" <!-- IF settings.restrictChat -->checked<!-- ENDIF settings.restrictChat -->/> <strong>[[user:restrict_chats]]</strong>
					</label>
				</div>
			</div>

			<h4 class="g__setting-title">[[user:browsing]]</h4>
			<div class="well g__well">
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="openOutgoingLinksInNewTab" <!-- IF settings.openOutgoingLinksInNewTab -->checked<!-- ENDIF settings.openOutgoingLinksInNewTab -->/> <strong>[[user:open_links_in_new_tab]]</strong>
					</label>
				</div>
				<!-- IF inTopicSearchAvailable -->
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="topicSearchEnabled" <!-- IF settings.topicSearchEnabled -->checked<!-- ENDIF settings.topicSearchEnabled -->/> <strong>[[user:enable_topic_searching]]</strong>
					</label>
				</div>
				<p class="help-block g__help-block">[[user:topic_search_help]]</p>
				<!-- ENDIF inTopicSearchAvailable -->
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="scrollToMyPost" <!-- IF settings.scrollToMyPost -->checked<!-- ENDIF settings.scrollToMyPost -->/> <strong>[[user:scroll_to_my_post]]</strong>
					</label>
				</div>
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="delayImageLoading" <!-- IF settings.delayImageLoading -->checked<!-- ENDIF settings.delayImageLoading -->/> <strong>[[user:delay_image_loading]]</strong>
					</label>
				</div>
				<p class="help-block g__help-block">[[user:image_load_delay_help]]</p>
			</div>

			<h4 class="g__setting-title">[[global:pagination]]</h4>
			<div class="well g__well">
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="usePagination" <!-- IF settings.usePagination -->checked<!-- ENDIF settings.usePagination -->> <strong>[[user:paginate_description]]</strong>
					</label>
				</div>

				<strong>[[user:topics_per_page]] ([[user:max_items_per_page, {maxTopicsPerPage}]])</strong><br /> <input type="text" class="form-control g__form-control" data-property="topicsPerPage" value="{settings.topicsPerPage}"><br />
				<strong>[[user:posts_per_page]] ([[user:max_items_per_page, {maxPostsPerPage}]])</strong><br /> <input type="text" class="form-control g__form-control" data-property="postsPerPage" value="{settings.postsPerPage}"><br />
			</div>

			<!-- IF !disableEmailSubscriptions -->
			<h4 class="g__setting-title">[[global:email]]</h4>
			<div class="well g__well">
				<div class="form-group g__form-group">
					<label for="dailyDigestFreq">[[user:digest_label]]</label>
					<select class=" g__settings-select-class form-control g__form-control" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
						<!-- BEGIN dailyDigestFreqOptions -->
						<option value="{dailyDigestFreqOptions.value}" <!-- IF dailyDigestFreqOptions.selected -->selected="1"<!-- ENDIF dailyDigestFreqOptions.selected -->>{dailyDigestFreqOptions.name}</option>
						<!-- END dailyDigestFreqOptions -->
					</select>
					<p class="help-block g__help-block">[[user:digest_description]]</p>
				</div>
			</div>
			<!-- ENDIF !disableEmailSubscriptions -->

		</div>

		<div class="col-xs-12 col-md-6 g__col-xs-12 g__col-md-6 g__padding-zero">
			<h4 class="g__setting-title">[[global:language]]</h4>
			<div class="well g__well g__save-well">
				<div class="row g__row g__save-row">
					<div class="form-group g__form-group col-lg-12 g__language-width">
						<select data-property="userLang" class="form-control g__form-control g__language-userLang">
							<!-- BEGIN languages -->
							<option class="g__search-option" value="{languages.code}" <!-- IF languages.selected -->selected<!-- ENDIF languages.selected -->>{languages.name} ({languages.code})</option>
							<!-- END languages -->
						</select>
					</div>
				</div>
			</div>

			<h4 class="g__setting-title">[[topic:watch]]</h4>
			<div class="well g__well">
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="followTopicsOnCreate" <!-- IF settings.followTopicsOnCreate -->checked <!-- ENDIF settings.followTopicsOnCreate -->/> <strong>[[user:follow_topics_you_create]]</strong>
					</label>
				</div>
				<div class="checkbox g__checkbox">
					<label class="g__settings-checkbox-label">
						<input type="checkbox" class="g__checkbox-input g__settings-checkbox" data-property="followTopicsOnReply" <!-- IF settings.followTopicsOnReply -->checked<!-- ENDIF settings.followTopicsOnReply -->/> <strong>[[user:follow_topics_you_reply_to]]</strong>
					</label>
				</div>
			</div>
			<h4 class="g__setting-title">[[user:notifications_and_sounds]]</h4>
			<div class="well g__well g__notif-setting">
				<!-- BEGIN notificationSettings -->
				<div class="row g__row">
					<div class="form-group g__form-group g__settings-notif-label col-xs-7 g__col-xs-7">
						<label class="g__settings-checkbox-label">{notificationSettings.label}</label>
					</div>
					<div class="form-group g__form-group g__settings-notif-select col-xs-5 g__col-xs-5">
						<label class="g__settings-select-class-label">
							<select class=" g__settings-select-class form-control g__form-control" data-property="{notificationSettings.name}">
								<option class="g__search-option" value="none" <!-- IF notificationSettings.none -->selected<!-- ENDIF notificationSettings.none -->>[[notifications:none]]</option>
								<option class="g__search-option" value="notification" <!-- IF notificationSettings.notification -->selected<!-- ENDIF notificationSettings.notification -->>[[notifications:notification_only]]</option>
								<option class="g__search-option" value="email" <!-- IF notificationSettings.email -->selected<!-- ENDIF notificationSettings.email -->>[[notifications:email_only]]</option>
								<option class="g__search-option" value="notificationemail" <!-- IF notificationSettings.notificationemail -->selected<!-- ENDIF notificationSettings.notificationemail -->>[[notifications:notification_and_email]]</option>
							</select>
						</label>
					</div>
				</div>
				<!-- END notificationSettings -->
			</div>
		</div>
	</div>
	<div class="form-actions g__form-actions g__settings-main-save-btn">
		<a id="submitBtn" href="#" class="btn btn-primary g__btn g__btn-primary g__settings-save-btn">[[global:save_changes]]</a>
	</div>
</div>

