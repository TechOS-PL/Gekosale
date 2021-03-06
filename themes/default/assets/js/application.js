/*!
 * Created by ONESIDE.PL Jonatan Polak (jonatanpolak@gmail.com)
 */

function qtySpinner(){
    if ($('.spinnerhide').length != 0){
    	$('.spinnerhide').each(function(){
    		var packagesize = $(this).attr('data-packagesize');
    		var places = ((packagesize % 1) > 0) ? 2 : 0;
    		$(this).spinner({min: packagesize, max: 100, width: 20, places: places, step: packagesize}).width(50);
    	});
    }
}

jQuery(function($) {
   
    var OnesideEngine = {
        plugins : {
            nav : function () {
                $('ul.nav li.dropdown').hover(function() {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn();
                }, function() {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut();
                });
            },
            
            login : function () {
                $('#loginTop').hover(function() {
                    $(this).find('.dropdown-toggle').addClass('active');
                    $('#loginTopContent').stop(true, true).delay(200).show();
                }, function () {
                    $(this).find('.dropdown-toggle').removeClass('active');
                    $('#loginTopContent').stop(true, true).delay(200).hide();
                });
            },
            
            basket : function () {
                $('#topBasket').hover(function() {
                    $('#topBasketContent').stop(true, true).delay(100).fadeIn();
                }, function () {
                    $('#topBasketContent').stop(true, true).delay(100).fadeOut();
                });
                qtySpinner();
            },
            
            productGallery : function () {
                if ($('#productInfo .image-slider').length != 0) {
                    $('ul', $('#productInfo .image-slider')).jcarousel({
                        scroll:1,
                        buttonNextHTML: null,
                        buttonPrevHTML: null,
                        initCallback: function(carousel){
                        	$('.slider-moveRight', $('#productInfo')).bind('click', function() {
                                carousel.next();
                                return false;
                            });

                            $('.slider-moveLeft', $('#productInfo')).bind('click', function() {
                                carousel.prev();
                                return false;
                            });
                        }
                    });

                    $('li a', $('#productInfo .image-slider ul')).bind('click', function(e) {
                        e.preventDefault();
                        var href = $(this).attr('href');
                        var large = $('#productInfo .image-large img');
                        $('#productInfo .image-large a').attr('href', href);
                        $('#productInfo .image-slider ul li.active').removeClass('active');
                        $(this).parent().addClass('active');
                        large.attr('src', href);
                        return false;
                    });
                }
            },
            
            star : function () {
                if ($('.star').length != 0)
                    $('.star').each(function(){
                    	$(this).raty({
                        	readOnly : $(this).hasClass('readonly') ? true : false,
                        	target: $(this).attr('data-target'),
                        	targetKeep: true,
                        	targetType : 'number',
                        	score: function() {
                        	    return $(this).attr('data-rating');
                        	},
                        	path: GCore.ASSETS_PATH + 'img/'
                        });
                    });
            },
            categoryTabs: function(){
            	$('#productTab li:first-child a').click();
            },
            load : function () {
                OnesideEngine.plugins.nav();
                OnesideEngine.plugins.login();
                OnesideEngine.plugins.basket();
                OnesideEngine.plugins.productGallery();
                OnesideEngine.plugins.star();
                OnesideEngine.plugins.categoryTabs();
            }
        }
    }
    
    OnesideEngine.plugins.load();
    
});