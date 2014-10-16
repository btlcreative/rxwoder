<?php
class HomePage extends Page {

	private static $allowed_children = array("GridPage");

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    return $fields;
  }



	//////////////////
	// Social Widget
	//////////////////

	protected $fb_response = null;
	protected $instagram_response = null;

	public function GetSocialFeed() {

	$facebookToken = "620455191398304|b016ab3bef504b468dc76c83f9311bef";
	$instagramToken = "08f589f2495c46609cf4f71e2d2cb659";

	$facebookURL = 'https://graph.facebook.com/rxwoder/posts?access_token='.$facebookToken.'&limit=1';
	$instagramURL = 'https://api.instagram.com/v1/users/3/media/recent/?client_id='.$instagramToken.'&count=9';

	$feedItems= new ArrayList();

	// Get Facebook Posts
	try {

	@$FBpage = file_get_contents($facebookURL);

	if($FBpage){
		//Interpret data with JSON
		if(function_exists('json_decode')) {
			$FBdata = json_decode($FBpage);


			//Loop through data for each item
			foreach ($FBdata->data as $row ) {
				$feedBlock = new FeedBlock();

				$StatusID = explode("_", $row->id);
				// if ($row->type == 'photo') {
				//     $imageUrl = "https://graph.facebook.com/{$row->object_id}?fields=source";
				//     $imageResponse = json_decode(file_get_contents($imageUrl));
				//     $feedBlock->PictureURL = $imageResponse->source;
				// }

				$feedBlock->SourceID = $row->id;
				$feedBlock->PostID = (!empty($StatusID[1])) ? $StatusID[1] : '';
				$feedBlock->SourceName = 'Facebook';

				if (!empty($row->link)) {
					$feedBlock->SourceURL = $row->link;
				}

				if (!empty($row->message) && is_string($row->message)){
					$message = $this->ellipsis($row->message);
				} else {
					$message = $this->ellipsis($row->story);
				}

				$feedBlock->Message = $message;
				$feedBlock->Likes = (!empty($row->likes->count)) ? $row->likes->count : '';

				$feedItems->push($feedBlock);
			}
		}
	}else {
		throw new Exception("Facebook appears to be temporarily unreachable.");
	}


	} catch (Exception $e){
		return $e->getMessage();
	}


	// Get Instagram Pictures
	try {

		@$instagramRequest = file_get_contents($instagramURL);

		if($instagramRequest){
		//Interpret data with JSON
		if(function_exists('json_decode')) {
			$instagramResults = json_decode($instagramRequest);

			//Loop through data for each news item
			foreach ($instagramResults->data as $row ) {
				$feedBlock = new FeedBlock();
				$feedBlock->PictureURL = $row->images->standard_resolution->url;
				$feedBlock->SourceID = $row->id;
				$feedBlock->SourceName = 'Instagram';

				if (!empty($row->link)) {
					$feedBlock->SourceURL = $row->link;
				}

				$feedItems->push($feedBlock);
			}
		}
		}else {
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
