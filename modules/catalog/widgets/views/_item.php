<?php

use siripravi\ecommerce\frontend\widgets\PriceTable;
use yii\helpers\Html;
use yii\helpers\Url;

$variant = @$model->articles[0];

if (@$model->articles[0]->price) {
    $available = 0;
    foreach ($model->articles as $variant) {
        if ($variant->enabled) {
            if ($variant->available < 0) {
                $available = -1;
            }
            if ($variant->available > 0) {
                $available = 1;
                break;
            }
        }
    }
}
?>
<div class="cake-card">
                
                <div class="imgBox">
                <?php echo Html::img(
            Yii::$app->storage->getImage($model->cover_image_id)->source,
            ["class"=>"mouse","style"=>"width: 85%;"]
        ) ?>            
                </div>
            
                <div class="contentBox">
                    <h3 class="cake-name"><?= $model->slug; ?></h3>
                    <h2 class="price">20.<small>98</small> $</h2>
                    <a href="#" class="buy">Order Now</a>
                </div>
            </div>
            <!--
<div class="img-wrapper">
    <a data-productid="<= $model->id; ?>" href="/product/<= $model->slug; ?>">
        <php echo Html::img(
            Yii::$app->storage->getImage($model->cover_image_id)->source,
            ["width" => 292, "height" => 204]
        ) ?>
    </a>
    <span class="price">$ 20.50<br><span class="per">/ea</span></span>
</div>
<span class="info">Bestseller!</span>
<p class="name"><a data-productid="54" href="#">LA Cheese Cake</a></p>
        -->