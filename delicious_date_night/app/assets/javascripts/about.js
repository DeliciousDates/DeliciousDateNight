window.onload = function () {

	// var active = $('li.active');
	// var activePill = active.find('a').attr('id');
	// var content = $('.details .' + activePill);
	// console.log(content);
	// //content.css('display', 'block');

	$('li').on("click", function(){

		// remove all active classes
		$('.about-list li').removeClass('active');
		$('.about-list div.details').removeClass('active');

		// find out which li was clicked, grap the 'id' for that
		var newlyActive = $(this);
		newlyActive.addClass('active');
		var contentType = newlyActive.find('a').attr('id');

		// make the corresponding content 'active'
		$('.about-list div.details.' + contentType).addClass('active');
	});
};	

