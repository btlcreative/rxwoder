<?php
class GridPage extends Page {

	private static $allowed_children = 'none';
    private static $can_be_root = false;

	private static $db = array(
		'isRow' => 'Boolean'
	);

	private static $default = array('isRow'=>true);

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    return $fields;
  }

	public function RenderRows() {
		$rowType = $this->ClassName;
		return $this->renderWith($rowType);
	}
}

class GridPage_Controller extends Page_Controller {

	public function index() {
		Director::direct($this->redirect());
	}
}
