<?php

use yii\helpers\Url;
/*
 * Created on Mon Nov 20 2023
 *
 * Copyright (c) 2023 Your Company
 */

/** @var yii\web\View $this */

//use siripravi\slideradmin\models\Slider;
//use siripravi\slideradmin\models\SliderImage;
use yii\bootstrap5\Html;
//use app\widgets\Carousel;
//use iutbay\yii2pnotify\PNotify;


$this->title = 'My Yii Application';

/*$model = Slider::find()->one();
$slides = $model->slides;
foreach ($slides as $sld) {
    if (($image = SliderImage::find()->where(['id' => $sld->id])->multilingual()->one()) !== null) {
        $sitems[] = [
            'content' => '<div class="home_slider_container">
                     <div class="text-center p-0"><div class="">' .
                $image->render($sld->filename, "large", ["class" => "slider-img"]) .
                '</div>',
            'caption' => '<div class="slide-text">' .
                Html::tag('h1', $image->title, ['class' => 'h1 text-light']) .
                '<h3 class="h2"></h3><p>' . $image->html . '</p></div></div></div>',
            'captionOptions' => ['class' => ['mb-0 d-flex align-items-center']],

        ];
    }
}*/
?>
<?php
/* echo PNotify::widget(
    [
        "title" => "Welcome to SliderAdmin Demo Site!",
        "type" => "",
        "text" => "Awesome Sliders based on Bootstrap 5",
        //"notifications" => ["welcome"]
    ]
); */
?>
<!--
<section id="home">
    <h1 class="h-primary aos-init" data-aos="fade-down"><span>WELCOME TO </span><span class="welcome">THE-OSAB-BAKERY</span></h1>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At rem aut ea cupiditate, magni quas! Inventore

    </p>
    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere pariatur, accusantium et odi</p>
   
    <button class="btn aos-init" data-aos="zoom-in" type="button">
        <strong>ORDER</strong>
        <div id="container-stars">
            <div id="stars"></div>
        </div>

        <div id="glow">
            <div class="circle"></div>
            <div class="circle"></div>
        </div>
    </button>

</section>
-->
<!-- SECTION CODE START ****************************************************************************** -->

<!-- SECTION CODE END ********************************************************************************************* -->

<div class="site-index">
    <?php
    /*  echo Carousel::widget([
        'id' => 'home-slider',
        'items' => $sitems,
        'showIndicators' => false,
         'controls' => [
                            '<span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>',
                            '<span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>',
                        ],  
                                'options' => [
            'data-interval' => 8,
            'data-bs-ride' => 'scroll'
        ],
        'controls' => [
            '<span class="carousel-control-prev-icon"></span>',
            '<span class="carousel-control-next-icon"></span>',
        ],
    ]);  */ ?>
    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4">Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="/admin">Slider Admin</a></p>
    </div>

    <div class="body-content">


        <div class="row">
            <div class="col-lg-4 mb-3">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
            </div>
            <div class="col-lg-4 mb-3">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <?php echo app\modules\catalog\widgets\GroupWidget::widget(); ?>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <?php echo app\modules\catalog\widgets\TopProductsWidget::widget(); ?>
            </div>
        </div>
        <div class="row">
            <div id="loading" style="display: none">LOADING</div>
            <?php
                 $tUrl = Url::to(['/site/test-ajax']);
            ?>
            <?= yii\bootstrap5\Tabs::widget(['items' => $this->context->getPjaxPage()]); ?>
        </div>
        <div class="row">
            <button id='addButton' onclick="$.pjax.reload({container:'#tab-content'});" type="button" class='btn btn-success'>Pjax reload</button>
            <button id='ajaxButton' data-pjax='#tab-content' onclick="testAjax('CODICE', '<?=$tUrl;  ?>');" type="button" class='btn btn-success'>Pjax after ajax</button>
            <?= Html::a('a Pjax after ajax', null, ['data-pjax' => '#tab-content', 'class' => 'btn btn-primary', 'onclick' => 'testAjax("CODE", "'.$tUrl.'");']) ?>
        </div>

    
    </div>