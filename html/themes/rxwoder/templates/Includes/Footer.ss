<section class="footer">
  <div class="row">
    <div class="large-8 columns">
      <% if NavItems('FooterNav') %>
      <ul class="inline-list">
        <% loop NavItems('FooterNav') %>
        <li>
          <% if InternalLink %>
          <a href="$InternalLink.Link" title="Go to the $LinkText.XML page" class="$LinkOrSection">$LinkText</a>
          <% else %>
          <a href="$ExternalLink" title="Go to the $LinkText.XML page" class="$LinkOrSection">$LinkText</a>
          <% end_if %>
        </li>
        <% end_loop %>
      </ul>
      <% end_if %>
    </div>
    <div class="large-4 columns">
      <ul class="inline-list social">
        <li>
          <a href="http://instagram.com/rxwoder" title="Find us on Instagram"><span class="icon-instagram"></span></a>
        </li>
        <li>
          <a href="https://www.facebook.com/rxwoder" title="Follow us on Facebook"><span class="icon-facebook-square"></span></a>
        </li>
      </ul>
    </div>
  </div>
</section>
