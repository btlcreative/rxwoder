<?php
class BioPage extends Page {

	private static $db = array();

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    return $fields;
  }

}

class BioPage_Controller extends Page_Controller {
}
