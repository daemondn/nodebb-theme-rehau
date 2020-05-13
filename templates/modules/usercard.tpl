<div class="persona-usercard g__persona-usercard">
	<a href="{config.relative_path}/user/{userslug}">
		<!-- IF picture -->
		<div class="usercard-picture g__usercard-picture" style="background-image:url({picture})"></div>
		<!-- ELSE -->
		<div class="usercard-picture g__usercard-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
		<!-- ENDIF picture -->
	</a>
	<div class="usercard-body g__usercard-body">
		<a href="{config.relative_path}/user/{userslug}">
			<span class="usercard-name g__usercard-name"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span><br />
			<span class="usercard-username g__usercard-username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></span>
			<!-- IF !banned -->
			<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
			<!-- ENDIF !banned -->
		</a>

		<div class="row usercard-info g__row g__usercard-info">
			<div class="col-xs-4 g__col-xs-4">
				<small>[[global:posts]]</small>
				<span class="human-readable-number g__human-readable-number">{postcount}</span>
			</div>
			<div class="col-xs-4 g__col-xs-4">
				<small>[[global:reputation]]</small>
				<span class="human-readable-number g__human-readable-number">{reputation}</span>
			</div>
			
			<button class="btn-morph g__btn-morph fab <!-- IF banned --> hide<!-- ENDIF banned -->">
				<span>
					<span class="s1 g__s1"></span>
					<span class="s2 g__s2"></span>
					<span class="s3 g__s3"></span>
				</span>
			</button>
		</div>
	</div>
</div>