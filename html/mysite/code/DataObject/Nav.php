<?php
class Nav extends DataObject {
  static $db = array(
    'LinkText' => 'Text',
    'ExternalLink' => 'Text'
  );

  static $has_one = array(
    'InternalLink' => 'SiteTree'
  );

  static $summary_fields = array(
    'LinkText'
  );

  static $searchable_fields = array(
    'LinkText'
  );

  function getCMSFields() {

    $fields = new FieldList();

    $fields->push( new TextField( 'LinkText', 'Menu link title' ) );
    $fields->push( new TextField( 'ExternalLink', 'External Link<br />(Optional - you may use external or internal. <br /><em>*If both are used external will take precedence.</em>)' ) );
    $fields->push( new TreeDropdownField( 'InternalLinkID', 'Internal Link<br />(Optional*)', 'SiteTree' ) );

    return $fields;
  }

}