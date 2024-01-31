document.addEventListener("DOMContentLoaded", (event) => {
  console.log("DOM fully loaded and parsed");

const basicAutocomplete = document.querySelector('#search-autocomplete');
const data = ['One', 'Two', 'Three', 'Four', 'Five'];
const dataFilter = (value) => {
return data.filter((item) => {
  return item.toLowerCase().startsWith(value.toLowerCase());
});
};

new mdb.Autocomplete(basicAutocomplete, {
filter: dataFilter
});

});


(function ($) {
  "use strict";
 
  feather.replace();
  var $body = $("body");
  //var $defAddrId = $(".addrSel").find("input[type='radio']:checked").val();

  //console.log($defAddrId);
  /*  document.addEventListener("DOMContentLoaded", function() {
      console.log(window.location.pathname);
      // Check if this is the specific page where you want to open the offcanvas
      var isSpecificPage = window.location.pathname === '/shopping-cart'; // Change '/your-specific-page' to your actual page path
      var myOffcanvas = new bootstrap.Offcanvas(
        document.getElementById("offcanvasCart")
      );
      if (isSpecificPage) {     
        var offcanvasLink = document.getElementById("offcanvasCartBtn");       
        offcanvasLink.click();
      }
      var closeOffcanvasBtn = document.getElementById('closeCartOffcanvas');
            closeOffcanvasBtn.addEventListener('click', function() {
                myOffcanvas.hide(); // Manually close the offcanvas
            }); 
});*/

  // Function that shows and hides the sidebar cart
  /* $(".cart-button, .close-button, #shopCart-curtain").click(function (e) {
    e.preventDefault();

    // Add the show-shopCart class to the body tag
    $body.toggleClass("show-shopCart");

    // Check if the sidebar curtain is visible
    if ($("#shopCart-curtain").is(":visible")) {
      // Hide the curtain
      $("#shopCart-curtain").fadeOut(500);
    } else {
      // Show the curtain
      $("#shopCart-curtain").fadeIn(500);
    }
  });*/
  /*	
const hamburger = document.getElementById('hamburger');
const myOffcanvas = document.getElementById('offcanvasWithBothOptions')

myOffcanvas.addEventListener('show.bs.offcanvas', event => {
    hamburger.classList.add('active');
});
myOffcanvas.addEventListener('hide.bs.offcanvas', event => {
    hamburger.classList.remove('active');
});
*/
  // Spinner
  var spinner = function () {
    setTimeout(function () {
      if ($("#spinner").length > 0) {
        $("#spinner").removeClass("show");
      }
    }, 1);
  };
  spinner(0);
  calcDefCart();
  // Sticky Navbar
  $(window).scroll(function () {
    if ($(this).scrollTop() > 40) {
      $(".navbar").addClass("sticky-top");
    } else {
      $(".navbar").removeClass("sticky-top");
    }
  });

  // Dropdown on mouse hover
  $(document).ready(function () {
    function toggleNavbarMethod() {
      if ($(window).width() > 992) {
        $(".navbar .dropdown")
          .on("mouseover", function () {
            $(".dropdown-toggle", this).trigger("click");
          })
          .on("mouseout", function () {
            $(".dropdown-toggle", this).trigger("click").blur();
          });
      } else {
        $(".navbar .dropdown").off("mouseover").off("mouseout");
      }
    }
    toggleNavbarMethod();
    $(window).resize(toggleNavbarMethod);
  });

  // Modal Video
  $(document).ready(function () {
    var $videoSrc;
    $(".btn-play").click(function () {
      $videoSrc = $(this).data("src");
    });

    $("#videoModal").on("shown.bs.modal", function (e) {
      $("#video").attr(
        "src",
        $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0"
      );
    });

    $("#videoModal").on("hide.bs.modal", function (e) {
      $("#video").attr("src", $videoSrc);
    });
  });

  // Back to top button
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $(".back-to-top").fadeIn("slow");
    } else {
      $(".back-to-top").fadeOut("slow");
    }
  });

  $(".back-to-top").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 1500, "easeInOutExpo");
    return false;
  });

  /* Product Detail: Submit Button */
  /*$("#X-cart-form").submit(function () {
    var sbtn = $(".btn-buy");
    sbtn.html("Added to Cart");
    sbtn.prop("disabled", true);
    //reloadCart();
    var id = sbtn.attr("data-key");
    var pid = sbtn.attr("data-product");
    var price = sbtn.attr("data-price");
    var ftext = sbtn.attr("data-ftext");
    //alert("Buying..."+ price);
    $.get(
      "/cart/bag/add",
      { id: id, pid: pid, ftext: ftext, price: price },
      function () {}
    ).done(function () {
      openOffCanvas("/cart/bag/offcanvas");
      console.log("opening offcanvas...");
      //reloadCart();
      //   window.location = "/shopping-cart";
      return false;
    });
  });*/
  /*
  $("#btn-buy").click(function (e) {
    e.preventDefault(); // avoid to execute the actual submit of the form.
    var form = $(this).parent().parent().find("form");
    var formid = $(this).attr('data-formid');
    var actionUrl = $(this).attr('href'); //form.attr("action") + '&submit=' + formid; //
    $.ajax({
      type: "POST",
      url: actionUrl,
      data: form.serialize(),  //{'submit':formid}, // serializes the form's elements.
      success: function (data) {
        console.log(data); // show response from the php script.
        openOffCanvas("/cart/bag/offcanvas");
        console.log("opening offcanvas...");
      },
    });
  });*/
  /*********************************/

  function calculate() {
    var total = 0,
      count = 0;
    $(".product").each(function () {
      $(this)
        .find(".qty-input")
        .each(function () {
          var qty = $(this).val();
          var sum = $(this).val() * $(this).attr("data-price");
          total += sum;
          count += parseFloat(qty);

          $(this).parents("li").find(".price").text(sum);
        });
      $(".amount").html(total);
      $("#totPrice").html(total);
      $(".count").html(count);
      //   reloadCart();
    });
  }

  function reloadCart() {
    $.get("/cart/bag/block", function (data) {
      $("#cartItems").after(data).remove();
    });
  }

  function recalculateCart() {
    var subTotal = 0;
    var grandTotal = 0;
    var tax = 0;
    var items = $(".cart-item");
    $.each(items, function () {
      // var itemCheck = $(this).find(".cart-item-check");
      var itemQuantity = $(this).find(".cart-item-qty");
      // if (itemCheck.prop("checked")) {
      var itemTotal = itemQuantity.val() * itemQuantity.attr("data-price");
      subTotal += itemTotal;
      // }
    });
  }
  $(".cart-items").on("click", ".button-minus, .button-plus", function (e) {
    // Get quanitity input values
    var qty = $(this).parent().parent().find(".qty-input");
    var val = parseFloat(qty.val());
    var max = parseFloat(qty.attr("max"));
    var min = parseFloat(qty.attr("min"));
    var step = parseFloat(qty.attr("step"));
    console.log("clicked", qty);
    // Check which button is clicked
    if ($(this).is(".button-plus")) {
      // Increase the value
      qty.val(val + step);
    } else {
      // Check if minimum button is clicked and that value is
      // >= to the minimum required
      if (min && min >= val) {
        // Do nothing because value is the minimum required
        qty.val(min);
      } else if (val > 0) {
        // Subtract the value
        qty.val(val - step);
      }
    }
    qty.trigger("change");
    // reloadCart();
  });

  $(".product-count").change(function (e) {
    e.preventDefault();
    var $this = $(this);
    var parent = $this.parent().parent().parent();
    //parent.find(".cart-item-check").prop("checked", "checked");
    var price = $this.attr("data-price");
    var quantity = $this.val();
    var total = price * quantity;
    var a = $(this).attr("data-id");
    var b = $(this).val();
    parent.find(".cart-item-total").html(total);
    $.get("/cart/bag/set", { id: a, count: b }, function () {
      $('.product-count[data-id="' + a + '"]').val(b);
      calculate();
    });
    //recalculateCart();
  });
  $(".2cart-items").on("change", ".product-count", function (e) {
    e.preventDefault();

    var a = $(this).attr("data-id");
    var b = $(this).val();
    $.get("/cart/bag/set", { id: a, count: b }, function () {
      $('.product-count[data-id="' + a + '"]').val(b);
      calculate();
    });
  });
  $(".addrSel")
    .find("input[type=radio]")
    .change(function () {
      var $aid = $(this).val();
      $("#addressmodel-aid").val($aid);  
      alert($("#addressmodel-aid").val());
      $.get(
        "/cart/bag/add-address",
        { aid: $aid },
        function () {}
      ).done(function () {
       
        window.location = "/shopping-cart";
        return false;
      });
    });
        //$.get("/checkout-delivery", { aid: $aid }, function () {});
   

  /*** Product Detail:Calculate Item Price upon Feature Selection ***/
  function calcDefCart() {
    var price = 0,
      id = "",
      ftext = "";
    $(".featSel")
      .find("input[type='radio']:checked")
      .each(function (index) {
        var ntext = "";
        //id += $(this).attr("id").replace("buy", "") + "+";
        var newVal = $(this).attr("data-ftext").split("_")[1];
        ntext = $(this).attr("data-ftext").split("_")[0].replace(/\s/g, "-");

        console.log("PRICE: ", newVal.replace(/\D+$/g, ""));
        ntext += "_" + $(this).val() + "_" + newVal.replace(/\D+/g, "");
        console.log(ntext);
        price += parseFloat(newVal);
        ftext += ntext + "+";
        console.log(ftext);
      });

    $(".moneyCal").html(price);
    //$(".btn-buy").attr("data-key", id.slice(0, -1));
    //$(".btn-buy").attr("data-price", price);
    $("#articlefeaturemodel-price").val(price);
    $("#articlefeaturemodel-pid").val($("#ProductId").val());
    $("#articlefeaturemodel-featuretext").val(
      ftext.trim().replace(/\s/g, "+").trim().slice(0, -1)
    );
    $(".btn-buy").attr(
      "data-ftext",
      ftext.replace(/\s/g, "+").trim().slice(0, -1)
    );
  }
  /********************************************************/

  function offCanvasLoad(obj, data) {
    renderData(obj, data.title, ".offcanvas-title");
    renderData(obj, data.body, ".offcanvas-body");
    // renderData(obj, data.footer, '.offCanvas-footer');
    // obj.find('.modal-dialog').removeClass('modal-lg').removeClass('modal-sm').addClass(data.size);
    obj.setAttribute("class", "offcanvas offcanvas-end"); //console.log(obj);
  }

  function renderData(obj, data, sel) {
    const elm = obj.querySelector(sel);
    if (data) {
      elm.innerHTML = data;
      elm.display = "block";
    } else {
      // elm.display = "none";
    }
  }

  function openOffCanvas(action = null, config = {}) {
    if (action === null) {
    } else {
      $.getJSON(action, function (data) {
        var myOffcanvas = document.getElementById("offcanvasCart");
        var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas);
        data = $.extend(data, config);
        offCanvasLoad(myOffcanvas, data);
        if (!data.backdrop) {
          data.backdrop = false;
        }
        if (!data.keyboard) {
          data.keyboard = true;
        }
        if (!data.scroll) {
          data.scroll = true;
        }
        bsOffcanvas.show();
      });
    }
  }

  $("#shopCart").on("click", ".product-delete", function (e) {
    e.preventDefault();
    //alert("clicked.."); ("#i" + id)
    var id = $(this).attr("rel");
    $.get("/cart/bag/del", { id: id }, function (data) {
      if (data) {
        $(this)
          .find("i" + id)
          .fadeOut("normal", function () {
            alert("Fading...");
            $(this).remove();
            calculate();
          });
        reloadCart();
      }
    });
  });
})(jQuery);

