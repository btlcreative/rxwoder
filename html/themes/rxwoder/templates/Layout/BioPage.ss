<% if HeaderImage %>
<section class="FeatureHeaderPage" <% if HeaderImage %>style="background-image: url($HeaderImage.Url);"<% end_if %> >
	<div class="row">
		<div class="large-8 medium-6 columns">
			<h2>$Title</h2>
		</div>
	</div>
</section>
<% end_if %>

<section class="block">
  <div class="row">
    <div class="large-9 large-centered columns">
      $Content
    </div>
  </div>
</section>
