<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/plugins/nodebb-theme-rehau/custom_assets/stylesheet.css" />
	<link rel="stylesheet" type="text/css" href="{relative_path}/plugins/nodebb-theme-rehau/custom_assets/forum.css" />
	<link rel="stylesheet" type="text/css" href="{relative_path}/plugins/nodebb-theme-rehau/custom_assets/tablet_vw.css" />
	<link rel="stylesheet" type="text/css" href="{relative_path}/plugins/nodebb-theme-rehau/custom_assets/responsive.css" />
	<script src="{relative_path}/plugins/nodebb-theme-rehau/custom_assets/js/iframeResizer.contentWindow.min.js"></script>
</head>

<body class="{bodyClass} skin-{config.bootswatchSkin}">
	<nav id="menu" class="slideout-menu hidden g__slideout-menu g__hidden">
		<div class="menu-profile g__menu-profile">
			<!-- IF user.uid -->
			<!-- IF user.picture -->
			<img src="{user.picture}"/>
			<!-- ELSE -->
			<div class="user-icon g__user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
			<!-- ENDIF user.picture -->
			<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
			<!-- ENDIF user.uid -->
		</div>

		<section class="menu-section g__menu-section" data-section="navigation">
			<h3 class="menu-section-title g__menu-section-title">[[global:header.navigation]]</h3>
			<ul class="menu-section-list g__menu-section-list"></ul>
		</section>

		<!-- IF config.loggedIn -->
		<section class="menu-section g__menu-section" data-section="profile">
			<h3 class="menu-section-title  g__menu-section-title">[[global:header.profile]]</h3>
			<ul class="menu-section-list  g__menu-section-list" component="header/usercontrol"></ul>
		</section>

		<section class="menu-section g__menu-section" data-section="notifications">
			<h3 class="menu-section-title g__menu-section-title">
				[[global:header.notifications]]
				<span class="counter unread-count g__unread-count g__counter" component="notifications/icon" data-content="{unreadCount.notification}"></span>
			</h3>
			<ul class="menu-section-list notification-list-mobile g__menu-section-list g__notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list g__menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden g__slideout-menu g__hidden">
		<!-- IF config.loggedIn -->
		<section class="menu-section g__menu-section" data-section="chats">
			<h3 class="menu-section-title g__menu-section-title">
				[[global:header.chats]]
				<i class="counter unread-count g__unread-count g__counter" component="chat/icon" data-content="{unreadCount.chat}"></i>
			</h3>
			<ul class="menu-section-list chat-list g__chat-list  g__menu-section-list" component="chat/list">
				<a class="navigation-link g__navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
			</ul>
		</section>
		<!-- ENDIF config.loggedIn -->
	</nav>

	<main id="panel" class="slideout-panel g__slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header g__navbar g__navbar-default g__navbar-fixed-top g__header" id="header-menu" component="navbar">
			<div class="container g__container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="container g__container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->
