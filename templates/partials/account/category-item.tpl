<li component="categories/category" data-cid="{../cid}" data-parent-cid="{../parentCid}" class="row clearfix g__row g__clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 col-md-10 col-sm-12 g__content g__col-xs-12 g__col-md-10 g__col-sm-12 depth-{../depth}">
		<div class="icon pull-left g__icon g__pull-left" style="{function.generateCategoryBackground}">
			<i class="fa g__fa-fw fa-fw {../icon}"></i>
		</div>

		<h2 class="title g__title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description g__description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
		</div>
	</div>

	<!-- IMPORT partials/category/watch.tpl -->
</li>
