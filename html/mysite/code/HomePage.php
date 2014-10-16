<?php
class HomePage extends Page {

	private static $allowed_children = array("GridPage");

    public function getCMSFields() {
    $fields = parent::getCMSFields();
    return $fields;
  }
}

class HomePage_Controller extends Page_Controller {
}
