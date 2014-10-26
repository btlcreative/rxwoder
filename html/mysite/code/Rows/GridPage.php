<?php
class GridPage extends Page {

	private static $allowed_children = 'none';
  private static $can_be_root = false;
  // private static $allowed_children = array('none');
	// private static $can_be_root = false;
	private static $defaults = array('ShowInMenus' => 0);


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

  public function canCreate($Member = null){
    return ($this->ClassName != "GridPage");
  }
}

class GridPage_Controller extends Page_Controller {

	public function index() {
		Director::direct($this->redirect());
	}
}
