<div component="category/dropdown" class="btn-group pull-right category-dropdown-container bottom-sheet g__btn-group g__pull-right g__category-dropdown-container g__bottom-sheet <!-- IF !categories.length -->hidden<!-- ENDIF !categories.length -->">
    <div type="button" class="btn btn-default dropdown-toggle g__btn g__btn-default g__dropdown-toggle" data-toggle="dropdown">
        <!-- IF selectedCategory -->{selectedCategory.name}<!-- ELSE -->
        [[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret g__caret"></span>
    </div>
    <ul component="category/list" class="dropdown-menu category-dropdown-menu g__dropdown-menu g__category-dropdown-menu" role="menu">
        <li role="presentation" class="category g__category">
            <a class="g__category-filter-a-img" role="menu-item" href="{config.relative_path}/{allCategoriesUrl}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
        </li>
        <!-- BEGIN categories -->
        <li role="presentation" class="category g__category" data-cid="{categories.cid}" data-parent-cid="{categories.parentCid}">
            <a role="menu-item" href="#"><i component="category/select/icon" class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}{categories.name}</a>
        </li>
        <!-- END categories -->
    </ul>
</div>