<% if AllChildren %>
	<% loop AllChildren %>
		$RenderRows
	<% end_loop %>
<% end_if %>



<% if $FacebookFeed %>
<section class="facebook">
	<div class="large-6 medium-10 medium-centered columns message">

		<% loop $FacebookFeed %>
		<article>
			<%-- <span class="icon-facebook-square"></span> --%>
			<div>
				<% if $Message %>$Message<% end_if %>
			</div>
		</article>

		<% end_loop %>
	</div>
</section>
<% end_if %>


<% if $InstagramFeed %>
<section class="instagram">
		<%-- <span class="icon-instagram"></span> --%>
		<ul class="small-block-grid-4 medium-block-grid-8">
		<% loop $InstagramFeed %>

			<li>
				<a href="$SourceURL" target="_blank" title="<% if $Message %>$Message<% end_if %>">

				<% if $PictureURL %>
					<div class="image-wrapper">
						<img src="$PictureURL" alt="<% if $Message %>$Message<% end_if %>">
					</div>
				<% end_if %>
				<% if $Message %>$Message<% end_if %>
				</a>
			</li>

		<% end_loop %>
		</ul>

</section>
<% end_if %>
