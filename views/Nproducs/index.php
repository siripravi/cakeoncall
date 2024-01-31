<?php

use app\models\Product;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
//use exocet\bootstrap5md\widgets\grid\ActionColumn; // for material icons use this
use exocet\bootstrap5md\widgets\grid\GridView;

/** @var yii\web\View $this */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="form-group pull-right mt-5 mb-4">
        <?= Html::a('Create Product', ['create'], ['class' => 'btn btn-raised btn-success']) ?>
    </div>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'slug',
            'brand_id',
            'created_at',
            'updated_at',
            //'price_from',
            //'view',
            //'position',
            //'enabled',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Product $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
