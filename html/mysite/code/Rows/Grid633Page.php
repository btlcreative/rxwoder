<?php
class Grid633Page extends GridPage {

	private static $icon = 'mysite/img/6-3-3.png';
	private static $description = 'Grid row, intended for one 50% and two 25% Content Area widths';

	private static $db = array(
		'ValuePropText' => 'HTMLText',
		'Ingredients' => 'HTMLText',
		'Affects' => 'HTMLText'
	);

	private static $has_one = array(
	);

  public function getCMSFields() {

    $fields = parent::getCMSFields();

		$valuePropField = new HTMLEditorField('ValuePropText', 'Value Proposition Text Area');
		$valuePropField->setRows(20);

		$ingredientsField = new HTMLEditorField('Ingredients', 'RxWoDer Ingredients');
		$ingredientsField->setRows(5);

		$affectsField = new HTMLEditorField('Affects', 'RxWoDer Affects');
		$affectsField->setRows(5);

		$fields->addFieldToTab('Root.Main', $valuePropField, 'Content');
		$fields->addFieldToTab('Root.Main', $ingredientsField, 'Content');
		$fields->addFieldToTab('Root.Main', $affectsField, 'Content');

		$fields->removeByName('Content');

    return $fields;
  }
}

class Grid633Page_Controller extends Page_Controller {

	public function index() {
		// die(Director::redirect());
		Director::redirect($this->Link('/'));
		// director::redirect($this->Parent()->Link());
	}
}
