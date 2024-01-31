<?php

use yii\helpers\{Html, Url};
use exocet\bootstrap5md\widgets\NavBar;
use yii\bootstrap5\Nav;
use siripravi\shopcart\widgets\CartIconWidget;
?>
<?php

?>
<?php
$menuItems = $this->extraValue('items'); //<iconify-icon icon="mdi:user-outline" style="color: #123;" width="20" rotate="0deg"></iconify-icon>
$userItems = $this->extraValue('userItems');
?>
<!-- Navbar begins  -->
<!--<nav class="navbar navbar-expand-lg bg-body-tertiary"> -->
<?php
NavBar::begin([
    //'brandLabel' => '<span class="gaozhan-logo">'.Html::img("/image/site/nyxta.png",["style"=>"max-height: 80%; padding: 0;position:relative;"]).'</span>',
    'brandLabel'  => '<h1 class="text-primary display-6">Cake Zone</h1>',
    'brandUrl' => Yii::$app->homeUrl,
   // 'collapseOptions'=> ['style'=> 'display:none'],
    'options' => [
        'class' => ' navbar-light bg-white navbar-expand-lg py-0',  // bg-dark',  
       // 'data-bs-theme' => 'dark',
        'style' => "background-color: #46141c;"//border-radius: 230px 100px;"
    ],
    'innerContainerOptions' => ['class'=>'container py-3 py-lg-0 px-lg-0']
]);?>
      <?= Nav::widget([
            'options' => ['class' => "navbar-nav me-auto mb-2 mb-lg-0"],
            'items' => $menuItems,
        ]); ?>
        <div class="col-lg-auto text-center text-lg-left header-item-holder d-inline-flex ps-4" id="right-nav">
            <?= CartIconWidget::widget(); ?>
        </div>
        <div class="d-flex m-3 me-0" id="right-nav-x">
    <!--<button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i data-feather="search" class="text-primary"></i></button>-->
    <?= Nav::widget([
        'options' => ['class' => "navbar-nav ms-auto mx-lg-auto py-0"],
        'items' => $userItems,
    ]); ?>

      <!--<form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
    </div>
<?php NavBar::end();   ?>