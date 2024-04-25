<?php

/**
 * @var \luya\web\View $this
 */

//use app\modules\modal\Modal;
use yii\bootstrap5\Modal;
?>
<!--= Modal::widget([]); -->
<!-- Footer Start -->
<div class="container-fluid text-white-50 footer pt-5 mt-5" style="background-color: #601654;">
    <div class="container py-5">
        <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
            <div class="row g-4">
                <div class="col-lg-3">
                    <a href="#">
                        <h1 class="text-primary mb-0">Fruitables</h1>
                        <p class="text-secondary mb-0">Fresh products</p>
                    </a>
                </div>

                <div class="col-lg-6">
                    <!--<div class="position-relative mx-auto">
                                <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                                <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0;">Subscribe Now</button>
                            </div>  -->
                    <div class="input-group mb-3">
                        <input type="text" class="form-control border-0 py-3 px-4" placeholder="Your Email" aria-label="Recipient's Email" aria-describedby="btn-subscr">
                        <button class="btn btn-primary text-white" type="button" id="btn-subscr">Subscribe Now</button>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="d-flex justify-content-end pt-3">
                        <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Why People Like us!</h4>
                    <p class="mb-4">typesetting, remaining essentially unchanged. It was
                        popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.</p>
                    <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read More</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Shop Info</h4>
                    <a class="btn-link" href="">About Us</a>
                    <a class="btn-link" href="">Contact Us</a>
                    <a class="btn-link" href="">Privacy Policy</a>
                    <a class="btn-link" href="">Terms & Condition</a>
                    <a class="btn-link" href="">Return Policy</a>
                    <a class="btn-link" href="">FAQs & Help</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Account</h4>
                    <a class="btn-link" href="">My Account</a>
                    <a class="btn-link" href="">Shop details</a>
                    <a class="btn-link" href="">Shopping Cart</a>
                    <a class="btn-link" href="">Wishlist</a>
                    <a class="btn-link" href="">Order History</a>
                    <a class="btn-link" href="">International Orders</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Contact</h4>
                    <p>Address: 1429 Netus Rd, NY 48247</p>
                    <p>Email: Example@gmail.com</p>
                    <p>Phone: +0123 4567 8910</p>
                    <p>Payment Accepted</p>
                    <img src="img/payment.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->
