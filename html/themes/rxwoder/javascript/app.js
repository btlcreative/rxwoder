// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();

// trigger for joyride demo in KitchenSink demo
$('#start-jr').on('click', function() {
	$(document).foundation('joyride','start');
});

$('.menu-toggle').click(function (e) {
    $('body').toggleClass("open");
    e.preventDefault();
    return false;
})