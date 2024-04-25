<?php

/**
 * Created by PhpStorm.
 * User: dench
 * Date: 25.03.17
 * Time: 13:24
 *
 * @var app\models\Product $model
 */

use app\modules\catalog\widgets\ProductCard;
use yii\helpers\Url;
echo ProductCard::widget([
    'model' => $model,
   // 'link' => ['/product/' . $model->slug],
   'link' => $model->getDetailUrl(),
]);
