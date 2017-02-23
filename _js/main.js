$(function() {

	var Module = (function () {
		var html = $('html');

		// ---------- On load/resize, toggle a class between mobile/desktop mode
		function deviceClass() {
			if ($(window).width() < 976 && !(new RegExp('MSIE [78]')).exec(navigator.userAgent)) {
				if (!html.hasClass('isMobile')) {
					html.addClass('isMobile').removeClass('isDesktop');
				}

			} else {
				if (!html.hasClass('isDesktop')) {
					html.addClass('isDesktop').removeClass('isMobile');
				}
			}
		}
		deviceClass();

		function resizeLoginVideo() {
			var wrapperWidth = $('.wrapper.login').outerWidth(),
				offMarginWidth = wrapperWidth -30,
				loginVideo = $('.isDesktop .login .bckgd-video');

			loginVideo.css({
				width: offMarginWidth
			});

			var screenHeight = $(window).height(),
				offMarginHeight = screenHeight - 63,
				vidoeHeight = loginVideo.outerHeight(),
				actualVideoHeight = 754,
				VideoWidth = loginVideo.outerWidth(),
				loginVideoParent = loginVideo.parent();

			if(vidoeHeight < offMarginHeight) {
				loginVideo.css({
					height: offMarginHeight,
				});
				loginVideo.css('width', 'auto');

			}

			loginVideoParent.css({
				height: offMarginHeight
			});

			if(VideoWidth > wrapperWidth) {
				var widthDifference = VideoWidth - wrapperWidth,
					leftPos = widthDifference/2 - 55;

				loginVideo.css('left', -leftPos);
			}
		}
		resizeLoginVideo();

		function general() {
			//---- Navigation
			var address = (window.location.href.split(/[\#\?]/)[0].split('/').slice(3));

			$.each($('div.vx_menu a'), function() {
				var location = this.href.split('/').slice(3);

				// if the location and address are the same
				// if the beginning folder is the same and there is no second page
				if (address[0] !== '' && (location.join('/') == address.join('/') || (location[0] == address[0] && !location[1]))) {
					var active_elements = $(this).parents().filter('li').addClass('selected');
				} else if (address[0] === '') {
					$(this).parents().filter('li.first').addClass('selected');
				}
			});

			// Site Search Popup
			$('.search-button').on('click', function() {
				$('.site-search-form').show();
				$('.site-search-form input[type="text"]').focus();
			});
			$('.close-button').on('click', function() {
				$('.site-search-form').hide();
			});
			$(document).keyup(function(e) {
				if (e.keyCode == 27) {
					$('.site-search-form').hide();
				}
			});

			// Google reCaptcha
			$('form').submit(function() {
				if (grecaptcha.getResponse().length === 0) {
					alert('The reCaptcha form was not completed.  Please try again.');
					return false;
				} else {
					return true;
				}
			});

			// Mobile Nav
			$('.mobile-nav').on('click', function() {
				$(this).addClass('open');
				$('.isMobile .main-nav').slideToggle();
				$('.isMobile .your-profile').slideToggle();
			});

			// Update Gallery attribute 'data-lightbox' value
			$('.image-gallery').each(function (i){
				var imageGalleryNumber = i + 1;
				$('.image-gallery-item .vx_image a', this).attr('data-lightbox', 'image-gallery-x' +imageGalleryNumber + '');
			});

			// News Filter
			var filterItem = $('.filter-item');

			filterItem.on('change', function() {
				var newsTypeVal = $('#news-type').val();
				page = 1;
				$.get("/search/news-filter-results_hidden.aspx?newsTypeId="+newsTypeVal+"", function(result) {
					$('.article-listing').empty();
					if(result.length < 10){
						result = '<div class=\"row people-listing-item search\">Sorry, there are no results that match your search criteria</div>';
					}
					$('.article-listing').append(result);

					var totalResults = parseInt($('.total-results').text()),
						totalListedItems = $('.article-item').length;

					if(totalResults === totalListedItems) {
						$('.load-more').hide();
					} else if(totalResults > totalListedItems) {
						$('.load-more').show();
					}
				});	
			});

			// Loadmore
			var loadMore = $('.load-more'),
				totalResults = parseInt($('.total-results').text()),
				page = 1,
				totalListedItems = $('.article-item').length;

			if(totalResults === totalListedItems) {
				$('.load-more').hide();
			}

			loadMore.on('click', function(e) {
				e.preventDefault();
				page = page + 1;
				if($(this).hasClass('news-insight')) {
					$.get("/search/news-results_hidden.aspx?page="+page+"", function(result) {
						$('.article-listing').append(result);
						var totalListedItems = $('.article-item').length;

						if(totalResults === totalListedItems) {
							$('.load-more').hide();
						}
					});	
				}
			});

			setTimeout(function(){ 
				var bgVideoWidth = $('.bckgd-video').outerWidth(),
					heroRowContentWidth = $('.hero .row-content').outerWidth(),
					gap = bgVideoWidth - heroRowContentWidth,
					marLeft = -gap/2;

				$('.bckgd-video').css('margin-left', marLeft);
			}, 1000);
		}
		general();

		return {
			deviceClass: deviceClass,
			resizeLoginVideo: resizeLoginVideo,
			general: general
		};

	})();

	// ---------- Functions on resize
	$(window).resize(function () {
		Module.deviceClass();
		$('.isMobile .login .bckgd-video').parent().hide();
		$('.isDesktop .login .bckgd-video').parent().show();
	});
});
