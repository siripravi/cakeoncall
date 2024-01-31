<?php
/**
 * @var $this \yii\web\View
 * @var $model \dench\shopshopshopcart\models\Payment
 */

use app\modules\shopshopshopcart\models\Payment;

echo $model->text;

if (in_array($model->type, [Payment::TYPE_LIQPAY, Payment::TYPE_WFP])) {
    echo $this->render('_payment_card');
} else {
    $text = Yii::t('app', 'To order');
    $js = <<<JS
$('#submitButton').text('{$text}');
JS;
    $this->registerJs($js);
}