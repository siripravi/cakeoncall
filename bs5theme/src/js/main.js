$(document).ready(function() {

    $('a').on('click', function(e) {
        const href = $(this).attr('href');
        
        if(href.indexOf('#') === 0) {
            $("html, body").stop().animate({
                scrollTop: $(href).offset().top
            });
        }
    });

});