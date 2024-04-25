<?php
       
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\helpers\Url;
       
     /*  NavBar::begin([
            'brandLabel' => "",//Yii::$app->name,
            'brandUrl' => Yii::$app->homeUrl,
            'options' => ['class' => 'navbar-expand-md navbar-dark bg-dark',"id"=> 'navbar-links']
        ]);*/
        echo Nav::widget([
            'options' => ['class' => 'menu-ul justify-content-between mw-100 w-100 navbar-nav me-auto mb-2 mb-lg-0'],
            'items' => [
                ['label' => 'Home', 'url' => ['/site/index']],
                ['label' => 'About', 'url' => ['/site/about']],
                ['label' => 'Contact', 'url' => ['/site/contact']],
                
              /*  Yii::$app->user->isGuest
                    ? ['label' => 'Login', 'url' => ['/site/login']]
                    : '<li class="nav-item">'
                    . Html::beginForm(['/site/logout'])
                    . Html::submitButton(
                        'Logout (' . Yii::$app->user->identity->username . ')',
                        ['class' => 'nav-link btn btn-link logout']
                    )
                    . Html::endForm()
                    . '</li>', */
                    ['label' => 'Admin', 'url' => ['/admin']],             
            ]
        ]);
       
    /*    NavBar::end();  */
        ?>
       