<?php
       
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\helpers\Url;
       
       NavBar::begin([
            'brandLabel' => "",//Yii::$app->name,
            'brandUrl' => Yii::$app->homeUrl,
            'options' => ['class' => 'navbar-expand-md navbar-dark bg-dark']
        ]);
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav pull-right'],
            'items' => [
                ['label' => 'Home', 'url' => ['/site/index']],
                ['label' => 'About', 'url' => ['/site/about']],
                ['label' => 'Contact', 'url' => ['/site/contact']],
                [
                    'label' => Yii::t('app', 'Mega Menu'),
                    //'url' => ['/category/index'],
                    'url' => ["#"], //nav-link dropdown-toggle show 
                    'options' => ['class' => 'has-megamenu'],
                    //class="dropdown-toggle" data-toggle="dropdown"
                    'linkOptions' => ['class' => 'dropdown-toggle', 'data-bs-auto-close' => 'outside', 'data-bs-toggle' => 'dropdown'],
                    // 'active' => in_array(Yii::$app->controller->id, ['category', 'product']),
                    'items' => [
                        $this->render("_mega")
                    ]
                ],
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
       
        NavBar::end();  
        ?>
       