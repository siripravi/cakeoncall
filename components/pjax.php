<?php
/**
* Injected layout
*/
use yii\widgets\Pjax;
$this->beginContent(\Yii::$app->pjaxmodal->layoutFile );
Pjax::begin([
    'id'=>'pjax-modal-container',
   // 'enablePushState'=>0,
]);
?>
    <div class="container">
        <div class="row p-4">
            <h1>Pjax Tabs</h1>
        <h2><?= $content ?></h2>
        </div>
    </div>
<?php
Pjax::end();
$this->endContent();
?>