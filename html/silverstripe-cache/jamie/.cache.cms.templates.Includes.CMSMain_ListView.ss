<?php
$val .= '<div class="cms-content-toolbar">
	';

$val .= SSViewer::execute_template('CMSPagesController_ContentToolActions', $scope->getItem(), array(), $scope);

$val .= '
</div>

<div class="ss-dialog cms-page-add-form-dialog cms-dialog-content" id="cms-page-add-form" title="';

$val .= _t('CMSMain.AddNew','Add new page');
$val .= '">
	';

$val .= $scope->locally()->XML_val('AddForm', null, true);
$val .= '
</div>

<div class="cms-panel-content center">
	';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
	<div class="cms-tree-filtered cms-notice">
		<strong>';

$val .= _t('CMSMain.ListFiltered','Filtered list.');
$val .= '</strong>
		<a href="';

$val .= $scope->locally()->XML_val('LinkPages', null, true);
$val .= '" class="cms-panel-link">
			';

$val .= _t('CMSMain.TreeFilteredClear','Clear filter');
$val .= '
		</a>
	</div>
	';


}
$val .= '

	<div class="cms-list" data-url-list="';

$val .= $scope->locally()->XML_val('Link', array('getListViewHTML'), true);
$val .= '">
		';

$val .= $scope->locally()->XML_val('ListViewForm', null, true);
$val .= '
	</div>
</div>';

