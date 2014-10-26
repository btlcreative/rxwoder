<?php
class BioPage extends Page {

	private static $db = array();
	private static $allowed_children = array("GridPage");

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    return $fields;
  }

}

class BioPage_Controller extends Page_Controller {
}
