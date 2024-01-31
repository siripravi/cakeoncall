<?php

use app\widgets\OrderScheme;

use yii\helpers\Html;
use yii\bootstrap5\Breadcrumbs;

/**
 * @var $this \luya\web\View
 */

use app\themes\cakebaker\CakebakerAsset;

CakebakerAsset::register($this);

$this->beginPage();
?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->composition->getLangShortCode(); ?>" data-bs-theme="light">

<head>
    <title><?= $this->title; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <?php $this->head() ?>
    <style>
        .slick-slide img {
            /*width: 100%;*/
        }
    </style>
</head>
<body class="bg-info bg-gradient" style="background-color: #393a3c;">
    <?php $this->beginBody() ?>
    <header id="header" class="header fixed-top" style="background-color: #393a3c;">
        <?php echo $this->render('_headerNav'); ?>
        
    </header>
    <main id="main">
        <?= $content; ?>     
    </main>

    <footer id="footer" class="footer">
        <?php echo $this->render('_footer') ?>
    </footer>
    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>