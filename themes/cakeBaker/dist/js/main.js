$(function () {
  $('a[href*="#"]:not([href="#"])').click(function () {
    if (
      location.pathname.replace(/^\//, "") ==
        this.pathname.replace(/^\//, "") &&
      location.hostname == this.hostname
    ) {
      var target = $(this.hash);
      target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
      if (target.length) {
        $("html,body").animate(
          {
            scrollTop: target.offset().top,
          },
          1000
        );
        return false;
      }
    }
  });
});
document.addEventListener("DOMContentLoaded", function (event) {
  if ($(window).width() < 767) {
    $(".my-account-link.dropdown-toggle").removeAttr("data-toggle");
  }
  $("header #search .input-lg").attr("placeholder", "search");
});

function escapeHtml(text) {
  text = text.replace(/[^a-zA-Z0-9-\s]/gi, " ");
  return text
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#039;")
    .toLowerCase();
}

function init_images() {
  var vidDefer = document.getElementsByClassName("lload");
  for (var i = 0; i < vidDefer.length; i++) {
    if (vidDefer[i].getAttribute("data-src")) {
      vidDefer[i].setAttribute("src", vidDefer[i].getAttribute("data-src"));
    }
  }
}

function xxsScriptSave(data) {
  return escapeHtml(data.trim());
}
var storeId = "73";
var store_code = "potterybarn";
window.addEventListener("load", function () {
  /*$("#search_query").autocomplete({
    delay: 0,
    appendTo: "#autocomplete-results",
    autoFocus: true,
    minLength: 1,
    source: function (request, response) {
      if ($(this).val().length) {
        $.ajax({
          url:
            "/index.php?route=search/autocomplete&filter_name=" +
            encodeURIComponent(xxsScriptSave($(this).val())),
          dataType: "json",
          success: function (json) {
            if (store_code == "optimum" && json.length) {
              $("#popular_search-results").hide();
            }

            if (json["suggestions"]) {
              response(
                $.map(json["suggestions"], function (item) {
                  return {
                    label: item.name,
                    id:
                      typeof item.product_id != "undefined"
                        ? item.product_id
                        : item.category_id,
                    value:
                      typeof item.product_id != "undefined"
                        ? item.product_id
                        : item.category_id,
                    href: item.href,
                    thumb: item.thumb,
                    desc: item.desc,
                    price: item.price,
                  };
                })
              );
              $(".checkbox-potterybarn").remove();
              if (json["suggestions"].length == 0) {
                $("#autocomplete-results").html(
                  '<ul class="dropdown-menu" style="top: 40px; left: 0px;">' +
                    json["products_carousal"] +
                    "</ul>"
                );
              } else if (json["products_carousal"]) {
                $("#search .dropdown-menu").append(json["products_carousal"]);
              }
            } else if (json.length) {
              response(
                $.map(json, function (item) {
                  return {
                    label: item.name,
                    id:
                      typeof item.product_id != "undefined"
                        ? item.product_id
                        : item.category_id,
                    value:
                      typeof item.product_id != "undefined"
                        ? item.product_id
                        : item.category_id,
                    href: item.href,
                    thumb: item.thumb,
                    desc: item.desc,
                    price: item.price,
                  };
                })
              );
            }
          },
        });
      }
    },
    select: function (event) {
      document.location.href = event.href;
    },
  });*/
});

$(window).resize(function () {
  megamenuresponsive = false;
  if (responsive_design == "yes" && $(window).width() < 992) {
    megamenuresponsive = true;
  }
});

document.addEventListener("DOMContentLoaded", function (event) {
  $(document).ready(function () {
    if ($(window).width() > 992) {
      console.log("WIDTH:",$(window).width())
      $("#image").elevateZoom({
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 500,
        zoomWindowOffetx: 20,
        zoomWindowOffety: -1,
        cursor: "pointer",
        lensFadeIn: 500,
        lensFadeOut: 500,
        zoomWindowWidth: 500,
        zoomWindowHeight: 500,
      });
      var z_index = 0;

      $(document).on("click", ".open-popup-image,.carousel-item.active", function () {
        $(".popup-gallery").magnificPopup("open", z_index);
        return false;
      });

      $(".image-next").on("click", function () {
        if ($(".image-active").parent().parent().next().find("a").length) {
          $(".image-active")
            .parent()
            .parent()
            .next()
            .find("a")
            .trigger("click");
        } else {
          $(".image-active")
            .parent()
            .parent()
            .siblings(":first")
            .find("a")
            .trigger("click");
        }
      });
      $(".image-prev").on("click", function () {
        if ($(".image-active").parent().parent().prev().find("a").length) {
          $(".image-active")
            .parent()
            .parent()
            .prev()
            .find("a")
            .trigger("click");
        } else {
          $(".image-active")
            .parent()
            .parent()
            .siblings(":last")
            .find("a")
            .trigger("click");
        }
      });
      setTimeout(function () {
        //$(".zoom-thumbnails a:third").trigger('click');
        $(".zoom-thumbnails a").eq(2).trigger("click");
      }, 1);

      $(".zoom-thumbnails a, .thumbnails-carousel a").click(function (e) {
        $(".thumbnails-carousel a").removeClass("image-active");
        $(".zoom-thumbnails a").removeClass("image-active");
        $(this).addClass("image-active");
        var smallImage = $(this).attr("data-image");
        var largeImage = $(this).attr("data-zoom-image");
        var ez = $("#image").data("elevateZoom");
        $("#ex1").attr("href", largeImage);
        ez.swaptheimage(smallImage, largeImage);
        z_index = $(this).index(".zoom-thumbnails a, .thumbnails-carousel a");
        if (!e.currentTarget.className.includes("mfp-iframe")) {
          $(".vdo-thumb-lg").hide();
        } else {
          $(".vdo-thumb-lg").show();
        }
        return false;
      });
    } else {
      $(document).on("click", ".open-popup-image", function () {
        $(".popup-gallery").magnificPopup("open", 0);
        return false;
      });
    }
  });
});
$(document).ready(function () {
  function zoom(zoom_percent) {
    $(".mfp-figure figure").click(function () {
      switch (zoom_percent) {
        case "100":
          $(this).css("transform", "scale(7)");
          $(this).css("-ms-transform", "scale(4)");
          $(this).css("-moz-transform", "scale(4)");
          $(this).css("-webkit-transform", "scale(4)");
          $(this).css("-o-transform", "scale(4)");
          $(this).css("-webkit-transform", "translateY( -140px )");
          $(this).css("transform", "translateY( -140px )");
          zoom_percent = "160";
          $(".mfp-figure figure").css("cursor", "zoom-out");
          break;
        case "160":
          $(this).css("transform", "scale(1)");
          $(this).css("-ms-transform", "scale(1)");
          $(this).css("-moz-transform", "scale(1)");
          $(this).css("-webkit-transform", "scale(1)");
          $(this).css("-o-transform", "scale(1)");
          zoom_percent = "100";
          $(".mfp-figure figure").css("cursor", "zoom-in");
          break;
      }
      $(this).css("zoom", zoom_percent + "%");
      $(".mfp-figure figure img").css("max-height", "1000px");
    });
  }

  
  $(".popup-gallery").magnificPopup({
    delegate: "a.popup-image",
    type: "image",
    tLoading: "Loading image #%curr%...",
    mainClass: "mfp-with-zoom",
    removalDelay: 200,
    gallery: {
      enabled: true,
      navigateByImgClick: false,
      preload: [0, 1], // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
      titleSrc: function (item) {
        return item.el.attr("title");
      },
    },
    callbacks: {
      open: function () {
        $(".mfp-figure figure img").css("max-height", "100%");
        $(".mfp-figure").prepend(
          "<button id='zoom'><i class='fa fa-search' aria-hidden='true'></i></button>"
        );
        $(".mfp-figure figure").css("cursor", "zoom-in");
        $(".mfp-figure figure").css("transform", "scale(1)");
        $(".mfp-figure figure").css("zoom", "100%");
        var zoom_percent = "100";
        zoom(zoom_percent);
      },
    },
  });

  $(document).on("click", "#zoom", function () {
    requestFullScreen(document.body);
  });
  function requestFullScreen(element) {
    // Supports most browsers and their versions.
    var requestMethod =
      element.requestFullScreen ||
      element.webkitRequestFullScreen ||
      element.mozRequestFullScreen ||
      element.msRequestFullScreen;

    if (requestMethod) {
      // Native full screen.
      requestMethod.call(element);
      $("#zoom").addClass("zoomed");
    } else if (typeof window.ActiveXObject !== "undefined") {
      // Older IE.
      var wscript = new ActiveXObject("WScript.Shell");
      if (wscript !== null) {
        wscript.SendKeys("{F11}");
      }
    }
  }

  $(document).on("click", ".zoomed,.mfp-close", function () {
    var closeMethod =
      document.fullscreenElement  ||
      document.fullscreenElement  ||
      document.fullscreenElement  ||
      document.fullscreenElement ;
    if (closeMethod) {
      console.log("CLOSE METHOD",closeMethod);
      // Native full screen.
      closeMethod.call(document);
    }
    $(this).removeClass("zoomed");
  });
});

window.addEventListener("load", function () {
  $("#thumb-slider").owlCarousel({
    nav: true,
    navText: [
      '<i aria-label="left" class="fa fa-angle-left"></i>',
      '<i aria-label="right" class="fa fa-angle-right"></i>',
    ],
    autoplay: true, //Set AutoPlay to 3 seconds
    responsive: {
      0: {
        items: 3,
      },
      600: {
        items: 3,
      },
      1000: {
        items: 5,
      },
    },
  });
});
window.addEventListener("load", function () {
  $(document).mouseup(function (e) {
    if ($(e.target).closest(".share-open").length === 0) {
      $(".share-open").hide();
    }
  });
});
window.addEventListener("load", function () {
  $(document).ready(function () {
    $(".share-click").click(function () {
      $(".share-open").toggle();
    });
  });
});
var a2a_config = a2a_config || {};
//a2a_config.onclick = 1;
a2a_config.num_services = 4;
window.addEventListener("load", function () {
  $(".collapser").click(function () {
    $(this).next().collapse("toggle");
    $(this).toggleClass("active");
  });
  $('[data-toggle="popover-hover"]').popover({
    html: true,
    trigger: "hover",
    placement: "top",
    content: function () {
      var colortext = $(this).attr("data-color");
      var varianttext = ""; //$(this).attr('data-variant');
      var materialtext = $(this).attr("data-material");
      setTimeout(function () {
        $(".name-pr").empty();
        $(".popover-body").append(
          '<p class="name-pr" style="font-size:10px; margin: 0px;">' +
            colortext +
            "<span>" +
            varianttext +
            "</span>" +
            materialtext +
            "</p>"
        );
      });
      return '<img src="' + $(this).data("img") + '" />';
    },
  });
});
window.addEventListener("load", function () {
  $(document).ready(function () {
    express_shipping = "";
    if (express_shipping) {
      var pdp_check_postcode = getCookie("pdp_check_postcode");
      if (pdp_check_postcode == null || pdp_check_postcode == "") {
        $("#postcode_check").val("201301");
        pdp_check_postcode = "201301";
      }
      if (pdp_check_postcode != null && pdp_check_postcode != "") {
        $("#postcode_check").val(pdp_check_postcode);
        if (validationcheck()) {
          var is_fynd = "1";
          var product_id = "7921122";
          var product_id_check = "450804";
          var weight = "0";
          var check_product = "";
          var store_id = "73";
          var postcode = $("#postcode_check").val();
          //    setCookie('pdp_check_postcode', postcode);
          if (is_fynd && product_id != 0) {
            var option = $("#product input[type='radio']:checked")
              .next()
              .html();
            if (typeof option == "undefined") {
              option = $(".radio.radio-type-button2:first-child")
                .find("label")
                .first()
                .html();
            }
            var post_data =
              "postcode_check=" +
              $("#postcode_check").val() +
              "&product_id=" +
              product_id +
              "&option=" +
              option;
          } else if (express_shipping && product_id != 0) {
            var option = $("#product input[type='radio']:checked")
              .next()
              .html();
            if (typeof option == "undefined") {
              option = $(".radio.radio-type-button2:first-child")
                .find("label")
                .first()
                .html();
            }
            var post_data =
              "postcode_check=" +
              $("#postcode_check").val() +
              "&product_id=" +
              product_id +
              "&option=" +
              option +
              "&store_id=" +
              store_id;
          } else {
            var post_data =
              "postcode_check=" +
              $("#postcode_check").val() +
              "&weight=" +
              weight;
            if (check_product) {
              post_data += "&product_id=" + product_id_check;
            }
          }

          $.ajax({
            url: "https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode",
            type: "post",
            data: post_data,
            dataType: "json",
            beforeSend: function () {
              $("#chkzipcod_response").html(
                '<img src="image/ajax-loader.gif"/>'
              );
            },
            success: function (json) {
              if (json["success"]) {
                $("#chkzipcod_response").html(json["success"]);
              }
              if (typeof json["pixel"] != "undefined") {
                $("body").append(json["pixel"]);
              }
            },
            error: function (xhr, ajaxOptions, thrownError) {
              alert(
                thrownError +
                  "\r\n" +
                  xhr.statusText +
                  "\r\n" +
                  xhr.responseText
              );
            },
          });
        }
      }
    }
    $(".form-controltxt").keypress(function (event) {
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
    var is_fynd = "1";
    var product_id = "7921122";
    var product_id_check = "450804";
    var weight = "0";
    var check_product = "";
    var store_id = "73";
    var postcode = $("#postcode_check").val();
    $("#express_apply_postcode_view").text(postcode);
    $("#express_apply_postcode_view_m").text(postcode);
    $("#apply_postcode").val(postcode);
    //   setCookie('pdp_check_postcode', postcode);
    if (is_fynd && product_id != 0) {
      var option = $("#product input[type='radio']:checked").next().html();
      if (typeof option == "undefined") {
        option = $(".radio.radio-type-button2:first-child")
          .find("label")
          .first()
          .html();
      }
      var post_data =
        "postcode_check=" +
        $("#postcode_check").val() +
        "&product_id=" +
        product_id +
        "&option=" +
        option;
    } else if (express_shipping && product_id != 0) {
      var option = $("#product input[type='radio']:checked").next().html();
      if (typeof option == "undefined") {
        option = $(".radio.radio-type-button2:first-child")
          .find("label")
          .first()
          .html();
      }
      var post_data =
        "postcode_check=" +
        $("#postcode_check").val() +
        "&product_id=" +
        product_id +
        "&option=" +
        option +
        "&store_id=" +
        store_id;
    } else {
      var post_data =
        "postcode_check=" + $("#postcode_check").val() + "&weight=" + weight;
      if (check_product) {
        post_data += "&product_id=" + product_id_check;
      }
    }

    $.ajax({
      url: "https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode",
      type: "post",
      data: post_data,
      dataType: "json",
      beforeSend: function () {
        $("#chkzipcod_response").html('<img src="image/ajax-loader.gif"/>');
      },
      success: function (json) {
        if (json["success"]) {
          $("#chkzipcod_response").html(json["success"]);
        }
        if (typeof json["pixel"] != "undefined") {
          $("body").append(json["pixel"]);
        }
      },
      error: function (xhr, ajaxOptions, thrownError) {
        alert(
          thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText
        );
      },
    });
  }
}

function validationcheck() {
  var postcode = $("#postcode_check").val();
  var reg = new RegExp("^[1-9][0-9]{5}$");
  $("#message").remove();
  $("#chkzipcod_response1").css("display", "block");
  if (postcode.length < 6 || postcode.length > 6) {
    $("#chkzipcod_response").html("");
    $("#chkzipcod_response1")
      .html(
        "<p id='message'class='myalert_chkzipcod danger'>zipcode should only be 6 digits</p>"
      )
      .delay(3000)
      .fadeOut("slow");
    return false;
  } else if (reg.test(postcode) == false) {
    $("#chkzipcod_response").html("");
    $("#chkzipcod_response1")
      .html(
        "<p id='message'class='myalert_chkzipcod danger'>zipcode should be numbers between 1 - 9</p>"
      )
      .delay(3000)
      .fadeOut("slow");
    return false;
  } else {
    return true;
  }
}
