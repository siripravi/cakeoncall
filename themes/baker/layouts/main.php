<?php

/** @var yii\web\View $this */
/** @var string $content */

//use app\themes\baker\AppAsset;
use app\widgets\Alert;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

//AppAsset::register($this);
\exocet\bootstrap5md\MaterialAsset::register($this); // include css and js
\exocet\bootstrap5md\FontawesomeAsset::register($this); // include icons (optional)
$this->registerCsrfMetaTags();
$this->registerMetaTag(['charset' => Yii::$app->charset], 'charset');
$this->registerMetaTag(['name' => 'viewport', 'content' => 'width=device-width, initial-scale=1, shrink-to-fit=no']);
$this->registerMetaTag(['name' => 'description', 'content' => $this->params['meta_description'] ?? '']);
$this->registerMetaTag(['name' => 'keywords', 'content' => $this->params['meta_keywords'] ?? '']);
$this->registerLinkTag(['rel' => 'icon', 'type' => 'image/x-icon', 'href' => Yii::getAlias('@web/favicon.ico')]);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<body class="d-flex flex-column h-100 skin-light" data-bs-theme="dark">
    <?php $this->beginBody() ?>
    <div style="margin-top:2px;">
        <?php echo $this->render("_topNav"); ?>
    </div>
    <header id="header" style="margin-top:4px;">
        <?php echo $this->render("_navBar"); ?>
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