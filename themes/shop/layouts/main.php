<?php

/** @var yii\web\View $this */
/** @var string $content */

use app\themes\shop\AppAsset;
use app\widgets\Alert;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

AppAsset::register($this);
//\exocet\bootstrap5md\MaterialAsset::register($this); // include css and js
//\exocet\bootstrap5md\FontawesomeAsset::register($this); // include icons (optional)
$this->registerCsrfMetaTags();
$this->registerMetaTag(['charset' => Yii::$app->charset], 'charset');
$this->registerMetaTag(['name' => 'viewport', 'content' => 'width=device-width, initial-scale=1, shrink-to-fit=no']);
$this->registerMetaTag(['name' => 'description', 'content' => $this->params['meta_description'] ?? '']);
$this->registerMetaTag(['name' => 'keywords', 'content' => $this->params['meta_keywords'] ?? '']);
$this->registerLinkTag(['rel' => 'icon', 'type' => 'image/x-icon', 'href' => Yii::getAlias('@web/favicon.ico')]);
?>
<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<body class="d-flex flex-column h-100 skin-light" data-bs-theme="light">
    <?php $this->beginBody() ?>
    <nav class="navbar">
        <div class="top-left">
          <img class="logo-img" src="/image/site/logo.png" alt="">
          <div class="logo">
            <a href="../Hero+Navbar/hero.html"><u>E-BAKERY</u></a>
          </div>
        </div>

        <div class="right">
        <?php echo $this->render("_navBar"); ?>
            <div class="user">
                <!-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg> -->
                <i class="fa-solid fa-user logo-user"></i>
            </div>
          
        </div>
    </nav>
    <!--<div style="margin-top:2px;">
        <php echo $this->render("_topNav"); >
    </div>  -->
    <header id="header" style="margin-top:4px;">
      
        <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
              
                    <h1 class="display-4 fw-bolder">Shop in style</h1>
                    <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
                </div>
            </div>
    </header>

    <main id="main" class="flex-shrink-0" role="main" style="margin-top:13px;">
        <div class="container">
            <?php if (!empty($this->params['breadcrumbs'])) : ?>
                <?= Breadcrumbs::widget(['links' => $this->params['breadcrumbs']]) ?>
            <?php endif ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </main>
    <?php echo $this->render("_footer"); ?>
    <?php $this->endBody() ?>

    
</body>

</html>
<?php $this->endPage() ?>