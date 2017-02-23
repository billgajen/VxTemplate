app.directive('scrollTo', function() {
	return {
		restrict: 'A',
		link: function(scope, elem, attrs) {
			elem.click(function() {
				var taget = attrs.scrollTo;
				if(taget) {
					var tagetElem = $(taget);

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

app.directive('focusElement', function() {
	return {
		restrict: 'A',
		link: function(scope, elem, attrs) {
			elem.click(function() {
				var taget = attrs.focusElement;
				if(taget) {
					var tagetElem = $(taget);

					tagetElem.focus();
				}
			});
		}
	}
});