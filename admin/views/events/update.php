<?php

use yii\helpers\Html;
use siripravi\gallery\widgets\ImageWidget;
/* @var $this yii\web\View */
/* @var $model app\models\Events */

$this->title = 'Обновить мероприятие: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Творческие мероприятия', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Обновить';
?>
<div class="events-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
     <?php
$cid = $_GET['id'];

?>

<div class="container">
    <div class="row equal-height">
        <?= ImageWidget::widget(['imageMaxCount' => 5,'key'=>$cid]) ?>
    </div>
</div>
</div>
