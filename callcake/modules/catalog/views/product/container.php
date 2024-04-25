<?php

use yii\bootstrap5\ActiveForm;
use yii\bootstrap5\Tabs;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $model dench\products\models\Product */
/* @var $similar dench\products\models\Product[] */
/* @var $viewed boolean */
use siripravi\ecommrce\widgets\OrderFormWidget;
?>

<?php echo $this->render('_breadcrumbs', [
    'model' => $model,
]); ?>

<!--<div class="breadcrumbs">
    <a class="back hide-on-320" href="/menu">
        <img src="/image/site/img/back-mobile.png" class="visible-xs" alt="" width="63" height="64">
        <span>Go Back</span>
    </a>
</div> -->

<h2 class="mb-3 text-center heading"><?= $model->name ?></h2>

<div class="container" style="margin-top:44px;">
    <div class="row product-detail">

        <!--php $form = ActiveForm::begin([
            'enableClientValidation' => false,
            'enableAjaxValidation' => true,
            'validateOnChange' => true,
            'validateOnBlur' => false,
            'options' => [
                'enctype' => 'multipart/form-data',
                'id' => 'product-form',
            ]
        ]); ?-->
        <?php $items = [];

        foreach ($articles as $index => $article) {
            $items[] = [
                'label' => $article->name,
                'content' => $this->render("_article", [
                    'model' => $model,
                    'modelVariant' => $article,
                    // 'articleImages' => $articleImages,
                    // 'features' => $features[$article->id]
                ]),  //, 'form' => $form]),
                'active' => ($index == 0)
            ];
        }
        ?>

        <?php
        echo Tabs::widget([
            //'navType' => 'nav-tabs card-header full-width-tabs',
            'navType' => 'nav nav-pills nav-fill',
            'items' =>      $items,
            'tabContentOptions' => ['class' => 'p-4'],
            //  'itemOptions' => ['class'=>'card-body'],
            'headerOptions' => ['class' => 'use-max-space']

        ]);
        ?>

        <!--?php ActiveForm::end(); ?-->
    </div>
</div>


<!--?= $this->render('_text', [
            'name' => $model->name,
            'text' => $model->text,
        ]) ?-->
<!--?= $this->render('_price', [
            'model' => $model,
           // 'rating' => $rating
        ]) ?-->
<!--?= $this->render('_feature_simple', [
            'model' => $model,
        ]) ?-->

<!--?= $this->render('_complects', [
    'complects' => $model->related,
]) ?-->

<!--= $this->render('_options', [
    'options' => $model->options,
]) ?-->

<?= $this->render('_similar', [
    'viewed' => $viewed,
    'similar' => $similar,
]) ?>

