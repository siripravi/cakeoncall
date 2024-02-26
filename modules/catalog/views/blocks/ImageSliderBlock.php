<?php

use siripravi\ecommerce\frontend\widgets\Carousel;

$imageInfo = $this->extraValue('articleImages');
/*
echo "<pre>";
print_r($imageInfo);
echo "</pre>";
*/
?>

    <div class=" popup-gallery pro-zoom">
        <?php echo Carousel::widget([
            'items' =>
            $imageInfo['images'],
            'thumbnails'  => $imageInfo['thumbnails'],
            'options' => [
                'data-interval' => 3, 'data-bs-ride' => 'scroll', 'class' => 'carousel product_img_slide',
            ],
            //'options'  => ['class' => 'carousel product_img_slide','ride'=>true]

        ]);

        ?>
    </div>
 
   
