document.addEventListener("DOMContentLoaded", function(event) {
    $(document).ready(function() {
        if ($(window).width() > 992) {
            $('#image').elevateZoom({
                zoomWindowFadeIn: 500,
                zoomWindowFadeOut: 500,
                zoomWindowOffetx: 20,
                zoomWindowOffety: -1,
                cursor: "pointer",
                lensFadeIn: 500,
                lensFadeOut: 500,
                zoomWindowWidth: 500,
                zoomWindowHeight: 500
            });
            var z_index = 0;

            $(document).on('click', '.open-popup-image', function() {
                $('.popup-gallery').magnificPopup('open', z_index);
                return false;
            });

            $(".image-next").on("click", function() {
                if ($(".image-active").parent().parent().next().find('a').length) {
                    $(".image-active").parent().parent().next().find('a').trigger("click");
                } else {
                    $(".image-active").parent().parent().siblings(":first").find('a').trigger("click");
                }
            });
            $(".image-prev").on("click", function() {
                if ($(".image-active").parent().parent().prev().find('a').length) {
                    $(".image-active").parent().parent().prev().find('a').trigger("click");
                } else {
                    $(".image-active").parent().parent().siblings(":last").find('a').trigger("click");
                }
            });
            setTimeout(function() {
                $(".zoom-thumbnails a:third").trigger('click');
            }, 1);

            $('.zoom-thumbnails a, .thumbnails-carousel a').click(function(e) {
                $(".thumbnails-carousel a").removeClass("image-active");
                $(".zoom-thumbnails a").removeClass("image-active");
                $(this).addClass("image-active");
                var smallImage = $(this).attr('data-image');
                var largeImage = $(this).attr('data-zoom-image');
                var ez = $('#image').data('elevateZoom');
                $('#ex1').attr('href', largeImage);
                ez.swaptheimage(smallImage, largeImage);
                z_index = $(this).index('.zoom-thumbnails a, .thumbnails-carousel a');
                if (!e.currentTarget.className.includes('mfp-iframe')) {
                    $('.vdo-thumb-lg').hide();
                } else {
                    $('.vdo-thumb-lg').show();
                }
                return false;
            });
        } else {
            $(document).on('click', '.open-popup-image', function() {
                $('.popup-gallery').magnificPopup('open', 0);
                return false;
            });
        }
    });
});
window.addEventListener('load', function() {
    $("#thumb-slider").owlCarousel({
        nav: true,
        navText: ['<i aria-label="left" class="fa fa-angle-left"></i>', '<i aria-label="right" class="fa fa-angle-right"></i>'],
        autoplay: true, //Set AutoPlay to 3 seconds
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
});
window.addEventListener('load', function() {
    $(document).mouseup(function(e) {
        if ($(e.target).closest(".share-open").length === 0) {
            $(".share-open").hide();
        }
    });
});
window.addEventListener('load', function() {
    $(document).ready(function() {
        $(".share-click").click(function() {
            $(".share-open").toggle();
        });
    });
});
var a2a_config = a2a_config || {};
//a2a_config.onclick = 1;
a2a_config.num_services = 4;
window.addEventListener('load', function() {
    $('.collapser').click(function() {
        $(this).next().collapse('toggle');
        $(this).toggleClass("active");
    });
    $('[data-toggle="popover-hover"]').popover({
        html: true,
        trigger: 'hover',
        placement: 'top',
        content: function() {
            var colortext = $(this).attr('data-color');
            var varianttext = ''; //$(this).attr('data-variant');
            var materialtext = $(this).attr('data-material');
            setTimeout(function() {
                $('.name-pr').empty();
                $('.popover-body').append('<p class="name-pr" style="font-size:10px; margin: 0px;">' + colortext + '<span>' + varianttext + '</span>' + materialtext + '</p>');
            });
            return '<img src="' + $(this).data('img') + '" />';
        }
    });
});
window.addEventListener('load', function() {
    $(document).ready(function() {
        express_shipping = '';
        if (express_shipping) {
            var pdp_check_postcode = getCookie('pdp_check_postcode');
            if (pdp_check_postcode == null || pdp_check_postcode == '') {
                $('#postcode_check').val('201301');
                pdp_check_postcode = '201301';
            }
            if (pdp_check_postcode != null && pdp_check_postcode != '') {
                $('#postcode_check').val(pdp_check_postcode);
                if (validationcheck()) {
                    var is_fynd = '1';
                    var product_id = '7921122';
                    var product_id_check = '450804';
                    var weight = '0';
                    var check_product = '';
                    var store_id = '73';
                    var postcode = $('#postcode_check').val();
                    setCookie('pdp_check_postcode', postcode);
                    if (is_fynd && product_id != 0) {
                        var option = $('#product input[type=\'radio\']:checked').next().html();
                        if (typeof option == 'undefined') {
                            option = $('.radio.radio-type-button2:first-child').find('label').first().html();
                        }
                        var post_data = 'postcode_check=' + $('#postcode_check').val() + '&product_id=' + product_id + '&option=' + option;
                    } else if (express_shipping && product_id != 0) {
                        var option = $('#product input[type=\'radio\']:checked').next().html();
                        if (typeof option == 'undefined') {
                            option = $('.radio.radio-type-button2:first-child').find('label').first().html();
                        }
                        var post_data = 'postcode_check=' + $('#postcode_check').val() + '&product_id=' + product_id + '&option=' + option + '&store_id=' + store_id;
                    } else {

                        var post_data = 'postcode_check=' + $('#postcode_check').val() + '&weight=' + weight;
                        if (check_product) {
                            post_data += "&product_id=" + product_id_check;
                        }
                    }

                    $.ajax({
                        url: 'https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode',
                        type: 'post',
                        data: post_data,
                        dataType: 'json',
                        beforeSend: function() {
                            $('#chkzipcod_response').html('<img src="image/ajax-loader.gif"/>');
                        },
                        success: function(json) {
                            if (json['success']) {
                                $('#chkzipcod_response').html(json['success']);
                            }
                            if (typeof json['pixel'] != 'undefined') {
                                $("body").append(json['pixel']);
                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            }
        }
        $('.form-controltxt').keypress(function(event) {
            if (event.keyCode == 13) {
                event.preventDefault();
                submitchkzipcodform();
            }
            if (event.which < 48 || event.which > 57) {
                event.preventDefault();
            }
        });
    });
});

function submitchkzipcodform(form) {
    if (validationcheck()) {
        var is_fynd = '1';
        var product_id = '7921122';
        var product_id_check = '450804';
        var weight = '0';
        var check_product = '';
        var store_id = '73';
        var postcode = $('#postcode_check').val();
        $("#express_apply_postcode_view").text(postcode);
        $("#express_apply_postcode_view_m").text(postcode);
        $("#apply_postcode").val(postcode);
        setCookie('pdp_check_postcode', postcode);
        if (is_fynd && product_id != 0) {
            var option = $('#product input[type=\'radio\']:checked').next().html();
            if (typeof option == 'undefined') {
                option = $('.radio.radio-type-button2:first-child').find('label').first().html();
            }
            var post_data = 'postcode_check=' + $('#postcode_check').val() + '&product_id=' + product_id + '&option=' + option;
        } else if (express_shipping && product_id != 0) {
            var option = $('#product input[type=\'radio\']:checked').next().html();
            if (typeof option == 'undefined') {
                option = $('.radio.radio-type-button2:first-child').find('label').first().html();
            }
            var post_data = 'postcode_check=' + $('#postcode_check').val() + '&product_id=' + product_id + '&option=' + option + '&store_id=' + store_id;
        } else {

            var post_data = 'postcode_check=' + $('#postcode_check').val() + '&weight=' + weight;
            if (check_product) {
                post_data += "&product_id=" + product_id_check;
            }
        }

        $.ajax({
            url: 'https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode',
            type: 'post',
            data: post_data,
            dataType: 'json',
            beforeSend: function() {
                $('#chkzipcod_response').html('<img src="image/ajax-loader.gif"/>');
            },
            success: function(json) {
                if (json['success']) {
                    $('#chkzipcod_response').html(json['success']);
                }
                if (typeof json['pixel'] != 'undefined') {
                    $("body").append(json['pixel']);
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }
}

function validationcheck() {
    var postcode = $('#postcode_check').val();
    var reg = new RegExp('^[1-9][0-9]{5}$');
    $('#message').remove();
    $('#chkzipcod_response1').css('display', 'block');
    if ((postcode.length) < 6 || (postcode.length) > 6) {
        $('#chkzipcod_response').html('');
        $('#chkzipcod_response1').html("<p id='message'class='myalert_chkzipcod danger'>zipcode should only be 6 digits</p>").delay(3000).fadeOut("slow");
        return false;
    } else if (reg.test(postcode) == false) {
        $('#chkzipcod_response').html('');
        $('#chkzipcod_response1').html("<p id='message'class='myalert_chkzipcod danger'>zipcode should be numbers between 1 - 9</p>").delay(3000).fadeOut("slow");
        return false;
    } else {
        return true;
    }
}