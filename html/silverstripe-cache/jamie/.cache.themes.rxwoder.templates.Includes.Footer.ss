<?php
$val .= '<section>
  <div class="row">
    <div class="large-8 large-centered columns">
      ';

if ($scope->locally()->hasValue('NavItems', array('FooterNav'), true)) { 
$val .= '
      <ul style="text-align: center">
        ';

$scope->locally()->obj('NavItems', array('FooterNav'), true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
          <li style="display: inline-block; padding: 0 10px;">
            ';

if ($scope->locally()->hasValue('InternalLink', null, true)) { 
$val .= '
            <a href="';

$val .= $scope->locally()->obj('InternalLink', null, true)->XML_val('Link', null, true);
$val .= '" title="Go to the ';

$val .= $scope->locally()->obj('LinkText', null, true)->XML_val('XML', null, true);
$val .= ' page" class="';

$val .= $scope->locally()->XML_val('LinkOrSection', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('LinkText', null, true);
$val .= '</a>
            ';


}else { 
$val .= '
            <a href="';

$val .= $scope->locally()->XML_val('ExternalLink', null, true);
$val .= '" title="Go to the ';

$val .= $scope->locally()->obj('LinkText', null, true)->XML_val('XML', null, true);
$val .= ' page" class="';

$val .= $scope->locally()->XML_val('LinkOrSection', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('LinkText', null, true);
$val .= '</a>
            ';


}
$val .= '
          </li>
        ';


}; $scope->popScope(); 
$val .= '
      </ul>
      ';


}
$val .= '</div>
      </ul>
    </div>
  </div>
</section>
';

