<div class="container-fluid">
    <div id="content" class="row cartPage custom-cart-page">
        <div class="col-sm-8 cart-left">
            <div class="cart-left-container">
                <form action="https://www.potterybarn.in/index.php?route=checkout/cart/edit" method="post" enctype="multipart/form-data"><input type="hidden" name="__csrf" id="__csrf" value="e22c1f42aa95f89d6fe10222ed0ddf159571a1a1">
                    <div class="cart-info">
                        <table class="table table-bordered">
                            <tbody>
                                <tr class="cart-header">
                                    <th>ITEM(S)</th>
                                    <th colspan="2" class="text-right">TOTAL <i class="fa fa-inr rs-sym"></i> 1,000.00 </th>
                                </tr>
                                <tr class="cart-title2">
                                    <th>PRODUCT</th>
                                    <th>PRICE</th>
                                    <th>QUANTITY</th>
                                </tr>
                                <tr class="cart-prodict-list">
                                    <td colspan="1" class="text-left cartProduct">
                                        <div class="row">
                                            <div class="col-xs-3 col-sm-2">
                                                <a href="https://www.potterybarn.in/8358764" class="cartImg"><img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:400,w:400)/data/pottery-barn/14-july-2022/8358764_5.jpg" alt="Hydrocotton Quick-Dry Organic Towel" title="Hydrocotton Quick-Dry Organic Towel" class="img-thumbnail"></a>
                                            </div>
                                            <div class="col-xs-9 col-sm-10">

                                                <div><a href="https://www.potterybarn.in/8358764">Hydrocotton Quick-Dry Organic Towel</a>
                                                    <br>
                                                    <small>Size: WASH CLOTH</small>
                                                    <br><small>Colour: GRAY MIST</small>
                                                </div>
                                                <span class="input-group-btn">
                                                    <a onclick="cart.remove('14169439');" data-toggle="tooltip" title="" class="btn btn-danger button-remove" data-remove="14169439" data-original-title="Remove"><i class="fa fa-trash" aria-hidden="true"></i> Remove</a>
                                                    <button type="button" class="wishlist-icon wishlist-add-474195" data-toggle="tooltip" title="" onclick="wishlist.add('474195');" data-original-title="Move to Wishlist"><i class="fa fa-heart"></i> <span class="wishlist-span-474195">Move to Wishlist</span>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </td>
                                    <td> <i class="fa fa-inr rs-sym"></i> 1,000.00</td>
                                    <td class="text-right input-group-btn">
                                        <select name="quantity[14169439]" onchange="this.form.submit()" class="quantity">
                                            <option selected="">1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="wishlist-jump">
                    <a href="https://www.potterybarn.in/wishlist"><i class="fa fa-heart-o"></i> ADD MORE FROM WISHLIST <i class="fa fa-angle-right pull-right"></i></a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 cart-right">
            <div class="cart-wrap">
                <div class="cart-total">
                    <table>
                        <tbody>
                            <tr>
                                <td class="text-left"><strong>MRP:</strong></td>
                                <td class="text-right"><i class="fa fa-inr rs-sym"></i> 1,000.00</td>
                            </tr>
                            <tr>
                                <td class="text-left"><strong>Sub-Total:</strong></td>
                                <td class="text-right"><i class="fa fa-inr rs-sym"></i> 1,000.00</td>
                            </tr>
                            <tr>
                                <td class="text-left"><strong>Total : </strong></td>
                                <td class="text-right"><i class="fa fa-inr rs-sym"></i> 1,000.00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="clearfix">
                    <div class="gst-section">
                        <div class="quickcheckout-content" style="border:none; padding: 0px;overflow: hidden;">
                            <div id="voucher-heading">GST Number </div>
                            <form id="gst-form" autocomplete="off">
                                <div class="panel" id="gst-content">
                                    <div class="input-group">
                                        <input type="text" id="gst_no" placeholder="GST Number" name="gst_no" value="" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" id="button-gst-add" class="btn btn-primary">Apply</button>
                                            <button type="button" id="button-gst-remove" class="btn btn-primary hide">Remove</button>
                                        </span>
                                    </div>
                                </div>
                            </form>
                            <style>
                                #button-gst-add,
                                #button-gst-remove {
                                    padding: 10px 12px;
                                }
                            </style>
                            <script type="text/javascript">
                                function loadJs() {
                                    var gst_no = '';
                                    if (gst_no != '') {
                                        $('#gst_no').attr('disabled', true);
                                    }
                                    var error_enter_gst_no = 'Warning: Please enter GST Number!';
                                    var error_invalid_gst_no = 'Warning: GST No. is invalid!';
                                    $("#button-gst-add").unbind('click');
                                    $(document).on('click', '#button-gst-add', function() {
                                        $('.alert').remove();

                                        var input_values = $('#gst_no').val();
                                        if (input_values == '') {
                                            $('#gst-content').after('<div class="alert alert-danger flash-msg" style="display: none;"><i class="fa fa-exclamation-circle"></i> ' + error_enter_gst_no + '</div>');
                                            $('.alert-danger').fadeIn('slow');
                                            return false;
                                        }
                                        var gstinformat = new RegExp('^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$');
                                        if (gstinformat.test(input_values)) {
                                            // return true;    
                                        } else {
                                            $('#gst-content').after('<div class="alert alert-danger flash-msg" style="display: none;"><i class="fa fa-exclamation-circle"></i> ' + error_invalid_gst_no + '</div>');
                                            $('.alert-danger').fadeIn('slow');
                                            return false;
                                        }
                                        var parameter = {
                                            'gst_no': input_values
                                        };

                                        $.ajax({
                                            url: '/index.php?route=common/gst/add',
                                            type: 'post',
                                            data: parameter,
                                            dataType: 'json',
                                            cache: false,
                                            success: function(json) {
                                                console.log(json);
                                                if (json['success']) {
                                                    $('#gst_no').attr('disabled', true);
                                                    $(".alert-success").text('');
                                                    $('#gst-content').after('<div class="alert alert-success flash-msg" style="display:none;"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
                                                    $('#button-gst-add').addClass('hide').removeClass('show');
                                                    $('#button-gst-remove').addClass('show').removeClass('hide');
                                                    $('.alert-success').fadeIn('slow');
                                                    if (json['redirect']) {
                                                        setTimeout(function() {
                                                            location = json['redirect'];
                                                        }, 1000);

                                                    }
                                                } else if (json['error']) {
                                                    $("#gst-form div.gst-msg-error").remove();
                                                    $('#gst-content').after('<div class="alert alert-danger flash-msg gst-msg-error" style="display: none;"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                                                    $('.alert-danger').fadeIn('slow');
                                                }
                                            },
                                            error: function(xhr, ajaxOptions, thrownError) {
                                                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                            }

                                        });
                                    });

                                    $(document).on('click', '#button-gst-remove', function() {

                                        $.ajax({
                                            url: 'index.php?route=common/gst/remove',
                                            type: 'post',
                                            dataType: 'json',
                                            cache: false,
                                            success: function(json) {
                                                $('.alert').remove();
                                                if (json['success']) {
                                                    $('#gst_no').attr('disabled', false).val('');
                                                    $('#gst-content').after('<div class="alert alert-success flash-msg" style="display:none;"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
                                                    $('#button-gst-add').addClass('show').removeClass('hide');
                                                    $('#button-gst-remove').addClass('hide').removeClass('show');
                                                    $('.alert-success').fadeIn('slow');
                                                    if (json['redirect']) {
                                                        setTimeout(function() {
                                                            location = json['redirect'];
                                                        }, 1000);
                                                    }
                                                } else if (json['error']) {
                                                    $('#gst-content').after('<div class="alert alert-danger flash-msg" style="display: none;"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                                                    $('.alert-danger').fadeIn('slow');
                                                }
                                            },
                                            error: function(xhr, ajaxOptions, thrownError) {
                                                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                            }

                                        });
                                    });
                                }

                                if (document.readyState !== 'loading') {
                                    loadJs();
                                } else {
                                    document.addEventListener('DOMContentLoaded', function() {
                                        loadJs();
                                    });
                                }

                                //-->
                            </script>
                        </div>
                    </div>
                    <h2>What would you like to do next?</h2>
                    <p style="padding-bottom: 10px">Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default coupon-container">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#collapse-coupon" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">Use Coupon Code <i class="fa fa-caret-down"></i></a></h4>
                            </div>
                            <div id="collapse-coupon" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <label class="col-sm-2 control-label" for="input-coupon">Coupon code </label>
                                    <div class="input-group" id="coupon-content">
                                        <input type="text" name="coupon" value="" placeholder="Enter your coupon here" id="input-coupon" class="form-control coupon">
                                        <span class="input-group-btn">
                                            <input type="button" value="Apply Coupon" id="button-coupon" data-loading-text="Loading..." class="btn btn-primary">
                                        </span>
                                    </div>
                                    <script type="text/javascript">
                                        <!--
                                        function applyCoupon(coupon_code, from_popup = false) {
                                            if (!coupon_code) {
                                                $(".message-throw").remove();
                                                let error_text = '<div class="alert alert-danger message-throw"><i class="fa fa-exclamation-circle"></i> Warning: Please enter a coupon code!<button type="button" class="close" data-dismiss="alert">&times;</button></div>';
                                                if (!from_popup) {
                                                    $('.checkout-cart > .container-fluid').prepend(error_text);
                                                } else {
                                                    $("#couponapply-popup .modal-body").prepend(error_text)
                                                }
                                                $('html, body').animate({
                                                    scrollTop: 0
                                                }, 'slow');
                                                return false;
                                            }
                                            $.ajax({
                                                url: 'index.php?route=extension/total/coupon/coupon',
                                                type: 'post',
                                                data: 'coupon=' + encodeURIComponent(coupon_code),
                                                dataType: 'json',
                                                beforeSend: function(xhr, setting) {
                                                    $('#button-coupon').button('loading');
                                                    if (setting.data.search(/__csrf\=([a-zA-Z0-9]+)/) < 0) {
                                                        setting.data = ('__csrf=' + $("input[name='__csrf_custom']").val() + "&" + setting.data);
                                                    }
                                                    return true;
                                                },
                                                complete: function(xhr, setting) {
                                                    $('#button-coupon').button('reset');
                                                    var csrf = xhr.getResponseHeader("X-CSRF-Custom-Token");
                                                    if (csrf) {
                                                        $("input[name='__csrf_custom']").val(csrf);
                                                    }
                                                    if (typeof loadShippingMethod == 'function') { //total/coupon
                                                        loadShippingMethod();
                                                    }
                                                },
                                                success: function(json) {
                                                    $('.alert').remove();
                                                    if (json['pixel']) {
                                                        var script = document.createElement("script");
                                                        script.type = "text/javascript";
                                                        script.innerHTML = json['pixel'];
                                                        document.head.appendChild(script);
                                                    }
                                                    if (json['error']) {
                                                        let error_text = '<div class="alert alert-danger message-throw"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>';
                                                        if (!from_popup) {
                                                            $('.checkout-cart > .container-fluid').prepend(error_text);
                                                        } else {
                                                            $("#couponapply-popup .modal-body").prepend(error_text)
                                                        }
                                                        $('html, body').animate({
                                                            scrollTop: 0
                                                        }, 'slow');
                                                    }

                                                    if (json['redirect']) {
                                                        location = json['redirect'];
                                                    }
                                                }
                                            });
                                        }

                                        document.addEventListener("DOMContentLoaded", function(event) {
                                            $('#button-coupon').on('click', function() {
                                                applyCoupon($('input[name=\'coupon\']').val());
                                            });

                                            $(document).on('click', '#button-coupon-remove', function() {
                                                $.ajax({
                                                    url: 'index.php?route=quickcheckout/voucher/removeCoupon',
                                                    type: 'post',
                                                    data: $('#coupon-content :input'),
                                                    dataType: 'json',
                                                    cache: false,
                                                    beforeSend: function() {
                                                        $('#button-coupon-remove').prop('disabled', true);
                                                        $('#button-coupon-remove').after('<i class="fa fa-spinner fa-spin"></i>');
                                                    },
                                                    complete: function() {
                                                        $('#button-coupon').prop('disabled', false);
                                                        $('#coupon-content .fa-spinner').remove();
                                                        if (typeof loadShippingMethod == 'function') {
                                                            loadShippingMethod();
                                                        }
                                                    },
                                                    success: function(json) {
                                                        $('.alert').remove();
                                                        if (json['pixel']) {
                                                            var script = document.createElement("script");
                                                            script.type = "text/javascript";
                                                            script.innerHTML = json['pixel'];
                                                            document.head.appendChild(script);
                                                        }
                                                        if (json['success']) {
                                                            if (json['redirect']) {
                                                                location = json['redirect'];
                                                            }
                                                        } else if (json['error']) {
                                                            $('.checkout-cart > .container-fluid').prepend('<div class="alert alert-danger message-throw"><i class="fa fa-exclamation-circle"></i> ' + (typeof json['error']['warning'] == 'string' ? json['error']['warning'] : json['error']) + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                                                            $('html, body').animate({
                                                                scrollTop: 0
                                                            }, 'slow');
                                                        }


                                                    },

                                                    error: function(xhr, ajaxOptions, thrownError) {
                                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                                    }

                                                });
                                            });
                                        });
                                        //
                                        -->
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default shipping00" style="display:none;">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#collapse-shipping" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">Estimate Shipping &amp; Taxes <i class="fa fa-caret-down"></i></a></h4>
                            </div>
                            <div id="collapse-shipping" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Enter your destination to get a shipping estimate.</p>
                                    <div class="form-horizontal">
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-country">Country</label>
                                            <div class="col-sm-10">
                                                <select name="country_id" id="input-country" class="form-control">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="99" selected="selected">India</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-zone">Region / State</label>
                                            <div class="col-sm-10">
                                                <select name="zone_id" id="input-zone" class="form-control">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="1475">Andaman and Nicobar Islands</option>
                                                    <option value="1476">Andhra Pradesh</option>
                                                    <option value="1477">Arunachal Pradesh</option>
                                                    <option value="1478">Assam</option>
                                                    <option value="1479">Bihar</option>
                                                    <option value="1480">Chandigarh</option>
                                                    <option value="4238">Chhattisgarh</option>
                                                    <option value="1481">Dadra &amp; nagar haveli and daman &amp; diu</option>
                                                    <option value="1482">Daman and Diu</option>
                                                    <option value="1483">Delhi</option>
                                                    <option value="1484">Goa</option>
                                                    <option value="1485">Gujarat</option>
                                                    <option value="1486">Haryana</option>
                                                    <option value="1487">Himachal Pradesh</option>
                                                    <option value="1488">Jammu and Kashmir</option>
                                                    <option value="4237">Jharkhand</option>
                                                    <option value="1489">Karnataka</option>
                                                    <option value="1490">Kerala</option>
                                                    <option value="1491">Lakshadweep Islands</option>
                                                    <option value="1492">Madhya Pradesh</option>
                                                    <option value="1493">Maharashtra</option>
                                                    <option value="1494">Manipur</option>
                                                    <option value="1495">Meghalaya</option>
                                                    <option value="1496">Mizoram</option>
                                                    <option value="1497">Nagaland</option>
                                                    <option value="1498">Odisha</option>
                                                    <option value="1499">Puducherry</option>
                                                    <option value="1500">Punjab</option>
                                                    <option value="1501">Rajasthan</option>
                                                    <option value="1502">Sikkim</option>
                                                    <option value="1503">Tamil Nadu</option>
                                                    <option value="4231">Telangana</option>
                                                    <option value="1504">Tripura</option>
                                                    <option value="1505">Uttar Pradesh</option>
                                                    <option value="4236">Uttarakhand</option>
                                                    <option value="1506">West Bengal</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                                            <div class="col-sm-10">
                                                <input type="text" name="postcode" value="" placeholder="Post Code" id="input-postcode" class="form-control">
                                            </div>
                                        </div>
                                        <button type="button" id="button-quote" data-loading-text="Loading..." class="btn btn-primary">Get Quotes</button>
                                    </div>
                                    <script type="text/javascript">
                                        <!--
                                        document.addEventListener("DOMContentLoaded", function(event) {
                                            $('#button-quote').on('click', function() {
                                                $.ajax({
                                                    url: 'index.php?route=extension/total/shipping/quote',
                                                    type: 'post',
                                                    data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
                                                    dataType: 'json',
                                                    beforeSend: function() {
                                                        $('#button-quote').button('loading');
                                                    },
                                                    complete: function() {
                                                        $('#button-quote').button('reset');
                                                    },
                                                    success: function(json) {
                                                        $('.alert, .text-danger').remove();

                                                        if (json['error']) {
                                                            if (json['error']['warning']) {
                                                                $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                                                $('html, body').animate({
                                                                    scrollTop: 0
                                                                }, 'slow');
                                                            }

                                                            if (json['error']['country']) {
                                                                $('select[name=\'country_id\']').after('<div class="text-danger">' + json['error']['country'] + '</div>');
                                                            }

                                                            if (json['error']['zone']) {
                                                                $('select[name=\'zone_id\']').after('<div class="text-danger">' + json['error']['zone'] + '</div>');
                                                            }

                                                            if (json['error']['postcode']) {
                                                                $('input[name=\'postcode\']').after('<div class="text-danger">' + json['error']['postcode'] + '</div>');
                                                            }
                                                        }

                                                        if (json['shipping_method']) {
                                                            $('#modal-shipping').remove();

                                                            html = '<div id="modal-shipping" class="modal">';
                                                            html += '  <div class="modal-dialog">';
                                                            html += '    <div class="modal-content">';
                                                            html += '      <div class="modal-header">';
                                                            html += '        <h4 class="modal-title">Please select the preferred shipping method to use on this order.</h4>';
                                                            html += '      </div>';
                                                            html += '      <div class="modal-body">';

                                                            for (i in json['shipping_method']) {
                                                                html += '<p><strong>' + json['shipping_method'][i]['title'] + '</strong></p>';

                                                                if (!json['shipping_method'][i]['error']) {
                                                                    for (j in json['shipping_method'][i]['quote']) {
                                                                        html += '<div class="radio">';
                                                                        html += '  <label>';

                                                                        if (json['shipping_method'][i]['quote'][j]['code'] == '') {
                                                                            html += '<input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" />';
                                                                        } else {
                                                                            html += '<input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" />';
                                                                        }

                                                                        html += json['shipping_method'][i]['quote'][j]['title'] + ' - ' + json['shipping_method'][i]['quote'][j]['text'] + '</label></div>';
                                                                    }
                                                                } else {
                                                                    html += '<div class="alert alert-danger">' + json['shipping_method'][i]['error'] + '</div>';
                                                                }
                                                            }

                                                            html += '      </div>';
                                                            html += '      <div class="modal-footer">';
                                                            html += '        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>';

                                                            html += '        <input type="button" value="Apply Shipping" id="button-shipping" data-loading-text="Loading..." class="btn btn-primary" disabled="disabled" />';

                                                            html += '      </div>';
                                                            html += '    </div>';
                                                            html += '  </div>';
                                                            html += '</div> ';

                                                            $('body').append(html);

                                                            $('#modal-shipping').modal('show');

                                                            $('input[name=\'shipping_method\']').on('change', function() {
                                                                $('#button-shipping').prop('disabled', false);
                                                            });
                                                        }
                                                    },
                                                    error: function(xhr, ajaxOptions, thrownError) {
                                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                                    }
                                                });
                                            });

                                            $(document).delegate('#button-shipping', 'click', function() {
                                                $.ajax({
                                                    url: 'index.php?route=extension/total/shipping/shipping',
                                                    type: 'post',
                                                    data: 'shipping_method=' + encodeURIComponent($('input[name=\'shipping_method\']:checked').val()),
                                                    dataType: 'json',
                                                    beforeSend: function() {
                                                        $('#button-shipping').button('loading');
                                                    },
                                                    complete: function() {
                                                        $('#button-shipping').button('reset');
                                                    },
                                                    success: function(json) {
                                                        $('.alert').remove();

                                                        if (json['error']) {
                                                            $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                                                            $('html, body').animate({
                                                                scrollTop: 0
                                                            }, 'slow');
                                                        }

                                                        if (json['redirect']) {
                                                            location = json['redirect'];
                                                        }
                                                    },
                                                    error: function(xhr, ajaxOptions, thrownError) {
                                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                                    }
                                                });
                                            });
                                        });
                                        //
                                        -->
                                    </script>
                                    <script type="text/javascript">
                                        <!--
                                        document.addEventListener("DOMContentLoaded", function(event) {
                                            $('select[name=\'country_id\']').on('change', function() {
                                                $.ajax({
                                                    url: 'index.php?route=extension/total/shipping/country&country_id=' + this.value,
                                                    dataType: 'json',
                                                    beforeSend: function() {
                                                        $('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
                                                    },
                                                    complete: function() {
                                                        $('.fa-spin').remove();
                                                    },
                                                    success: function(json) {
                                                        if (json['postcode_required'] == '1') {
                                                            $('input[name=\'postcode\']').parent().parent().addClass('required');
                                                        } else {
                                                            $('input[name=\'postcode\']').parent().parent().removeClass('required');
                                                        }

                                                        html = '<option value=""> --- Please Select --- </option>';

                                                        if (json['zone'] && json['zone'] != '') {
                                                            for (i = 0; i < json['zone'].length; i++) {
                                                                html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                                                                if (json['zone'][i]['zone_id'] == '') {
                                                                    html += ' selected="selected"';
                                                                }

                                                                html += '>' + json['zone'][i]['name'] + '</option>';
                                                            }
                                                        } else {
                                                            html += '<option value="0" selected="selected"> --- None --- </option>';
                                                        }

                                                        $('select[name=\'zone_id\']').html(html);
                                                    },
                                                    error: function(xhr, ajaxOptions, thrownError) {
                                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                                    }
                                                });
                                            });
                                            $('select[name=\'country_id\']').trigger('change');
                                        });

                                        //
                                        -->
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row button-section shopping-btn">
                    <div class="col-sm-12 mrg-B15 checkout-section">
                        <a href="https://www.potterybarn.in/index.php?route=checkout/checkout" class="btn btn-primary btn-block checkout-btn">Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-dy-embedded-object="true"></div>
    <div data-dy-embedded-object="true"></div>
    <div data-dy-embedded-object="true"></div>
</div>