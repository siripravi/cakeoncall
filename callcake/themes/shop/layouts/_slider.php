
<?php
/*
 * Created on Mon Nov 20 2023
 *
 * Copyright (c) 2023 Your Company
 */

/** @var yii\web\View $this */

use siripravi\slideradmin\models\Slider;
use siripravi\slideradmin\models\SliderImage;
use yii\bootstrap5\Html;
use app\widgets\Carousel;

$model = Slider::find()->one();
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
}
?>
<div class="container-fluid main-x-background p-0"> 
   
<?php
    echo Carousel::widget([
        'id' => 'home-slider',
        'items' => $sitems,
        'showIndicators' => false,
        /* 'controls' => [
                            '<span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>',
                            '<span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>',
                        ],  */
        'options' => [
            'data-interval' => 8,
            'data-bs-ride' => 'scroll'
        ],
        'controls' => [
            '<span class="carousel-control-prev-icon"></span>',
            '<span class="carousel-control-next-icon"></span>',
        ],
    ]) ?>
       

</div>

<div class="wave container-fluid p-0 pb-5">
            <img class="wave-img" src="/image/site/volna.svg">
        </div>