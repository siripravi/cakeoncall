<?php

use luya\admin\ngrest\aw\CallbackFormWidget;
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
<html lang="<?= Yii::$app->composition->getLangShortCode(); ?>">

<head>
  <title><?= $this->title; ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
  <link rel="icon" href="/favicon.ico" type="image/x-icon">

  <!-- Icon Font Stylesheet -->

  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
  <link rel="icon" type="image/png" id="favicon" href="../images/favicon.png" />
  <?php $this->head() ?>
  <script type="text/javascript">
var responsive_design = 'yes';
</script>
  <script>
    
  </script>
  <script>
   
</script>
<script type="text/javascript">

</script>
  <style>
    /*body {
      overflow-x: hidden;
      padding: 0px;
      min-width: 700px;
      max-width: 1280px;
      text-align: center;
      margin-left: auto;
      margin-right: auto;
      font: normal normal 12px "Trebuchet MS", Arial, Tahoma, sans-serif;
    }*/

    .carousel-inner {
      position: relative;
      width: 100%;
    }

    #home-slider .carousel-caption {
      position: absolute;
      margin: 0;
      color: white;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
  </style>
</head>

<body data-bs-theme="light">
  <?php $this->beginBody() ?>
  <div class="wide" id="skrollr-body">
    <!--<div class="navigation">
      <nav>
        <ul>
          <li class="home"><a href="../index.html">Home</a></li>
        </ul>
        <ul>
          <li><a href="#ceremony">Ceremony & Reception</a></li>
          <li><a href="#weekend">Weekend Events</a></li>
          <li><a href="#accommodations">Accommodations</a></li>
          <li><a href="#registries">Registries</a></li>
          <li class="rsvp-link"><a href="#rsvp">RSVP</a></li>
        </ul>
      </nav>
    </div>  -->
    <!-- Top bar-->
    <?= $this->render('_topBar'); ?>
    <!-- Top bar end-->

    <?= $content; ?>
 
    <?= $this->render('_footer'); ?>
  </div>
  <?php $this->endBody() ?>

</body>

</html>
<?php $this->endPage() ?>