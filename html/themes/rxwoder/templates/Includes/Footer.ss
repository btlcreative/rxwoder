<section class="row">
        <div class="large-8 large-centered columns">
                        <% if NavItems('FooterNav') %>
            <ul style="text-align: center">
                <% loop NavItems('FooterNav') %>
                <li style="display: inline-block; padding: 0 10px;">
                    <% if InternalLink %>
                        <a href="$InternalLink.Link" title="Go to the $LinkText.XML page" class="$LinkOrSection">$LinkText</a>
                    <% else %>
                        <a href="$ExternalLink" title="Go to the $LinkText.XML page" class="$LinkOrSection">$LinkText</a>
                    <% end_if %>
                </li>
                <% end_loop %>
            </ul>
        <% end_if %></div>
            </ul>
        </div>
    </section>