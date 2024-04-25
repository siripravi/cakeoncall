<?php
use yii\bootstrap5\Tabs;
echo Tabs::widget([
    //'navType' => 'nav-tabs card-header full-width-tabs',
    'navType' => 'nav nav-pills nav-fill',
    'items' =>      $items,
    'tabContentOptions' => ['class' => 'p-4'],
    //  'itemOptions' => ['class'=>'card-body'],
    //  'headerOptions' => ['class' => 'use-max-space'],
    'encodeLabels'  => false

]);

?>

<?php
echo \kartik\widgets\SwitchInput::widget([
    'name' => 'status_12',
    'type' => \kartik\widgets\SwitchInput::RADIO,
    'items' => [
        ['label' => 'Low', 'value' => 1],
        ['label' => 'Medium', 'value' => 2],
        ['label' => 'High', 'value' => 3],
    ],
    'pluginOptions' => ['size' => 'mini'],
    'labelOptions' => ['style' => 'font-size: 12px'],
]);