<?php
class CommonMistakePage extends GridPage {

	private static $icon = 'mysite/img/4-8.png';
  private static $description = 'Grid row, intended for Image 33% width and 66% Content Area width';

	private static $db = array(
		'RowText' => 'HTMLText'
	);

	private static $has_one = array(
		'RowImage' => 'Image'
	);

  public function getCMSFields() {

    $fields = parent::getCMSFields();

		$imagefield = new UploadField('RowImage', 'Row Feature Image');
		$imagefield->allowedExtensions = array('jpg', 'jpeg', 'png', 'gif');
		$imagefield->setFolderName('Images');

		$fields->addFieldToTab('Root.Main', $imagefield, 'Content');
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('RowText', 'Text Area'), 'Content');

		$fields->removeByName('Content');

    return $fields;
  }
}

class CommonMistakePage_Controller extends Page_Controller {

	public function index() {
		Director::direct($this->Parent()->Link());
	}
}
