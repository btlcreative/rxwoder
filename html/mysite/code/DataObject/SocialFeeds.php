<?php
class SocialFeeds extends DataObject {

  public static $db = array(
    'SourceName'=>'varchar(200)',
    'SourceID'=>'varchar(200)',
    'SourceURL'=>'Text',
    'Message'=>'Text',
    'Posted'=>'SS_Datetime',
    'Likes'=>'Int',
    'PictureURL'=>'Text'
  );
}
