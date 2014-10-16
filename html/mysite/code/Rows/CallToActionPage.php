<?php
class CallToActionPage extends GridPage {

	private static $icon = 'mysite/img/cta.png';
    private static $description = 'Call to action row';

	private static $db = array(
		'CTAText' => 'Text',
		'ButtonText' => 'Text'
	);

	private static $has_one = array(
		'ButtonLink' => 'SiteTree'
	);

  public function getCMSFields() {

    $fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', new TextField('CTAText', 'Call to Action Text'), 'Content');
		$fields->addFieldToTab('Root.Main', new TextField('ButtonText', 'Button Text'), 'Content');

		$buttonLinkTree = new TreeDropdownField('ButtonLinkID', 'Button Link', 'SiteTree');
    $fields->addFieldToTab('Root.Main', $buttonLinkTree, 'Metadata');

		$fields->removeByName('Content');

    return $fields;
  }
}

class CallToActionPage_Controller extends Page_Controller {

	public function index() {
		Director::direct($this->Parent()->Link());
	}
}
