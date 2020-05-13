<div component="pagination" class="text-center pagination-container g__text-center g__pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
	<ul class="pagination g__pagination hidden-xs g__hidden-xs">
		<li class="previous pull-left g__previous g__pull-left<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
			<a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
		</li>

		<!-- BEGIN pagination.pages -->
			<!-- IF pagination.pages.separator -->
			<li component="pagination/select-page" class="page select-page g__page g__select-page">
				<a class="g__fa-ellipsis-h" href="#"><i class="fa fa-ellipsis-h"></i></a>
			</li>
			<!-- ELSE -->
			<li class="page g__page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
				<a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}">{pagination.pages.page}</a>
			</li>
			<!-- ENDIF pagination.pages.separator -->
		<!-- END pagination.pages -->

		<li class="next pull-right g__next g__pull-right<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
			<a class="g__fa-chevron-right" href="?{pagination.next.qs}" data-page="{pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
		</li>
	</ul>

	<ul class="pagination hidden-sm hidden-md hidden-lg hidden-lg g__pagination g__hidden-sm g__hidden-md g__hidden-lg">
		<li class="first g__first<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
			<a class="g__fa-fast-backward" href="?page=1" data-page="1"><i class="fa fa-fast-backward"></i> </a>
		</li>

		<li class="previous g__previous<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
			<a class="g__fa-chevron-left" href="?{pagination.prev.qs}" data-page="{pagination.prev.page}"><i class="fa fa-chevron-left"></i> </a>
		</li>

		<li component="pagination/select-page" class="page select-page g__page g__select-page">
			<a href="#">{pagination.currentPage} / {pagination.pageCount}</a>
		</li>

		<li class="next g__next<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
			<a class="g__fa-chevron-right" href="?{pagination.next.qs}" data-page="{pagination.next.page}"> <i class="fa fa-chevron-right"></i></a>
		</li>

		<li class="last<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
			<a class="g__fa-fast-forward" href="?page={pagination.pageCount}" data-page="{pagination.pageCount}"><i class="fa fa-fast-forward"></i> </a>
		</li>
	</ul>
</div>