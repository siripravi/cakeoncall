<?php

use app\admin\components\AjaxCreate;
use app\admin\widgets\CardWidget;
use yii\helpers\Html;
use yii\helpers\Url;
?>
<?php
$this->title = 'Starter Page';
$this->params['breadcrumbs'] = [['label' => $this->title]];
?>

<?php


/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Adin Panel';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-index">

    <h1 class="text-center"><?= Html::encode($this->title) ?></h1>
    <p class="text-center text-secondary"><?= Html::encode('Welcome '.Yii::$app->user->identity->email) ?></p>
    <div class="row justify-content-center ">
        <div class="col-4 flex-wrap m-2 d-flex flex-column justify-content-center  border rounded shadow-sm">
            <h2 id="counter" class="text-danger"><?= Html::encode(\app\admin\models\EnquiryForm::find()->where(['is_solved'=>0])->count()) ?></h2>
            <p>Questions <span style="text-decoration: underline;"> At the moment</span> Waiting for feedback</p>
            <p class="mt-auto">
                <?= Html::a('Feedback Management', ['/admin/enquiry'], ['class' => 'btn btn-outline-primary']) ?>
            </p>
        </div>
        <!--<div class="col-4 m-2 d-flex flex-column justify-content-center border rounded shadow-sm">
            <h2 class="text-primary"><= Html::encode(\app\models\User::find()->count()) ></h2>
            <p>Всего администраторов на сайте</p>
            <p class="mt-auto">
                <= Html::a('Управление пользователями', ['/user'], ['class' => 'btn btn-outline-primary']) >
            </p>
        </div>  -->
        <div class="col-4 m-2 d-flex flex-column justify-content-center  border rounded shadow-sm">
            <h2 class="text-primary"><?= Html::encode(\app\admin\models\MasterClass::find()->count()) ?></h2>
            <p>Total master classes on the site</p>
            <p class="mt-auto">
                <?= Html::a('Masterclass Management', ['/admin/master_class'], ['class' => 'btn btn-outline-primary']) ?>
            </p>
        </div>
        <div class="col-4 m-2 d-flex flex-column justify-content-center  border rounded shadow-sm">
            <h2 class="text-primary"><?= Html::encode(\app\admin\models\Events::find()->count()) ?></h2>
            <p>Total creative activities on the site</p>
            <p class="mt-auto">
                <?= Html::a('Creative Event Management', ['/admin/events'], ['class' => 'btn btn-outline-primary']) ?>
            </p>
        </div>
    </div>

</div>
<script>
    function updateCounter() {
        $.ajax({
            dataType: 'text',
            url: '../admin/counter',
            type: 'POST',
            success: function (response) {
                $('#counter').html(response);
            }
        })
    }

    setInterval(updateCounter, 10000);

</script>

            <?php
         /*   AjaxCreate::begin(
                ['optionsModal' => ['class' => 'modal-sm']]
            );
            echo Html::button('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 250 250" width="24px" height="24px" version="1.0" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#ffffff" d="M136 153l-37 0 -10 23 -27 0 49 -102 27 0 27 55c-12,5 -22,13 -29,24zm5 -17l-17 -38 -17 38 34 0zm-21 -126c-61,0 -110,50 -110,111 0,61 49,110 110,110 7,0 13,0 20,-2 -7,-6 -12,-14 -16,-23 -1,0 -2,0 -4,0 -47,0 -85,-38 -85,-85 0,-47 38,-85 85,-85 47,0 85,38 85,85 0,1 0,1 0,2 9,3 18,8 24,15 1,-6 2,-12 2,-17 0,-61 -50,-111 -111,-111zm60 140l15 0 0 30 30 0 0 15 -30 0 0 30 -15 0 0 -30 -30 0 0 -15 30 0 0 -28 0 -2zm2 -15c-30,4 -50,30 -46,58 3,27 27,50 58,46 16,-2 27,-10 34,-18 19,-23 15,-57 -6,-74 -11,-9 -24,-14 -40,-12z"></path></svg>', [
                'data-href' => Url::toRoute(['contact']),
                'class' => 'btn btn-info',
            ]);
            AjaxCreate::end();  */  ?>

            <!--?= StampWidget::widget(); ?-->
        </div>
    </div>
