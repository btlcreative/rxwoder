<?php
class FooterNavAdmin extends ModelAdmin {

  public static $managed_models = array( 'FooterNav' );

  static $url_segment = 'footer';
  static $menu_title = 'Footer Nav';
  static $menu_priority = 1;

}

?>