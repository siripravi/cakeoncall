<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var $this  yii\web\View
 * @var $form  yii\widgets\ActiveForm
 * @var $model app\modules\user\models\SettingsForm
 */

$this->title = Yii::t('app', 'Account settings');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="container-fluid py-5">
    <div class="container py-5">
        <?= $this->render('_menu'); ?>

        <section class="profile-content">
            <div class="col-sm-8 col-md-9 col-lg-10">

                <h1 class=""><?= Html::encode($this->title) ?></h1>
                <br>
                <div class="panel-body">
                    <div class="col-md-offset-3 col-md-6">
                        <?php $form = ActiveForm::begin([
                            'id' => 'account-form',
                            'options' => ['class' => 'form-horizontal'],
                            'fieldConfig' => [
                                'template' => "{label}\n<div class=\"col-lg-9\">{input}</div>\n<div class=\"col-sm-offset-3 col-lg-9\">{error}\n{hint}</div>",
                                'labelOptions' => ['class' => 'col-lg-3 control-label'],
                            ],
                            'enableAjaxValidation' => true,
                            'enableClientValidation' => false,
                        ]); ?>

                        <?= $form->field($model, 'email') ?>
                        <?= $form->field($model, 'new_password')->passwordInput() ?>
                        <hr>
                        <?= $form->field($model, 'current_password')->passwordInput() ?>

                        <div class="form-group">
                            <div class="col-lg-offset-3 col-lg-9">
                                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-save pull-right']) ?>
                            </div>
                        </div>
                    </div>

                    <?php ActiveForm::end(); ?>
                </div>
            </div>
        </section>

        <?php if ($model->module->enableAccountDelete) : ?>
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title"><?= Yii::t('app', 'Delete account') ?></h3>
                </div>
                <div class="panel-body">
                    <p>
                        <?= Yii::t('app', 'Once you delete your account, there is no going back') ?>.
                        <?= Yii::t('app', 'It will be deleted forever') ?>.
                        <?= Yii::t('app', 'Please be certain') ?>.
                    </p>
                    <?= Html::a(Yii::t('app', 'Delete account'), ['delete'], [
                        'class' => 'btn btn-danger',
                        'data-method' => 'post',
                        'data-confirm' => Yii::t('app', 'Are you sure? There is no going back'),
                    ]) ?>
                </div>
            </div>
        <?php endif ?>
    </div>
</div>