<div class="potterybarn-kids-footer custom-footer fixed">
    <div class="background-custom-footer"></div>
    <div class="background">
        <div class="shadow"></div>
        <div class="pattern">
            <div>
                <div class="advanced-grid advanced-grid-86643789 pb-mob-newsletter " style="margin-top: 0px;margin-left: 0px;margin-right: 0px;margin-bottom: 0px;">
                    <div style="background-color: #e6e3de;">
                        <div class="container">
                            <div style="padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4></h4>
                                        <div class="strip-line"></div>
                                        <div class="clearfix default-newsletter" style="clear: both" id="newsletter86643789">
                                            <p>Join our VIP list for inspiration, new arrivals &amp; more.</p>
                                            <form method="post" enctype="multipart/form-data"><input type="hidden" name="__csrf" id="__csrf" value="ff48ff63acf5169ea49a06196ba7d55e38363e1c">
                                                <input type="email" class="email" placeholder="Enter Your Email"><a class="button subscribe">SIGN IN</a>
                                            </form>
                                        </div>
                                        <script type="text/javascript">
                                            window.addEventListener('load', function() {
                                                function Unsubscribe() {
                                                    $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/unsubscribe', {
                                                        email: $('#newsletter86643789 .email').val(),
                                                        __csrf: $('#__csrf').val()
                                                    }, function(e) {
                                                        $('#newsletter86643789 .email').val('');
                                                        alert(e.message);
                                                    }, 'json');
                                                }

                                                function Subscribe() {
                                                    var email = $('#newsletter86643789 .email').val();
                                                    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                                                    if (!email.match(mailformat)) {
                                                        alert("Invalid Email id.");
                                                        return false;
                                                    }

                                                    $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/subscribe', {
                                                        email: $('#newsletter86643789 .email').val(),
                                                        __csrf: $('#__csrf').val()
                                                    }, function(e) {
                                                        if (e.error === 1) {
                                                            var r = confirm(e.message);
                                                            if (r == true) {
                                                                $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/unsubscribe', {
                                                                    email: $('#newsletter86643789 .email').val(),
                                                                    __csrf: $('#__csrf').val()
                                                                }, function(e) {
                                                                    $('#newsletter86643789 .email').val('');
                                                                    alert(e.message);
                                                                    var store_code = "potterybarn";
                                                                    if (store_code == 'porticoindia') {
                                                                        // here your code
                                                                        setTimeout(function() {
                                                                            $('.newsletter-popup').hide();
                                                                            $('.common-home').css({
                                                                                overflow: "auto"
                                                                            });
                                                                        }, 1500);
                                                                    }
                                                                }, 'json');
                                                            }
                                                        } else {
                                                            $('#newsletter86643789 .email').val('');
                                                            var store_code = "potterybarn";
                                                            if (store_code == 'tiffany') {
                                                                window.location = "/EmailSignUpConfirm";
                                                            } else {
                                                                alert(e.message);
                                                            }
                                                            if (store_code == 'porticoindia') {
                                                                // here your code
                                                                setTimeout(function() {
                                                                    $('.newsletter-popup').hide();
                                                                    $('.common-home').css({
                                                                        overflow: "auto"
                                                                    });
                                                                }, 1500);
                                                            }
                                                        }
                                                    }, 'json');
                                                }

                                                $('#newsletter86643789 .subscribe').click(Subscribe);
                                                $('#newsletter86643789 .unsubscribe').click(Unsubscribe);
                                                $('#newsletter86643789 .email').keypress(function(e) {
                                                    if (e.which == 13) {
                                                        Subscribe();
                                                    }
                                                });
                                            });
                                        </script>
                                        <div class="social-icons d-md-none d-lg-none d-xl-none">
                                            <ul>
                                                <li>
                                                    <a href="https://www.instagram.com/potterybarnindia" class="instagram">
                                                        <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                            <defs>
                                                                <style>
                                                                    .cls-1 {
                                                                        fill: #000;
                                                                    }
                                                                </style>
                                                            </defs>
                                                            <title>Instagram</title>
                                                            <path class="cls-1" d="M17,13.94A3,3,0,0,0,13.9,17a2.78,2.78,0,0,0,.89,2.13,3.1,3.1,0,0,0,4.35,0A2.92,2.92,0,0,0,20,17a3,3,0,0,0-.89-2.18A3,3,0,0,0,17,13.94Z"></path>
                                                            <path class="cls-1" d="M24.34,12.49a3.63,3.63,0,0,0-.21-.85,4.21,4.21,0,0,0-.68-1.07,3,3,0,0,0-1.07-.68,3.58,3.58,0,0,0-.85-.22l-1.24-.12c-.47,0-.85-.05-1.15-.05H14.88a10.42,10.42,0,0,0-1.16.05,5.57,5.57,0,0,0-1.23.12,3.58,3.58,0,0,0-.85.22,4,4,0,0,0-1.07.68,3,3,0,0,0-.68,1.07,3.58,3.58,0,0,0-.22.85c0,.34-.08.72-.12,1.23s-.05.86-.05,1.16v4.26a10.25,10.25,0,0,0,.05,1.15,5.6,5.6,0,0,0,.12,1.24,7.8,7.8,0,0,0,.22.85,4.28,4.28,0,0,0,.68,1.07,3.16,3.16,0,0,0,1.07.68,3.63,3.63,0,0,0,.85.21c.34,0,.72.09,1.23.13s.86,0,1.16,0h4.26c.3,0,.68,0,1.15,0a5,5,0,0,0,1.24-.13,3.63,3.63,0,0,0,.85-.21,4.58,4.58,0,0,0,1.07-.68,3.16,3.16,0,0,0,.68-1.07,3.63,3.63,0,0,0,.21-.85c0-.34.09-.73.13-1.24s0-.85,0-1.15V14.88c0-.3,0-.69,0-1.16A5,5,0,0,0,24.34,12.49Zm-4.05,7.84A4.5,4.5,0,0,1,17,21.7a4.59,4.59,0,0,1-3.33-1.37A4.49,4.49,0,0,1,12.28,17a4.6,4.6,0,0,1,1.36-3.33A4.54,4.54,0,0,1,17,12.32a4.35,4.35,0,0,1,3.32,1.36,4.72,4.72,0,0,1,0,6.65Zm2.35-7.46a1.05,1.05,0,0,1-.77.34,1,1,0,0,1-.77-.34,1,1,0,0,1,0-1.53,1,1,0,0,1,.77-.34,1.05,1.05,0,0,1,.77.34,1,1,0,0,1,0,1.53Z"></path>
                                                            <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm9.08,20.76A5.52,5.52,0,0,1,24.6,24.6a5.78,5.78,0,0,1-3.84,1.49c-.68,0-2,0-3.75,0s-3.07,0-3.75,0A5.48,5.48,0,0,1,9.42,24.6a5.61,5.61,0,0,1-1.49-3.84c0-.68,0-2,0-3.75s0-3.07,0-3.75A5.39,5.39,0,0,1,9.42,9.42a5.57,5.57,0,0,1,3.84-1.49c.68,0,2,0,3.75,0s3.07,0,3.75,0A5.43,5.43,0,0,1,24.6,9.42a5.76,5.76,0,0,1,1.49,3.84c0,.68,0,1.91,0,3.75S26.13,20.08,26.09,20.76Z"></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://www.facebook.com/potterybarnindia/" class="facebook">
                                                        <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                            <defs>
                                                                <style>
                                                                    .cls-1 {
                                                                        fill: #000;
                                                                    }
                                                                </style>
                                                            </defs>
                                                            <title>Facebook</title>
                                                            <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm3.75,14.13-.19,2.54H18v8.84h-3.3V16.67H12.9V14.13h1.76V12.42a4.57,4.57,0,0,1,.57-2.64A3.14,3.14,0,0,1,18,8.5a10.89,10.89,0,0,1,3.15.32l-.44,2.6a5.94,5.94,0,0,0-1.41-.21c-.69,0-1.3.25-1.3.93v2Z"></path>
                                                        </svg>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="https://www.youtube.com/user/potterybarn" class="youtube">
                                                        <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                            <defs>
                                                                <style>
                                                                    .cls-1 {
                                                                        fill: #000;
                                                                    }
                                                                </style>
                                                            </defs>
                                                            <title>YouTube</title>
                                                            <path class="cls-1" d="M18.82,19.16a.8.8,0,0,0-.36.09,1.39,1.39,0,0,0-.34.27V17.83h-.78v5.25h.78v-.3a1.19,1.19,0,0,0,.34.27.84.84,0,0,0,.4.08.64.64,0,0,0,.53-.22,1,1,0,0,0,.18-.63V20.13a1.12,1.12,0,0,0-.2-.72A.64.64,0,0,0,18.82,19.16Zm-.05,3a.38.38,0,0,1-.07.27.23.23,0,0,1-.21.09.41.41,0,0,1-.18-.05.54.54,0,0,1-.19-.13V19.93a.56.56,0,0,1,.16-.12.38.38,0,0,1,.17,0,.29.29,0,0,1,.24.11.42.42,0,0,1,.08.29Z"></path>
                                                            <polygon class="cls-1" points="11.52 18.59 12.42 18.59 12.42 23.08 13.3 23.08 13.3 18.59 14.21 18.59 14.21 17.83 11.52 17.83 11.52 18.59"></polygon>
                                                            <path class="cls-1" d="M16,22.15a.91.91,0,0,1-.24.2.42.42,0,0,1-.22.09.19.19,0,0,1-.15-.06.34.34,0,0,1,0-.2v-3h-.77v3.25a.8.8,0,0,0,.13.51.48.48,0,0,0,.41.18.85.85,0,0,0,.44-.13,1.23,1.23,0,0,0,.45-.36v.43h.78V19.2H16Z"></path>
                                                            <path class="cls-1" d="M16.89,14.86a.37.37,0,0,0,.28-.1.36.36,0,0,0,.1-.27V12.16a.26.26,0,0,0-.1-.22.45.45,0,0,0-.28-.09.36.36,0,0,0-.26.09.26.26,0,0,0-.1.22v2.33a.38.38,0,0,0,.09.27A.35.35,0,0,0,16.89,14.86Z"></path>
                                                            <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm1.86,11.26h.87v3.27a.37.37,0,0,0,.06.23.24.24,0,0,0,.17.06.51.51,0,0,0,.25-.09,1.18,1.18,0,0,0,.27-.23V11.22h.87v4.27h-.87V15a1.79,1.79,0,0,1-.5.4,1.24,1.24,0,0,1-.51.13.55.55,0,0,1-.46-.19.94.94,0,0,1-.15-.58Zm-3.24,1a1,1,0,0,1,.35-.79,1.44,1.44,0,0,1,.95-.3,1.27,1.27,0,0,1,.89.31,1.07,1.07,0,0,1,.34.8v2.2a1.08,1.08,0,0,1-.34.86,1.48,1.48,0,0,1-1.85,0,1.13,1.13,0,0,1-.34-.86ZM13.25,9.7,13.89,12H14l.6-2.32h1l-1.14,3.39v2.4h-1V13.2L12.26,9.7ZM25.51,21.8a2.43,2.43,0,0,1-2.42,2.42H10.93A2.44,2.44,0,0,1,8.5,21.8V19.32a2.44,2.44,0,0,1,2.43-2.43H23.09a2.44,2.44,0,0,1,2.42,2.43Z"></path>
                                                            <path class="cls-1" d="M21.16,19.11a1.18,1.18,0,0,0-.85.31,1.09,1.09,0,0,0-.34.83V22a1.3,1.3,0,0,0,.3.88,1.08,1.08,0,0,0,.83.32,1.14,1.14,0,0,0,.86-.3,1.22,1.22,0,0,0,.3-.9v-.2h-.8V22a.82.82,0,0,1-.08.44.34.34,0,0,1-.27.1.29.29,0,0,1-.26-.12.86.86,0,0,1-.07-.42v-.73h1.48v-1a1.14,1.14,0,0,0-.29-.84A1.06,1.06,0,0,0,21.16,19.11Zm.3,1.52h-.68v-.39a.55.55,0,0,1,.08-.35.32.32,0,0,1,.26-.11.33.33,0,0,1,.26.11.62.62,0,0,1,.08.35Z"></path>
                                                        </svg>
                                                    </a>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer full-width">
        <div class="background-footer"></div>
        <div class="background">
            <div class="shadow"></div>
            <div class="pattern">
                <div>
                    <div class="advanced-grid advanced-grid-45750570 potterybarn-footer " style="margin-top: 0px;margin-left: 0px;margin-right: 0px;margin-bottom: 0px;">
                        <div style="background-color: #e6e3de;">
                            <div class="container">
                                <div style="padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h4 class="footer-heading">Customer Service<i class="glyphicon glyphicon-plus"></i><i class="glyphicon glyphicon-minus"></i></h4>
                                            <ul class="footer-column">
                                                <li><a href="contacts-us-potterybarn">Contact Us</a></li>
                                                <li><a href="tandb">Terms &amp; Conditions</a></li>
                                                <li><a href="pb-privacy-policy">Privacy Policy</a></li>
                                                <li><a href="fees-payments-potterybarn">Fees &amp; Payment</a></li>
                                                <li><a href="shipping-policyn">Shiping &amp; Policy</a></li>
                                                <li><a href="returns-policy-pb">Return Policy</a></li>
                                                <li><a href="refund-policy">Refund Policy</a></li>
                                                <li class="measure-delivery"><a href="delivery-check">Measure for Delivery</a></li>
                                            </ul>
                                            <style>
                                                .fixed-header {
                                                    position: relative;
                                                }

                                                div#trending-now {
                                                    overflow: hidden;
                                                }

                                                #trending-now .owl-stage-outer {
                                                    margin-right: -100px;
                                                }

                                                .potterybarn-kids-body li.measure-delivery {
                                                    display: none;
                                                }

                                                @media (min-width: 992px) {
                                                    .menu-position {
                                                        position: absolute !important;
                                                        top: 143px !important;
                                                    }
                                                }

                                                body .potterybarn-newletter-popup .modal-close {
                                                    right: 5px;
                                                    top: 5px;
                                                    width: 40px;
                                                    height: 40px;
                                                    font-size: 40px;
                                                    border-radius: 50%;
                                                    line-height: 32px;
                                                    background: #fff;
                                                }

                                                .container-megamenu.container {
                                                    width: 100%;
                                                }

                                                .account-forgotten .register-wraps,
                                                .account-track .register-wraps,
                                                .account-track-otp .register-wraps {
                                                    max-width: 360px;
                                                }

                                                .account-forgotten .col-sm-6.col-sm-offset-3 {
                                                    -ms-flex: 0 0 100%%;
                                                    flex: 0 0 100%;
                                                    max-width: 100%;
                                                }

                                                .account-forgotten .g-recaptcha>div,
                                                .account-forgotten .g-recaptcha>div iframe {
                                                    width: 303px !important;
                                                }

                                                .account-forgotten .rc-anchor-normal {
                                                    width: 248px;
                                                }

                                                .account-forgotten .rc-anchor-logo-portrait {
                                                    margin: 10px 0 0 -15px;
                                                }

                                                a.prod-logo svg#logo-pb,
                                                a.prod-logo-kids svg {
                                                    width: 150px;
                                                }

                                                #cart .table>tbody>tr>td:nth-child(3) {
                                                    min-width: 50px;
                                                }

                                                #cart .table>tbody>tr>td:nth-child(4) {
                                                    white-space: nowrap;
                                                }

                                                header #cart li.cart-product-details {
                                                    height: 150px;
                                                    overflow: auto;
                                                }

                                                .cart-total td {
                                                    font-size: 14px;
                                                }

                                                .fixed-header #cart .dropdown-menu {
                                                    left: -30px !important;
                                                }

                                                .potterybarn.account-login .login-wrap,
                                                .potterybarn-kids-body.account-login .login-wrap {
                                                    margin: auto;
                                                }

                                                .formbody .no-thanks {
                                                    padding-bottom: 10px !important;
                                                }

                                                @media (max-width: 992px) {
                                                    #trending-now .owl-stage-outer {
                                                        margin-left: -50px;
                                                        margin-right: -50px;
                                                    }
                                                }

                                                @media (min-width: 992px) {
                                                    .mobile-menu-only {
                                                        display: none;
                                                    }
                                                }
                                            </style>
                                        </div>
                                        <div class="col-sm-3">
                                            <h4 class="footer-heading">About us<i class="glyphicon glyphicon-plus"></i><i class="glyphicon glyphicon-minus"></i></h4>
                                            <ul class="footer-column">
                                                <li><a href="about-potterybarn">Our Values</a></li>
                                                <li><a href="sustainability-potterybarn">Sustainability</a></li>
                                                <li><a href="/about-potterybarnkids">Potterrybarn Kids About Us</a></li>
                                                <li><a href="/pbk-sustainability-page">Potterybarn Kids Sustainability</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h4 class="footer-heading">Stores<i class="glyphicon glyphicon-plus"></i><i class="glyphicon glyphicon-minus"></i></h4>
                                            <ul class="footer-column">

                                                <li><a href="design-crew">Design Crew</a></li>
                                                <li><a href="account-track-order">Track Your Order</a></li>
                                                <li><a href="store-locator">Find A Store</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="social-icons d-none d-sm-none d-md-block">
                                                <h2>FOLLOW US</h2>
                                                <ul>
                                                    <li>
                                                        <a href="https://www.instagram.com/potterybarn_india" class="instagram">
                                                            <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                                <defs>
                                                                    <style>
                                                                        .cls-1 {
                                                                            fill: #000;
                                                                        }
                                                                    </style>
                                                                </defs>
                                                                <title>Instagram</title>
                                                                <path class="cls-1" d="M17,13.94A3,3,0,0,0,13.9,17a2.78,2.78,0,0,0,.89,2.13,3.1,3.1,0,0,0,4.35,0A2.92,2.92,0,0,0,20,17a3,3,0,0,0-.89-2.18A3,3,0,0,0,17,13.94Z"></path>
                                                                <path class="cls-1" d="M24.34,12.49a3.63,3.63,0,0,0-.21-.85,4.21,4.21,0,0,0-.68-1.07,3,3,0,0,0-1.07-.68,3.58,3.58,0,0,0-.85-.22l-1.24-.12c-.47,0-.85-.05-1.15-.05H14.88a10.42,10.42,0,0,0-1.16.05,5.57,5.57,0,0,0-1.23.12,3.58,3.58,0,0,0-.85.22,4,4,0,0,0-1.07.68,3,3,0,0,0-.68,1.07,3.58,3.58,0,0,0-.22.85c0,.34-.08.72-.12,1.23s-.05.86-.05,1.16v4.26a10.25,10.25,0,0,0,.05,1.15,5.6,5.6,0,0,0,.12,1.24,7.8,7.8,0,0,0,.22.85,4.28,4.28,0,0,0,.68,1.07,3.16,3.16,0,0,0,1.07.68,3.63,3.63,0,0,0,.85.21c.34,0,.72.09,1.23.13s.86,0,1.16,0h4.26c.3,0,.68,0,1.15,0a5,5,0,0,0,1.24-.13,3.63,3.63,0,0,0,.85-.21,4.58,4.58,0,0,0,1.07-.68,3.16,3.16,0,0,0,.68-1.07,3.63,3.63,0,0,0,.21-.85c0-.34.09-.73.13-1.24s0-.85,0-1.15V14.88c0-.3,0-.69,0-1.16A5,5,0,0,0,24.34,12.49Zm-4.05,7.84A4.5,4.5,0,0,1,17,21.7a4.59,4.59,0,0,1-3.33-1.37A4.49,4.49,0,0,1,12.28,17a4.6,4.6,0,0,1,1.36-3.33A4.54,4.54,0,0,1,17,12.32a4.35,4.35,0,0,1,3.32,1.36,4.72,4.72,0,0,1,0,6.65Zm2.35-7.46a1.05,1.05,0,0,1-.77.34,1,1,0,0,1-.77-.34,1,1,0,0,1,0-1.53,1,1,0,0,1,.77-.34,1.05,1.05,0,0,1,.77.34,1,1,0,0,1,0,1.53Z"></path>
                                                                <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm9.08,20.76A5.52,5.52,0,0,1,24.6,24.6a5.78,5.78,0,0,1-3.84,1.49c-.68,0-2,0-3.75,0s-3.07,0-3.75,0A5.48,5.48,0,0,1,9.42,24.6a5.61,5.61,0,0,1-1.49-3.84c0-.68,0-2,0-3.75s0-3.07,0-3.75A5.39,5.39,0,0,1,9.42,9.42a5.57,5.57,0,0,1,3.84-1.49c.68,0,2,0,3.75,0s3.07,0,3.75,0A5.43,5.43,0,0,1,24.6,9.42a5.76,5.76,0,0,1,1.49,3.84c0,.68,0,1.91,0,3.75S26.13,20.08,26.09,20.76Z"></path>
                                                            </svg>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="https://www.facebook.com/potterybarnindia/" class="facebook">
                                                            <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                                <defs>
                                                                    <style>
                                                                        .cls-1 {
                                                                            fill: #000;
                                                                        }
                                                                    </style>
                                                                </defs>
                                                                <title>Facebook</title>
                                                                <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm3.75,14.13-.19,2.54H18v8.84h-3.3V16.67H12.9V14.13h1.76V12.42a4.57,4.57,0,0,1,.57-2.64A3.14,3.14,0,0,1,18,8.5a10.89,10.89,0,0,1,3.15.32l-.44,2.6a5.94,5.94,0,0,0-1.41-.21c-.69,0-1.3.25-1.3.93v2Z"></path>
                                                            </svg>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="https://www.youtube.com/user/potterybarn" class="youtube">
                                                            <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34.02 34.02">
                                                                <defs>
                                                                    <style>
                                                                        .cls-1 {
                                                                            fill: #000;
                                                                        }
                                                                    </style>
                                                                </defs>
                                                                <title>YouTube</title>
                                                                <path class="cls-1" d="M18.82,19.16a.8.8,0,0,0-.36.09,1.39,1.39,0,0,0-.34.27V17.83h-.78v5.25h.78v-.3a1.19,1.19,0,0,0,.34.27.84.84,0,0,0,.4.08.64.64,0,0,0,.53-.22,1,1,0,0,0,.18-.63V20.13a1.12,1.12,0,0,0-.2-.72A.64.64,0,0,0,18.82,19.16Zm-.05,3a.38.38,0,0,1-.07.27.23.23,0,0,1-.21.09.41.41,0,0,1-.18-.05.54.54,0,0,1-.19-.13V19.93a.56.56,0,0,1,.16-.12.38.38,0,0,1,.17,0,.29.29,0,0,1,.24.11.42.42,0,0,1,.08.29Z"></path>
                                                                <polygon class="cls-1" points="11.52 18.59 12.42 18.59 12.42 23.08 13.3 23.08 13.3 18.59 14.21 18.59 14.21 17.83 11.52 17.83 11.52 18.59"></polygon>
                                                                <path class="cls-1" d="M16,22.15a.91.91,0,0,1-.24.2.42.42,0,0,1-.22.09.19.19,0,0,1-.15-.06.34.34,0,0,1,0-.2v-3h-.77v3.25a.8.8,0,0,0,.13.51.48.48,0,0,0,.41.18.85.85,0,0,0,.44-.13,1.23,1.23,0,0,0,.45-.36v.43h.78V19.2H16Z"></path>
                                                                <path class="cls-1" d="M16.89,14.86a.37.37,0,0,0,.28-.1.36.36,0,0,0,.1-.27V12.16a.26.26,0,0,0-.1-.22.45.45,0,0,0-.28-.09.36.36,0,0,0-.26.09.26.26,0,0,0-.1.22v2.33a.38.38,0,0,0,.09.27A.35.35,0,0,0,16.89,14.86Z"></path>
                                                                <path class="cls-1" d="M17,0A17,17,0,1,0,34,17,17,17,0,0,0,17,0Zm1.86,11.26h.87v3.27a.37.37,0,0,0,.06.23.24.24,0,0,0,.17.06.51.51,0,0,0,.25-.09,1.18,1.18,0,0,0,.27-.23V11.22h.87v4.27h-.87V15a1.79,1.79,0,0,1-.5.4,1.24,1.24,0,0,1-.51.13.55.55,0,0,1-.46-.19.94.94,0,0,1-.15-.58Zm-3.24,1a1,1,0,0,1,.35-.79,1.44,1.44,0,0,1,.95-.3,1.27,1.27,0,0,1,.89.31,1.07,1.07,0,0,1,.34.8v2.2a1.08,1.08,0,0,1-.34.86,1.48,1.48,0,0,1-1.85,0,1.13,1.13,0,0,1-.34-.86ZM13.25,9.7,13.89,12H14l.6-2.32h1l-1.14,3.39v2.4h-1V13.2L12.26,9.7ZM25.51,21.8a2.43,2.43,0,0,1-2.42,2.42H10.93A2.44,2.44,0,0,1,8.5,21.8V19.32a2.44,2.44,0,0,1,2.43-2.43H23.09a2.44,2.44,0,0,1,2.42,2.43Z"></path>
                                                                <path class="cls-1" d="M21.16,19.11a1.18,1.18,0,0,0-.85.31,1.09,1.09,0,0,0-.34.83V22a1.3,1.3,0,0,0,.3.88,1.08,1.08,0,0,0,.83.32,1.14,1.14,0,0,0,.86-.3,1.22,1.22,0,0,0,.3-.9v-.2h-.8V22a.82.82,0,0,1-.08.44.34.34,0,0,1-.27.1.29.29,0,0,1-.26-.12.86.86,0,0,1-.07-.42v-.73h1.48v-1a1.14,1.14,0,0,0-.29-.84A1.06,1.06,0,0,0,21.16,19.11Zm.3,1.52h-.68v-.39a.55.55,0,0,1,.08-.35.32.32,0,0,1,.26-.11.33.33,0,0,1,.26.11.62.62,0,0,1,.08.35Z"></path>
                                                            </svg>
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                            <style>
                                                @font-face {
                                                    font-family: "Canela-Regular";
                                                    src: url("https://anscommerce.s3.ap-south-1.amazonaws.com/live/image/catalog/brandstore/potterybarn/font/Canela-Thin.ttf"),
                                                        url("https://anscommerce.s3.ap-south-1.amazonaws.com/live/image/catalog/brandstore/potterybarn/font/Canela-Thin.otf") format("otf");
                                                }

                                                /*
    .potterybarn-kids-body .trending-now-main.trending-now-main-kids .box-heading{
      padding: 0px;
    }
*/
                                                .footer .social-icons ul,
                                                .potterybarn-kids-footer .social-icons ul {
                                                    justify-content: left;
                                                }

                                                .potterybarn-kids-body .advanced-grid.potterybarn-footer>div>.container {
                                                    display: block !important;
                                                }

                                                .potterybarn-kids-body .parsys_column_logo_kids .parsys_column_multibrand:nth-child(2) .imagerollover {
                                                    padding: 0;
                                                }

                                                .potterybarn-kids-body .room-inspiration h3 a {
                                                    font-weight: normal;
                                                }

                                                .header-right {
                                                    margin-top: 30px;
                                                }

                                                .potterybarn .trending-now-main .box-heading {
                                                    font-size: 21px;
                                                    display: inline-block;
                                                    padding: 18px 0px;
                                                    font-weight: 600;
                                                }

                                                .common-home .main-content .trending-now-main {
                                                    margin-bottom: 80px !important;
                                                    margin-top: 40px !important;
                                                    max-width: 100% !important;
                                                }

                                                .two-dummy-img {
                                                    padding: 0px 50px 80px;
                                                }

                                                body.common-home .bottom-spacing {
                                                    padding-bottom: 80px !important;
                                                }

                                                body.common-home .custom-section {
                                                    padding: 0px 50px 80px;
                                                }

                                                .design-crew a:first-child img {
                                                    margin-bottom: 0px;
                                                }

                                                .potterybarn .trending-now-main .box-heading {
                                                    padding: 0px 0px 18px;
                                                }

                                                body.common-home .parsys_column_main {
                                                    padding: 80px 50px 0px;
                                                }

                                                .common-home .banner-img.hero-image {
                                                    padding-bottom: 80px;
                                                }



                                                .potterybarn-kids-body .fan-favorites {
                                                    padding: 90px 50px;
                                                }

                                                body.potterybarn-kids-body .two-dummy-img {
                                                    padding: 0px 50px 90px;
                                                }

                                                .potterybarn-kids-body .family-brands.family-brands-kids .parsys_column_logo_kids {
                                                    padding: 90px 30px !important;
                                                    justify-content: center;
                                                }

                                                .potterybarn-kids-body .room-inspiration .order-online {
                                                    padding-bottom: 0px;
                                                }

                                                body.potterybarn-kids-body .custom-section {
                                                    padding: 0px 50px 90px;
                                                }

                                                body.potterybarn-kids-body .banner-img.hero-image {
                                                    padding-bottom: 90px;
                                                }

                                                .mfp-container {
                                                    background: none;
                                                    overflow: initial;
                                                    max-width: initial;
                                                }

                                                button#zoom {
                                                    background: transparent;
                                                    border: none;
                                                    top: 10px;
                                                    position: absolute;
                                                    z-index: 9;
                                                    left: 15px;
                                                    font-size: 14px;
                                                    background: #fff;
                                                    color: #000;
                                                    width: 35px;
                                                    height: 35px;
                                                    border-radius: 30px;
                                                }

                                                .mfp-iframe-holder .mfp-close,
                                                .mfp-image-holder .mfp-close {
                                                    right: 8px !important;
                                                }

                                                #zoom .fa-search {
                                                    color: #1c1c1c;
                                                }

                                                @media (min-width: 992px) {
                                                    .advanced-grid.potterybarn-footer .container {
                                                        padding: 50px 15px 15px 15px !important;
                                                    }
                                                }

                                                @media (min-width: 768px) {
                                                    .custom-section.custom-section-kids+.banner-img.hero-image {
                                                        padding-top: 4rem !important;
                                                    }

                                                    .s1b2 {
                                                        display: flex;
                                                        align-items: center;
                                                    }

                                                    .every-day-section.text-center .container>h2+.row {
                                                        max-width: 990px;
                                                        margin: auto;
                                                    }

                                                    body.information-information .potterybarn-about-page .every-day-section .about-containt {
                                                        margin-top: 68px;
                                                        padding: 0px 0px;
                                                        max-width: 350px;
                                                        margin-left: auto;
                                                        margin-right: auto;
                                                    }

                                                    body.information-information .potterybarn-about-page .every-day-section .about-containt p {
                                                        padding-bottom: 0px;
                                                        font-size: 24px;
                                                        margin-left: auto;
                                                        margin-right: auto;
                                                    }

                                                    body.information-information .potterybarn-about-page .every-day-section .about-containt h1 {
                                                        padding-bottom: 5px;
                                                    }

                                                    body.information-information .potterybarn-about-page .popup-video p,
                                                    body.information-information .potterybarn-about-page .about-our-story-sec p {
                                                        font-size: 56px;
                                                    }
                                                }

                                                @media (max-width: 767px) {
                                                    .product-category .wishlist-icon {
                                                        height: 45px;
                                                    }

                                                    .potterybarn-kids-body .room-inspiration p {
                                                        font-size: 16px;
                                                    }

                                                    .room-inspiration p {
                                                        padding: 0px 5px 20px !important;
                                                    }

                                                    .fan-favorites+.room-inspiration>p {
                                                        padding-bottom: 0px !important;
                                                    }

                                                    body.common-home .parsys_column_main .parsys_column_child_1 .imagerollover img {
                                                        padding: 7px 0px 14px !important;
                                                    }

                                                    body.common-home .parsys_column_main {
                                                        padding: 10px 0px 0px !important;
                                                    }

                                                    .potterybarn .trending-now-main .box-heading {
                                                        font-size: 17px;
                                                        padding: 38px 0px 20px;
                                                    }

                                                    .room-inspiration~.trending-now-main .box-heading {
                                                        padding-top: 0;
                                                    }

                                                    .potterybarn-kids-body .family-brands.family-brands-kids .parsys_column_logo_kids {
                                                        padding: 0px 10px 50px !important;
                                                        justify-content: center;
                                                    }

                                                    .two-dummy-img {
                                                        padding: 0px 10px 30px;
                                                    }

                                                    body.common-home .bottom-spacing {
                                                        padding-bottom: 30px !important;
                                                    }

                                                    body.common-home .custom-section {
                                                        padding: 0px 10px 30px;
                                                    }

                                                    .common-home .main-content .trending-now-main {
                                                        margin-bottom: 50px !important;
                                                        margin-top: 0px !important
                                                    }

                                                    .potterybarn-kids-body .fan-favorites {
                                                        padding: 0px 10px;
                                                    }

                                                    body.potterybarn-kids-body .two-dummy-img {
                                                        padding: 0px 10px 30px;
                                                    }

                                                    body.potterybarn-kids-body .banner-img.hero-image {
                                                        padding-bottom: 30px;
                                                    }

                                                    .custom-section-child .custom-section-subch {
                                                        flex-direction: column;
                                                    }

                                                    .potterybarn-kids-body .custom-section-child .custom-section-subch {
                                                        flex-direction: row;
                                                    }

                                                    .potterybarn-kids-body .banner-img.hero-image~.room-inspiration,
                                                    .potterybarn-kids-body .two-dummy-img.two-dummy-img-kids {
                                                        padding-bottom: 0px !important;
                                                    }

                                                    .custom-section-subch .col {
                                                        max-width: 85%;
                                                        margin: 0 auto 2rem;
                                                    }

                                                    .family-brands.family-brands-kids.otherbrand+.family-brands>h2 {
                                                        font-size: 22px !important;
                                                    }

                                                    .potterybarn .parsys_column_logo {
                                                        padding: 15px;
                                                        grid-gap: 10px;
                                                    }

                                                    .parsys_column_logo>.parsys_column_multibrand {
                                                        padding: 0 0 !important;
                                                    }

                                                }

                                                @media (max-width: 768px) {
                                                    .parsys_column_main p {
                                                        font-size: 14px;
                                                    }

                                                    .custom-section-child img {
                                                        padding: 0px !important
                                                    }

                                                    .potterybarn .trending-now-main .box-heading {
                                                        font-size: 16px !important;
                                                        letter-spacing: 2px !important;
                                                    }

                                                    .parsys_column_main h3 {
                                                        text-align: center;
                                                        font-size: 35px;
                                                        font-family: "Canela-Regular" !important;
                                                    }

                                                    .potterybarn .trending-now-main .box-heading {
                                                        font-size: 18px !important;
                                                        letter-spacing: 2px !important;
                                                        font-weight: 600;
                                                    }

                                                    .potterybarn-kids-body .custom-section.custom-section-kids .custom-section-child .col {
                                                        padding: 20px 0px;
                                                    }
                                                }

                                                body.account-order .page-fullWidthComponent {
                                                    margin-left: 0;
                                                }

                                                .panel-collapse.collapse.in {
                                                    display: block;
                                                }
                                            </style>
                                            <h4></h4>
                                            <div class="strip-line"></div>
                                            <div class="clearfix default-newsletter" style="clear: both" id="newsletter45750570">
                                                <p>Join our VIP list for inspiration, new arrivals &amp; more.</p>
                                                <form method="post" enctype="multipart/form-data"><input type="hidden" name="__csrf" id="__csrf" value="ff48ff63acf5169ea49a06196ba7d55e38363e1c">
                                                    <input type="email" class="email" placeholder="Enter Your Email"><a class="button subscribe">SIGN UP</a>
                                                </form>
                                            </div>
                                            <script type="text/javascript">
                                                window.addEventListener('load', function() {
                                                    function Unsubscribe() {
                                                        $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/unsubscribe', {
                                                            email: $('#newsletter45750570 .email').val(),
                                                            __csrf: $('#__csrf').val()
                                                        }, function(e) {
                                                            $('#newsletter45750570 .email').val('');
                                                            alert(e.message);
                                                        }, 'json');
                                                    }

                                                    function Subscribe() {
                                                        var email = $('#newsletter45750570 .email').val();
                                                        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                                                        if (!email.match(mailformat)) {
                                                            alert("Invalid Email id.");
                                                            return false;
                                                        }

                                                        $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/subscribe', {
                                                            email: $('#newsletter45750570 .email').val(),
                                                            __csrf: $('#__csrf').val()
                                                        }, function(e) {
                                                            if (e.error === 1) {
                                                                var r = confirm(e.message);
                                                                if (r == true) {
                                                                    $.post('https://www.potterybarn.in/index.php?route=extension/module/newsletter/unsubscribe', {
                                                                        email: $('#newsletter45750570 .email').val(),
                                                                        __csrf: $('#__csrf').val()
                                                                    }, function(e) {
                                                                        $('#newsletter45750570 .email').val('');
                                                                        alert(e.message);
                                                                        var store_code = "potterybarn";
                                                                        if (store_code == 'porticoindia') {
                                                                            // here your code
                                                                            setTimeout(function() {
                                                                                $('.newsletter-popup').hide();
                                                                                $('.common-home').css({
                                                                                    overflow: "auto"
                                                                                });
                                                                            }, 1500);
                                                                        }
                                                                    }, 'json');
                                                                }
                                                            } else {
                                                                $('#newsletter45750570 .email').val('');
                                                                var store_code = "potterybarn";
                                                                if (store_code == 'tiffany') {
                                                                    window.location = "/EmailSignUpConfirm";
                                                                } else {
                                                                    alert(e.message);
                                                                }
                                                                if (store_code == 'porticoindia') {
                                                                    // here your code
                                                                    setTimeout(function() {
                                                                        $('.newsletter-popup').hide();
                                                                        $('.common-home').css({
                                                                            overflow: "auto"
                                                                        });
                                                                    }, 1500);
                                                                }
                                                            }
                                                        }, 'json');
                                                    }

                                                    $('#newsletter45750570 .subscribe').click(Subscribe);
                                                    $('#newsletter45750570 .unsubscribe').click(Unsubscribe);
                                                    $('#newsletter45750570 .email').keypress(function(e) {
                                                        if (e.which == 13) {
                                                            Subscribe();
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="copyright d-none d-sm-none d-md-block ">
                                                <p>
                                                    <a href="#" target="_new" aria-describedby="wsi-external-notification">
                                                        © 2021 Williams-Sonoma, Inc. All Rights Reserved | </a><a href="/tandb">Terms &amp; Conditions <span class="updated">(Updated April 2020)</span></a> | <a href="/pb-privacy-policy">Privacy Policy <span class="updated">(Updated January 2020)</span></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Copyright Start -->
<div class="container-fluid copyright bg-dark py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                <span class="text-light"><a href="#"><i class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All right reserved.</span>
            </div>
            <div class="col-md-6 my-auto text-center text-md-end text-white">
                <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
            </div>
        </div>
    </div>
</div>
<!-- Copyright End -->

<?php
Modal::begin([
    "id" => "ajaxCrudModal",
    "options" => [
        'data-backdrop' => "static",
        'data-keyboard' => "false",
    ],
    "footer" => "", // always need it for jquery plugin
]);

Modal::end();

?>
<!--?= Modal::widget([]); ?-->
<!-- Back to Top -->
<a href="#" class="btn btn-primary border-inner py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>