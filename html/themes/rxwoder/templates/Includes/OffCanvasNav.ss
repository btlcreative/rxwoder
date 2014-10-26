<div id="off-canvas-nav">
    <div class="menu-toggle">
        <?xml version="1.0" encoding="utf-8"?>
        <!-- Generator: Adobe Illustrator 18.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
        <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             viewBox="0 0 40 40" enable-background="new 0 0 40 40" xml:space="preserve">
        <g>
            <path d="M0,8.5c0-1.6,1.3-2.9,2.9-2.9h34.4c1.6,0,2.9,1.3,2.9,2.9c0,1.5-1.3,2.9-2.9,2.9H2.9C1.3,11.4,0,10,0,8.5z M40.1,20
                c0,1.5-1.3,2.9-2.9,2.9H2.9C1.3,22.9,0,21.5,0,20c0-1.6,1.3-2.9,2.9-2.9h34.4C38.8,17.1,40.1,18.4,40.1,20z M40.1,31.5
                c0,1.5-1.3,2.9-2.9,2.9H2.9c-1.6,0-2.9-1.4-2.9-2.9c0-1.6,1.3-2.9,2.9-2.9h34.4C38.8,28.6,40.1,29.9,40.1,31.5z"/>
        </g>
        </svg>

    </div>
    <div class="menu">
        <% loop Menu(1) %>
            <a style="height: $NavPercent($TotalItems)%;" class="<% if $LinkingMode == "current" || $LinkingMode == "section" %>active<% end_if %>"href="$Link" title="Go to the $Title.ATT">
                <span>
                    $MenuTitle
                </span>
            </a>
        <% end_loop %>
    </div>
</div>