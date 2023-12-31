<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var \yii\web\View $this
 * @var \app\models\User $model
 * @var \app\models\Profile $profile
 *
 */

?>

<div class="col-md-12">
    <h1 class="title"><?= Yii::t('app', 'Sign up') ?></h1>
</div>

<div class="col-md-12">
    <section class="login-form ">
        <div class="panel-body">
            <?php $form = ActiveForm::begin([
                'enableClientValidation' => true,
                'enableAjaxValidation' => true
            ]) ?>
            <div class="form-group">
                <?= $form->field($model, 'email', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 1
                    ]
                ])->textInput(['type' => 'email']) ?>
            </div>
            <div class="form-group">
                <?= $form->field($model, 'password', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 3
                    ]
                ])
                    ->passwordInput()
                    ->label(Yii::t('app', 'Password')) ?>
            </div>

            <br>
            <!--surname-->
            <div class="form-group">
                <?= $form->field($profile, 'surname', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 5
                    ]
                ]) ?>
            </div>
            <!--NAME-->
            <div class="form-group">
                <?= $form->field($profile, 'name', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 4
                    ]
                ]) ?>
            </div>
            <!--patronymic-->
            <div class="form-group">
                <?= $form->field($profile, 'patronymic', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 4
                    ]
                ]) ?>
            </div>
            <!--phone-->
            <div class="form-group">
                <?= $form->field($profile, 'phone', [
                    'inputOptions' => [
                        'class' => '',
                        'autofocus' => '',
                        'tabindex' => 6
                    ]
                ]) ?>
            </div>
            <div class="form-group">
                <button type="submit" tabindex="4">
                    <span class="btn-bg"></span>
                    <span class="btn-label">
                           <?= Yii::t('app', 'Sign up') ?>
                      </span>
                </button>
            </div>
            <?php $form->end() ?>
            <div class="m-t-20">
                <p class="text-center">
                    <?= Html::a(Yii::t('app', 'Already registered? Sign in!'), ['/user/security/login']) ?>
                </p>
                <p class="text-center">
                    <?= Html::a(Yii::t('app', 'Didn\'t receive confirmation message?'), ['/user/registration/resend']) ?>
                </p>
            </div>
        </div>
    </section>
</div>
