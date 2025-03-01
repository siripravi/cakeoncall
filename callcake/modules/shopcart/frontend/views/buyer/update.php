<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model dench\shopcart\models\Buyer */

$this->title = Yii::t('app', 'Update Buyer: {nameAttribute}', [
    'nameAttribute' => $model->name,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Buyers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="buyer-update">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>