app.directive('topSearchToggle', function() {
	return {
		restrict: 'A',
		link: function(scope, elem, attrs) {
			elem.click(function() {
				var tagetElem = attrs.topSearchToggle;
				$(tagetElem).slideToggle();	
			});
		}
	}
});
app.directive('accordionToggle', function() {
	return {
		restrict: 'A',
		link: function(scope, elem, attrs) {
			elem.click(function() {
				var parent = $(this).parents('.accordion-item');
				$('.info', parent).slideToggle();
				elem.toggleClass('selected');
			});
		}
	}
});

app.directive('scrollToAccordion', function() {
	return {
		restrict: 'A',
		link: function(scope, elem, attrs) {
			elem.click(function() {
				var taget = attrs.scrollToAccordion;
				if(taget) {
					var tagetElem = $(taget);
					var accordionTitle = tagetElem.find('[accordion-toggle]');
				
					if(!accordionTitle.hasClass('selected'))
					{
						var parent = tagetElem.parents('.accordion-item');
						$('.info', parent).slideToggle();
						accordionTitle.toggleClass('selected');	
					}
				
					//Scroll to target
					var scrollPt = tagetElem.offset().top,
						scrollPos =  $('body').scrollTop();

				   $('body').animate({
					   scrollTop: scrollPt
				   }, Math.abs(scrollPos - scrollPt));
				}
			});
		}
	}
});