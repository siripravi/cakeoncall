<?php

/**
 * View file for block: FormBlock
 *
 * File has been created with `block/create` command.
 *
 * @param $this->placeholderValue('content');
 * @param $this->varValue('formId');
 *
 * @var \luya\cms\base\PhpBlockView $this
 */

use luya\helpers\Html;
use luya\helpers\StringHelper;

?>
<?= "YCP REDDY";  ?>
<?php if (Yii::$app->session->getFlash('formDataSuccess')) : ?>
    <?= $this->placeholderValue('success'); ?>
<?php else : ?>
    <?php if ($this->extraValue('isPreview')) : ?>
        <?= $this->placeholderValue('preview'); ?>
        <?= StringHelper::template($this->varValue('previewButtonsTemplate', $this->context->previewButtonsTemplate), [
            'back' => Html::a($this->cfgValue('previewBackButtonLabel', Yii::t('forms', 'Back')), '?reload=' . $this->varValue('formId'), Yii::$app->forms->backButtonOptions),
            'submit' => Html::a($this->cfgValue('previewSubmitButtonLabel', Yii::t('forms', 'Submit')), '?submit=' . $this->varValue('formId'), Yii::$app->forms->submitButtonsOptions),
        ]); ?>
    <?php else : ?>
        <?php if (Yii::$app->forms->model->hasErrors()) : ?>
            <?= Yii::$app->forms->form->errorSummary(Yii::$app->forms->model); ?>
        <?php endif; ?>
        <!--  BEGIN TABS -->
        <div class="card  bg-primary mb-3 col-8">
            <div class="card-header d-flex p-1">
                <div class="card-title p-3">Fill the Info</div>
                <ul class="nav nav-tabs  nav-fill ml-auto p-0">
                    <li class="nav-item"><a href="#left-tab" class="nav-link" data-bs-toggle="tab">Left Tab</a></li>
                    <li class="nav-item"><a href="#right-tab" class="nav-link" data-bs-toggle="tab">Right Tab</a></li>
                </ul>
            </div>
            <div class="card-body">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="left-tab">
                        <?= $this->placeholderValue('contentleft'); ?>
                    </div>
                    <div class="tab-pane" id="right-tab">
                        <?= $this->placeholderValue('contentright'); ?>
                    </div>
                </div>
            </div>
        </div>
        <!--  END TABS  -->

        <div class="form-groupd-grid gap-2 col-4 mx-auto pt-3">
            <?= Html::submitButton($this->cfgValue('submitButtonLabel', Yii::t('forms', 'Submit')), Yii::$app->forms->submitButtonsOptions); ?>
        </div>
    <?php endif; ?>
<?php endif; ?>
<?php Yii::$app->forms->form->end(); ?>

<?php if (empty($this->varValue('formId'))) : ?>
    <div style="background-color:red; color:white; padding:20px;"><?= Yii::t('forms', 'This form block is not properly configured. Select a form from the listing in the block settings.'); ?></div>
<?php endif; ?>