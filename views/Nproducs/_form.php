<?php

use yii\helpers\Html;
use exocet\bootstrap5md\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\Product $model */
/** @var exocet\bootstrap5md\widgets\ActiveForm $form */
?>

<div class="product-form mt-5">

    <?php $form = ActiveForm::begin(/*['layout' => ActiveForm::LAYOUT_HORIZONTAL]*/); ?>

    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'brand_id')->textInput() ?>

    <?= $form->field($model, 'price_from')->textInput() ?>

    <?= $form->field($model, 'view')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'position')->textInput() ?>

    <?= $form->field($model, 'enabled')->textInput() ?>

    <div class="form-group pull-right">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
