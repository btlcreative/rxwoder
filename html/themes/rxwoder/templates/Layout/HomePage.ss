<% if Children %>
	<% loop Children %>
		$RenderRows
	<% end_loop %>
<% end_if %>



<% if $GetSocialFeed %>
<section class="$ClassName" <% if $RowImage %>style="background-image: url($RowImage.Url);"<% end_if %> >
	<div class="row">
		<div class="large-12 medium-6 columns">
			<h1>facebook</h1>

			<ul class="small-block-grid-2 medium-block-grid-4">
			<% loop $GetSocialFeed %>

			<li style="width: 200px; height: 200px; background-color:pink">
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

		</div>
	</div>
</section>


<% end_if %>