<div class="row product-info">
   
    <div class="col-sm-6 popup-gallery pro-zoom">
        <div class="thumbnails">
            <div class="col-sm-10 zoom-product">
                <div class="product-image inner-cloud-zoom">


                    <a href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_10.jpg" id="ex1" class="open-popup-image thumbnail pdp-image">
                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_10.jpg" width="1400" height="1240" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" id="image" itemprop="image" class="img-fluid">
                    </a>
                </div>
                <div class="prev-next-buttons">
                    <div class="image-prev"><i class="fa fa-angle-left"></i></div>
                    <div class="image-next"><i class="fa fa-angle-right"></i></div>
                </div>
            </div>
            <div class="col-sm-12 zoom-thumbnails">
                <div class="owl-carousel owl-theme owl-loaded owl-drag" id="thumb-slider">
                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(-517px, 0px, 0px); transition: all 0.25s ease 0s; width: 1035px;">
                            <div class="owl-item" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_1.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_1.jpg" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_1.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_1.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_2.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_2.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_2.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_2.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_4.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_4.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_4.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_4.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_5.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_5.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_5.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_5.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_6.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_6.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_6.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_6.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_7.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_7.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_7.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_7.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_8.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_8.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_8.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_8.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_9.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_9.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_9.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_9.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image image-active" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_10.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_10.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_10.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_10.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 103.467px;">
                                <div class="image-additional">
                                    <a class="thumbnail popup-image" href="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_11.jpg" data-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:700,w:780)/data/pottery-barn/17072023img/7921122_11.jpg" data-zoom-image="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:1240,w:1400)/data/pottery-barn/17072023img/7921122_11.jpg" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks">
                                        <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:74,w:74)/data/pottery-barn/17072023img/7921122_11.jpg" width="74" height="74" title="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" alt="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                   </div>            
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <h1 class="product-title">Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks</h1>
        <div class="pb-pdp__badges-cta">
            <div class="pb-pdp__badge share">

                <div class="a2a_kit a2a_kit_size_32 a2a_default_style socil_icon" style="line-height: 32px;">
                    <span class="share-click" href="javascript:void(0);">
                        <img title="Share" width="15" height="20" alt="Share" src="https://cdn.staticans.com/image/catalog/brandstore/sunglass/share.svg">
                    </span>
                    <div class="share-open" style="display: none;">
                        <p title="Facebook"><a class="a2a_button_facebook" target="_blank" rel="nofollow noopener" href="/#facebook"><span class="a2a_svg a2a_s__default a2a_s_facebook a2a_img_text" style="background-color: rgb(8, 102, 255);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                                        <path fill="#fff" d="M28 16c0-6.627-5.373-12-12-12S4 9.373 4 16c0 5.628 3.875 10.35 9.101 11.647v-7.98h-2.474V16H13.1v-1.58c0-4.085 1.849-5.978 5.859-5.978.76 0 2.072.15 2.608.298v3.325c-.283-.03-.775-.045-1.386-.045-1.967 0-2.728.745-2.728 2.683V16h3.92l-.673 3.667h-3.247v8.245C23.395 27.195 28 22.135 28 16Z"></path>
                                    </svg></span>Facebook</a></p>
                        <p title="Pinterest"><a class="a2a_button_pinterest" target="_blank" rel="nofollow noopener" href="/#pinterest"><span class="a2a_svg a2a_s__default a2a_s_pinterest a2a_img_text" style="background-color: rgb(230, 0, 35);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                                        <path fill="#fff" d="M15.995 4C9.361 4 4 9.37 4 15.995c0 5.084 3.16 9.428 7.622 11.176-.109-.948-.198-2.41.039-3.446.217-.938 1.402-5.963 1.402-5.963s-.356-.72-.356-1.777c0-1.668.968-2.912 2.172-2.912 1.027 0 1.52.77 1.52 1.688 0 1.027-.65 2.567-.996 3.998-.287 1.195.602 2.172 1.777 2.172 2.132 0 3.771-2.25 3.771-5.489 0-2.873-2.063-4.877-5.015-4.877-3.416 0-5.42 2.557-5.42 5.203 0 1.027.395 2.132.888 2.735a.357.357 0 0 1 .08.345c-.09.375-.297 1.195-.336 1.363-.05.217-.178.266-.405.158-1.481-.711-2.409-2.903-2.409-4.66 0-3.781 2.745-7.257 7.928-7.257 4.156 0 7.394 2.962 7.394 6.931 0 4.137-2.606 7.464-6.22 7.464-1.214 0-2.36-.632-2.744-1.383l-.75 2.854c-.267 1.046-.998 2.35-1.491 3.149a12.05 12.05 0 0 0 3.554.533C22.629 28 28 22.63 28 16.005 27.99 9.37 22.62 4 15.995 4Z"></path>
                                    </svg></span>Pinterest</a></p>
                        <p title="Whatsapp"><a class="a2a_button_whatsapp" target="_blank" rel="nofollow noopener" href="/#whatsapp"><span class="a2a_svg a2a_s__default a2a_s_whatsapp a2a_img_text" style="background-color: rgb(18, 175, 10);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                                        <path fill="#FFF" fill-rule="evenodd" d="M16.21 4.41C9.973 4.41 4.917 9.465 4.917 15.7c0 2.134.592 4.13 1.62 5.832L4.5 27.59l6.25-2.002a11.241 11.241 0 0 0 5.46 1.404c6.234 0 11.29-5.055 11.29-11.29 0-6.237-5.056-11.292-11.29-11.292zm0 20.69c-1.91 0-3.69-.57-5.173-1.553l-3.61 1.156 1.173-3.49a9.345 9.345 0 0 1-1.79-5.512c0-5.18 4.217-9.4 9.4-9.4 5.183 0 9.397 4.22 9.397 9.4 0 5.188-4.214 9.4-9.398 9.4zm5.293-6.832c-.284-.155-1.673-.906-1.934-1.012-.265-.106-.455-.16-.658.12s-.78.91-.954 1.096c-.176.186-.345.203-.628.048-.282-.154-1.2-.494-2.264-1.517-.83-.795-1.373-1.76-1.53-2.055-.158-.295 0-.445.15-.584.134-.124.3-.326.45-.488.15-.163.203-.28.306-.47.104-.19.06-.36-.005-.506-.066-.147-.59-1.587-.81-2.173-.218-.586-.46-.498-.63-.505-.168-.007-.358-.038-.55-.045-.19-.007-.51.054-.78.332-.277.274-1.05.943-1.1 2.362-.055 1.418.926 2.826 1.064 3.023.137.2 1.874 3.272 4.76 4.537 2.888 1.264 2.9.878 3.43.85.53-.027 1.734-.633 2-1.297.266-.664.287-1.24.22-1.363-.07-.123-.26-.203-.54-.357z" clip-rule="evenodd"></path>
                                    </svg></span>Whatsapp</a></p>
                        <p title="Email"><a class="a2a_button_email" target="_blank" rel="nofollow noopener" href="/#email"><span class="a2a_svg a2a_s__default a2a_s_email a2a_img_text" style="background-color: rgb(136, 137, 144);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
                                        <path fill="#fff" d="M27 21.775v-9.9s-10.01 6.985-10.982 7.348C15.058 18.878 5 11.875 5 11.875v9.9c0 1.375.293 1.65 1.65 1.65h18.7c1.393 0 1.65-.242 1.65-1.65Zm-.017-11.841c0-1.002-.291-1.359-1.633-1.359H6.65c-1.38 0-1.65.429-1.65 1.43l.016.154s9.939 6.842 11 7.216C17.14 16.941 27 10.005 27 10.005l-.017-.072Z"></path>
                                    </svg></span>Email</a></p>
                    </div>
                    <div style="clear: both;"></div>
                </div>
                <script async="" src="https://static.addtoany.com/menu/page.js"></script>
                <script>
                  
                </script>

            </div>
            <button type="button" class="wishlist-icon wishlist-add-450804" data-toggle="tooltip" title="" onclick="wishlist.add('450804');" data-original-title="Add to Wish List">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="-7 -7 30 30">
                    <title>heart</title>
                    <path fill="white" stroke="#af1a31" d="M8.003 3.1S6.943 1 4.65 1C2.356 1 1 2.66 1 4.624c0 1.965.348 4.097 6.777 8.906 0 0 7.194-4.166 7.227-8.702C15.004 2.863 13.336 1 11.39 1 9.444 1 8.002 3.1 8.002 3.1z"></path>
                </svg>
            </button>
        </div>
        <ul class="list-unstyled price-container">
            <li>
                <h2><i class="fa fa-inr rs-sym"></i> 5,000</h2>
            </li>
        </ul>



        <div id="product">
            <style>
                .grop-product-product a {
                    display: inline-block;
                    margin-right: 5px;
                    position: relative;
                }

                .grop-product-product a.active {
                    pointer-events: none;
                }

                .grop-product-product a.active:before {
                    content: "\f00c";
                    position: absolute;
                    height: 100%;
                    width: 100%;
                    text-align: center;
                    line-height: 75px;
                    display: inline-block;
                    font-family: FontAwesome;
                    font-size: inherit;
                    text-rendering: auto;
                    -webkit-font-smoothing: antialiased;
                    -moz-osx-font-smoothing: grayscale;
                    font-size: 18px;
                }

                .grop-product label.control-label-name {
                    font-size: 14px;
                }

                .default-group.item.active {
                    border: 2px solid #000;
                }

                .grop-product-product .radio {
                    position: initial !important;
                    margin-bottom: 2px;
                }
            </style>
            <div class="grop-product Color">
                <label class="control-label-name collapser"> <span> 1 </span>PLEASE SELECT COLOUR
                    <i class="glyphicon glyphicon-menu-up"></i>
                    <i class="glyphicon glyphicon-menu-down"></i>
                </label>
                <div class="grop-product-product collapse show">
                    <div class="card card-body">
                        <a class="grop-product-link default-group item 450804 active " href="https://www.potterybarn.in/7921122" data-toggle="popover-hover" data-img="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:125,w:250)/data/pottery-barn/17072023img/7921122_3.jpg" data-color="Aqua" data-material="" data-variant="Gray" data-original-title="" title="">
                            <img src="https://cdn.pixelspray.io/v2/black-bread-289bfa/Zu3Ns5/wrkr/t.resize(h:125,w:250)/data/pottery-barn/17072023img/7921122_3.jpg" alt="Group Product" class="grop-product-image">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="grop-product Size">
                <label class="control-label-name collapser"> <span> 2 </span>PLEASE SELECT SIZE
                    <i class="glyphicon glyphicon-menu-up"></i>
                    <i class="glyphicon glyphicon-menu-down"></i>
                </label>
                <div class="grop-product-product collapse show">
                    <div class="card card-body">
                        <a class="grop-product-link default-group item 450804 active " href="https://www.potterybarn.in/7921122">
                            <div class="radio radio-type-button2 ">
                                <label>Small</label>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <script>
              
            </script>
            <div class="clearfix"></div>
            <input type="hidden" name="option_value_selected" value="0" id="option_value_selected">

            <div class="grop-product form-group required" style="display: none">
                <label class="control-label-name collapser" style="display: none"> <span> 3 </span> Please Select
                    <i class="glyphicon glyphicon-menu-up"></i>
                    <i class="glyphicon glyphicon-menu-down"></i>
                </label>



                <div id="input-option1785406" class="collapse spacing">
                    <div class="radio radio-type-button2 ">
                        <input type="radio" onchange="priceChangeOptions(this, '2445', '0');" id="9354126" name="option[1785406]" value="9354126" checked="checked/">
                        <label for="9354126" class="onhover " style="display: none">ONESIZE</label>
                        <label style="display: none;">
                            <input type="radio" name="option[1785406]" value="9354126">

                            ONESIZE </label>
                    </div>
                </div>
                <span class="show_empty_stock_msg"></span>
            </div>

            <div id="field1">Quantity
                <div class="quantity-box">
                    <button type="button" id="sub" class="sub">-</button>
                    <input type="text" name="quantity" value="1" size="2" id="input-quantity" max="5">
                    <button type="button" id="add" class="add">+</button>
                </div>
            </div>
            <br>
            <div class="form-group" id="buttons-cart-functions">
                <input type="hidden" name="product_id" value="450804">
                <p id="oos-message"></p>
                <p id="oos-email-notify"></p>
                <p id="wishlist-notify-message"></p>
                <button type="button" id="button-cart" data-loading-text="Loading..." class="btn btn-primary addtoCart-Btn col-sm-12">Add to Cart</button>
                <button type="button" id="button-view-cart" class="btn btn-primary col-sm-12" style="display:none;">View Cart</button>
            </div>
        </div>

        <a class="appointment-btn" href="#" data-toggle="modal" data-target="#appoint-modal">Make a Free Design Appointment</a>
        <div class="modal fade" id="appoint-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close-btn" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
                        <div class="popup-over">
                            <img class="img-responsive" width="100%" src="https://cdnext.fynd.com/live/image/potterybarn/banner/306_202208240523_Pottery_Barn_Secondary_banner_desktop_(1).jpg" alt="popup-over">
                            <div class="popup-over-content">
                                <p>Our team of expert designers will help you do it all, from floor plans to furniture selection to finishing touches, Let's get started.</p>
                                <form id="design_appointment">
                                    <div class="fgroup">
                                        <label>Name:</label>
                                        <input type="text" name="name" id="name">
                                        <span style="display:block!important;" class="error_none"></span>
                                    </div>
                                    <div class="fgroup">
                                        <label>Mobile No:</label>
                                        <input type="text" name="mobile" id="mobile" onkeypress="return isNumber(event);" maxlength="10" minlength="10">
                                        <span style="display:block!important;" class="error_none"></span>
                                    </div>
                                    <div class="fgroup">
                                        <label>Preferred Date &amp; Time:</label>
                                        <input type="datetime-local" name="appointment_data_time" id="appointment_data_time">
                                        <span style="display:block!important;" class="error_none"></span>
                                    </div>
                                    <div class="fgroup">
                                        <label>Location:</label>
                                        <input type="text" name="location" id="location">
                                        <span class="error_none"></span>
                                    </div>
                                    <input type="text" name="product_name" id="product_name" value="Mackenzie Lavender/Aqua Ombre Sparkle Glitter Backpacks" style="display:none">
                                    <input type="text" name="product_sku" id="product_sku" value="7921122" style="display:none">
                                    <div class="sgroup">
                                        <input type="submit" id="design_appointment_submit">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="pin-code-heading">
            Enter Pin Code for a better delivery estimate
        </div>
        <style type="text/css">
            /*Panel Css*/
            .mypanel_chkzipcod {
                background: #fff
            }

            .panel1 {
                width: 100%;
            }

            .panel2 {
                min-width: 245px;
                width: 245px
            }

            .panel1 .panel1head {
                color: #666;
                font-size: 14px;
                text-align: left;
                margin: 0
            }

            .panel1 .panel1body {
                padding: 10px 0px 10px 0px;
                background: #fff
            }

            /*Button and textnox css*/
            .btnshpinschk {
                background-color: #4CAF50;
                border: none;
                color: #fff;
                padding: 10px 30px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
            }

            .btnshpinschk:hover {
                color: #000;
            }

            .form-controltxt {
                width: 50%;
                padding: 10px 15px;
                margin: 0px 10px 10px 0px;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box
            }

            /*Alert Box Css*/
            .myalert_chkzipcod {
                background-color: #CCC;
                color: #fff;
                opacity: 1;
                transition: opacity .6s;
                margin-bottom: 15px
            }

            .myalert_chkzipcod.danger {
                background-color: #f44336;
                padding: 8px 14px 8px 15px;
            }

            .myalert_chkzipcod.success {
                background-color: #4CAF50
            }

            .myalert_chkzipcod.info {
                background-color: #2196F3
            }

            .myalert_chkzipcod.warning {
                background-color: #ff9800
            }

            .myalert_chkzipcod_closebtn {
                margin-left: 15px;
                color: #fff;
                font-weight: 700;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: .3s
            }

            .myalert_chkzipcod_closebtn:hover {
                color: #000
            }

            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            input[type=number] {
                -moz-appearance: textfield;
            }

            .zipcod-service {
                display: flex;
            }

            .zipcod-service-left,
            .zipcod-service-right {
                padding-left: 0px;
                display: flex;
                align-items: center;
            }

            .zipcod-service-left p,
            .zipcod-service-right p {
                font-size: 13px;
                line-height: 20px;
            }

            .zipcod-service-left img,
            .zipcod-service-right img {
                margin-left: -1rem;
                margin-top: -0.7rem;
            }

            .zipcod-service .zipcod-service-date span {
                font-weight: 600;
            }

            .zipcod-service .zipcod-service-date .zipcod-timer {
                color: #23A942;
            }

            .zipcod-service-right a {
                color: #0079BA;
            }

            .zipcod-service-date {
                padding-right: 0px;
            }

            @media (max-width:767px) {

                .zipcod-service-left,
                .zipcod-service-right {
                    flex-direction: column;
                }

                .zipcod-service-left img,
                .zipcod-service-right img {
                    margin-left: -0.9rem;
                    margin-top: -0.7rem;
                }
            }
        </style>
        <div class="mypanel_chkzipcod panel1">
            <div class="chkzipcodContainer">
                <div class="panel1head">Check Pincode</div>
                <div class="panel1body clearfix">
                    <div class="chkzipcodPopupClose" style="display:none;">
                        <i class="fa fa-close"></i>
                    </div>
                    <form method="post" action="https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode" id="chkzipcodform"><input type="hidden" name="__csrf" id="__csrf" value="442c04fa0f372cf14ede1986340f9f6a65fa40db">
                        <input type="number" class="form-controltxt" placeholder="Enter your Pincode" value="" name="postcode_check" id="postcode_check">
                        <span class="btnshpinschk" onclick="submitchkzipcodform(this.form);">Check</span>
                    </form>
                </div>
                <div id="chkzipcod_response"></div>
                <div id="chkzipcod_response1"></div>
            </div>
        </div>
        <script language="javascript">
           
        </script>

        <div class="custom-specification">
            <div class="clearfix"></div>
            <div class="panel-group pdp-000" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                Overview
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
                        <div class="panel-body">
                            <p>Durable, functional and oh-so-playful, our sturdy, roomy Mackenzie backpacks are packed with pockets, straps and gear loops to keep everything in place. It’s made of water-resistant polyester with adjustable padded shoulder straps with exterior straps to hold a Mackenzie Lunch Bag and exterior side pockets fitted to our water bottles, it's the most efficient and playfully designed collection around. .</p>
                            <p>DETAILS THAT MATTER</p>
                            <ul>
                                <li>Made from rugged, water-resistant 600-denier polyester.</li>
                                <li>All backpacks have adjustable straps that are contoured and padded to ensure a comfortable fit; padded back panel adds extra cushioning.</li>
                                <li>Small, Large and Rolling backpacks feature an MP3 player pocket cutout for headphone cords.</li>
                                <li>Exterior straps hold a Mackenzie lunch bag (sold separately) securely in place.</li>
                                <li>Exterior side pockets are designed to hold any of our water bottles (sold separately).</li>
                            </ul>
                            <p>KEY PRODUCT POINTS</p>
                            <ul>
                                <li>Mini backpack holds a snack, a change of clothes and a favorite toy.</li>
                                <li>Small backpack holds a lunch bag, two small notebooks, two books and a water bottle.</li>
                                <li>Large and Rolling backpack hold a lunch bag, a large notebook, two small notebooks, several books and a water bottle.</li>
                                <li>Rolling backpack features sturdy wheels and straps that can be stored behind a fabric panel when used as a rolling backpack.</li>
                                <li>Personalization seen in the images is only for reference and not part of the product</li>
                            </ul>
                            <p>RETURNS</p>
                            <ul>
                                <li>We offer returns only on bedding textiles, rugs, pillows, throws and homescent. All other categories like furniture, lighting, mirrors, dinnerware and more are not eligible for returns. For more details on our returns policy <a href="https://shop.potterybarn.in/returns-policy-pb">Click here</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Details + Dimensions
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="height: 0px;">
                        <div class="panel-body">
                            <p>DIMENSIONS</p>
                            <p>Small Backpack</p>
                            <ul>
                                <li>
                                    Fits children who are 43-49" tall.</li>
                                <li>Overall: 12" wide x 6" deep x 15" high</li>
                                <li>Interior: 11.5" wide x 5.5" deep x 14.5" high</li>
                                <li>Exterior Pockets: 3</li>
                                <li>Exterior Front Panel Pocket: 7.5" wide x 8.5" high</li>
                                <li>Exterior Side Pocket (2): 5" wide x 5.25" high</li>
                                <li>Interior Pockets: 1</li>
                                <li>Interior Pocket: 6" wide x 4" high</li>
                                <li>Shoulder Strap (2): 2.5" wide x 16-30.5" long</li>
                                <li>Carrying Handle: 1.25" wide x 7.5" long
                                </li>
                            </ul>
                            <p>Large Backpack</p>
                            <ul>
                                <li>
                                    Fits children who are over 48" tall</li>
                                <li>Overall: 13.75" wide x 7.5" deep x 17" high</li>
                                <li>Interior: 12.5" wide x 6.5" deep x 16.5" high</li>
                                <li>Exterior Pockets: 3</li>
                                <li>Exterior Front Panel Pocket: 8.5" wide x 8.5" high</li>
                                <li>Exterior Side Pocket (2): 7" wide x 7" high</li>
                                <li>Interior Pockets: 1</li>
                                <li>Interior Pocket: 7.5" wide x 5.5" high</li>
                                <li>Shoulder Strap (2): 3" wide x 18-34" long</li>
                                <li>Carrying Handle: 1.5" wide x 6.5" long
                                </li>
                            </ul>
                            <p>CARE</p>
                            <ul>
                                <li>
                                    Clean with a damp, white cloth.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Additional Info
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" style="height: 0px;">
                        <ul>
                            <li>Importer Name: Reliance Brands Limited</li>
                            <li>Importer Address: Reliance Brands Ltd, M-1 K-Square Compound, Opp. Urban Tadka Village Kurund, Nr.&nbsp; Toll Naka Mumbai-Nashik Highway, Bhiwandi - 421101. Maharashtra, India.</li>
                            <li>Marketed By: Reliance Brands Ltd, M-1 K-Square Compound, Opp. Urban Tadka Village Kurund, Nr.&nbsp; Toll Naka Mumbai-Nashik Highway, Bhiwandi - 421101. Maharashtra, India.</li>
                            <li>Customer Care: For any Feedback/Complaints 1-800-891-8888 or write to above address or email on: supportpotterybarn.in </li>
                            <li>Name of Commodity: BAG</li>
                            <li>Month &amp; Year: Aug 2021</li>
                            <li>Country Of Origin: HONG KONG</li>
                            <li>Net Quantity: 1 N</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>