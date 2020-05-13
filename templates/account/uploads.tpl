<div class="account g__account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row g__row">
		<h1 class="g__groups-title">{title}</h1>

        <!-- IF privateUploads -->
        <div class="alert alert-info text-center g__alert g__alert-info g__text-center">[[uploads:private-uploads-info]]</div>
        <!-- ELSE -->
        <div class="alert alert-info text-center g__alert g__alert-info g__text-center">[[uploads:public-uploads-info]]</div>
        <!-- ENDIF privateUploads -->

		<!-- IF !uploads.length -->
			<div class="alert alert-warning text-center g__alert g__alert-warning g__text-center">[[uploads:no-uploads-found]]</div>
		<!-- ENDIF !uploads.length -->

		<div class="col-xs-12 g__col-xs-12">
            <table class="table table-striped g__table g__table-striped">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- BEGIN uploads -->
                    <tr data-name="{uploads.name}">
                        <td>
                            <a href="{config.relative_path}{uploads.url}">{uploads.url}</a>
                        </td>
                        <td>
                            <div class="btn-group g__btn-group">
                                <button class="btn btn-danger btn-xs g__btn g__btn-danger g__btn-xs" data-action="delete"><i class="fa fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    <!-- END uploads -->
                </tbody>
            </table>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>