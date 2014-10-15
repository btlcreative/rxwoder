<?php
class Grid84Page extends GridPage {

	private static $icon = 'mysite/img/8-4.png';
  private static $description = 'Grid row, intended for 66% Content Area width and Image 33% width';

	private static $db = array(
		'RowText' => 'HTMLText'
	);

	private static $has_one = array(
		'RowImage' => 'Image'
	);

  public function getCMSFields() {

    $fields = parent::getCMSFields();

		$imagefield = new UploadField('RowImage', 'Feature Background Image');
		$imagefield->allowedExtensions = array('jpg', 'jpeg', 'png', 'gif');
		$imagefield->setFolderName('Images');

		$fields->addFieldToTab('Root.Main', new HTMLEditorField('RowText', 'Text Area'), 'Content');
		$fields->addFieldToTab('Root.Main', $imagefield, 'Content');

		$fields->removeByName('Content');

    return $fields;
  }
}

class Grid84Page_Controller extends Page_Controller {

	public function index() {
		Director::direct($this->Parent()->Link());
	}
}
