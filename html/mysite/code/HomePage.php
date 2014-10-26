<?php
class HomePage extends Page {

	private static $allowed_children = array("GridPage");
  // private static $allowed_children = array('none');
	// private static $can_be_root = false;
	// private static $defaults = array("ShowInMenus" => 0);

    public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->removeByName('Content');
    $fields->removeByName('HeaderImage');
    return $fields;
  }

	public function ellipsis($text, $max=80, $append='...') {
		if (strlen($text) <= $max) return $text;
		$out = substr($text,0,$max);

		if (strpos($text,' ') === FALSE) return $out.$append;
		return preg_replace('/\w+$/','',$out).$append;
	}

	//////////////////
	// Facebook Widget
	//////////////////
	protected $fb_response = null;

	public function getFacebookFeed() {

		$facebookToken = "620455191398304|b016ab3bef504b468dc76c83f9311bef";
		$facebookURL = 'https://graph.facebook.com/rxwoder/posts?access_token='.$facebookToken.'&limit=10';

		$feedItems= new ArrayList();

		// Get Facebook Posts
		try {

			@$FBpage = file_get_contents($facebookURL);

			if($FBpage) {
				//Interpret data with JSON
				if(function_exists('json_decode')) {
					$FBdata = json_decode($FBpage);

					//Loop through data for each item
					foreach ($FBdata->data as $row ) {

						if ($row->type != 'photo' && (!empty($row->message))) {

							$feedBlock = new SocialFeeds();
							$StatusID = explode("_", $row->id);

							$feedBlock->SourceID = $row->id;
							$feedBlock->PostID = (!empty($StatusID[1])) ? $StatusID[1] : '';
							$feedBlock->SourceName = 'Facebook';

							$message = '';
							if (!empty($row->message) && is_string($row->message)){
								$message = $row->message;
							}

							if (!empty($row->link)) {
								$feedBlock->SourceURL = $row->link;
							}

							$feedBlock->Message = $message;
							$feedBlock->Likes = (!empty($row->likes)) ? count($row->likes->data) : 'No count';

							$feedItems->push($feedBlock);

						}
					}
				}
			} else {
				throw new Exception("Facebook appears to be temporarily unreachable.");
			}

		} catch (Exception $e){
			return $e->getMessage();
		}
		return $feedItems;
	}

	//////////////////
	// Instagram Widget
	//////////////////
	protected $instagram_response = null;

	public function getInstagramFeed() {

		$instagramToken = "08f589f2495c46609cf4f71e2d2cb659";
		$instagramURL = 'https://api.instagram.com/v1/users/1436647264/media/recent/?client_id='.$instagramToken.'&count=8';

		$feedItems= new ArrayList();

		// Get Instagram Pictures
		try {

			@$instagramRequest = file_get_contents($instagramURL);

			if($instagramRequest) {
				//Interpret data with JSON
				if(function_exists('json_decode')) {
					$instagramResults = json_decode($instagramRequest);

					//Loop through data for each news item
					foreach ($instagramResults->data as $row ) {
						$feedBlock = new SocialFeeds();
						$feedBlock->PictureURL = $row->images->standard_resolution->url;
						$feedBlock->SourceID = $row->id;
						$feedBlock->SourceName = 'Instagram';

						if (!empty($row->link)) {
							$feedBlock->SourceURL = $row->link;
						}

						$feedItems->push($feedBlock);
					}
				}
			} else {
				throw new Exception("Instagram appears to be temporarily unreachable.");
			}
		} catch (Exception $e){
			return $e->getMessage();
		}

		$feedCount = count($feedItems);
		for ($i=0; $i < $feedCount/2; $i++) {
			if ($i % 2 != 0 ) {
				$temp = $feedItems[$feedCount - $i - 1];
				$feedItems[$feedCount - $i - 1] = $feedItems[$i];
				$feedItems[$i] = $temp;
			}
		}
		return $feedItems;
	}

}

class HomePage_Controller extends Page_Controller {
}
