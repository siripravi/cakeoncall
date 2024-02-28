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