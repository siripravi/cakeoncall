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

<body data-bs-spy="scroll" data-bs-target="#navbar-links-nav">
    <?php $this->beginBody() ?>
    <header class="container-fluid header header-scroll" id="header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="#"><img class="logo-img logo-img-scroll" src="/image/site//BulkanB.png"></a>
            <a type="button" id="cart-link-resp" class="nav-link ms-auto cart-link-resp" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">
                <i id="cart-icon-resp" class="fas fa-shopping-cart cart"></i>
            </a>
            <?php echo $this->render("_navBar"); ?>         
        </nav>
        <div id="background-intro">
            <h1 class="white-title"> Licores a Domicilio en Pasto 24/7</h1>
            <h2 class="grey-sub"> REALIZA TU PEDIDO POR WHATSAPP </h2>
            <a class="whats-btn" href="https://bit.ly/3wIzm2M">
                <span>
                    <i class="fab fa-whatsapp"></i>
                    <strong>3193200490</strong>
                </span>
            </a>
        </div>
    </header>
    <!--<div style="margin-top:2px;">
        <php echo $this->render("_topNav"); >
    </div>  -->
   

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