<?php

/**
 * Created by PhpStorm.
 * User: dench
 * Date: 02.04.17
 * Time: 22:52
 *
 * @var $model dench\products\models\Product
 */

use siripravi\ecommerce\frontend\widgets\GalleryWidget;
use siripravi\ecommerce\frontend\widgets\Carousel;
?>

<?php
$images = [];
/*foreach ($model->articles as $variant) {
    foreach ($variant->images as $image) {
        $images[] = $image;
    }
}*/
$items = [];

//echo "<pre>";print_r($articleImages);die;
foreach ($articleImages['images'] as $id =>  $photo) {
    $items[] = [
        'image' => $photo['src'],
        'thumb' => $articleImages['thumbnails'][$id]['thumb'],
        'width' => 800,
        'height' => 800,
        // 'title' => $photo->image->caption,
    ];
}
/*
echo GalleryWidget::widget([
    'swpitems' => $items,
    'swpoptions' => [
        'class' => 'gallery row mx-0',
    ],
    'swpitemOptions' => [
        'class' => 'img-thumbnail',
    ],
    'swplinkOptions' => [
        'class' => 'gallery-item col-lg-4 col-md-6 px-1',
    ],
]);
if (count($images) <= 1) {
    echo "<style>.gallery { display: none; }</style>";
}*/
?>

<?php echo Carousel::widget([
    'id' => 'pswp-'.$aid,
    'swpitems' => $items,
    'swpoptions' => [
        'class' => 'gallery row mx-0',
    ],
    'swpitemOptions' => [
        'class' => 'img-thumbnail',
    ],
    'swplinkOptions' => [
        'class' => 'gallery-item col-lg-4 col-md-6 px-1',
    ],
    'items' =>
    $articleImages['images'],
    'thumbnails'  => $articleImages['thumbnails'],
    'options' => [
        'data-interval' => 3, 'data-bs-ride' => 'scroll', 'class' => 'carousel product_img_slide',
    ],
    //'options'  => ['class' => 'carousel product_img_slide','ride'=>true]

]);
?>
