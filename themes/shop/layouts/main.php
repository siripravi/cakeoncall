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
    <main role="main">
        <!--php echo $this->render("_topNav"); ?-->
        <header class="container-fluid header header-scroll" id="header">
            <nav class="nav-container navbar navbar-expand-lg bg-light p-0 fixed-x-top">
                <a class="navbar-brand" href="#"><img class="logo-img logo-img-scroll" src="/image/site//coc_logo_act.jpg"></a>
                <a type="button" id="cart-link-resp" class="nav-link ms-auto cart-link-resp" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight">
                    <i id="cart-icon-resp" class="fas fa-shopping-cart cart"></i>
                </a>
                <?php echo $this->render("_navBar"); ?>
            </nav>
        </header>

        <!-- main Header image -->
        <div class="container-fluid main-background p-0">
            <div class="main-shadow p-0 container-fluid">
                <div class="main container" id="Main">
                    <h1 _msttexthash="758498" _msthash="10">Baking Workshop<br>
                        No. 1 in your City</h1>
                    <p _msttexthash="7157254" _msthash="11">Every day we hold master classes in baking for children and adults. organization of creative events and holidays.</p>

                    <form method="get" action="#Form">
                        <button class="MainButton" _msttexthash="79027" _msthash="12">Sign up</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="wave container-fluid p-0 pb-5">
            <img class="wave-img" src="/image/site/volna.svg">
        </div>
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
        <?php echo $this->render('_ourcakes')?>
        <!--<div style="margin-top:2px;">
        <php echo $this->render("_topNav"); >
    </div>  -->
        <!-- start INFO-->
       <?php echo $this->render('_foodmenu')?>
        <!--Last section-->
        <div class="howtoget container p-0" id="HowToGet">
            <div class="howtoget-head text-center howtoget-blob d-flex flex-column justify-content-center">
                <h2 _msttexthash="132769" _msthash="20">We are here</h2>
            </div>
        </div>
        <div class="map">
            <iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=Shop%201,%20H%2014-1-90/517,%20Gayatri%20Nagar,%20Allapur,%20Madhapur,%20Hyderabad&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>

        </div>

        <div class="background-container">
              
            <div class="work-background p-0 container-fluid" id="WorkOffer">
                <div class="work-container d-flex justify-content-center flex-column text-center align-items-center" id="#WorkOffer">
                    <h4 _msttexthash="986401" _msthash="90">Do you want to become a part of our team?</h4>
                    <p _msttexthash="208884" _msthash="91">Call <a href="tel:+91 8331852700" _istranslated="1">+91 8331852700</a></p>
                    <p _msttexthash="1298050" _msthash="92">Send an e-mail to <a href="mailto:jobs@cakeoncall.in" _istranslated="1">jobs@cakeoncall.in</a></p>
                </div>
            </div>
        </div>

        <div class="form-container" id="Form">
            <div class="form-head text-center form-blob d-flex flex-column justify-content-center">
                <h2>Have any Queries?</h2>
                <p>Please fill out the form and we will contact you!</p>
            </div>
            <div class="d-flex justify-content-end">
                <div class="form-background container-fluid p-0"></div>
                <form id="feedback-form" class="feedback-form  d-flex flex-column align-items-end justify-content-center" action="<?php echo \yii\helpers\Url::to('feedback_form/create') ?>" method="POST">
                    <input maxlength="60" required type="text" name="name" id="name" placeholder="Your Name">
                    <input maxlength="20" required type="tel" class="form-tel" name="tel" id="tel" placeholder="Your Phone Number">
                    <select required name="services" id="services">
                        <option value="training" selected>Baking Course</option>
                        <option value="jobs">Jobs</option>
                        <option value="bulk">Bulk Order</option>
                        <option value="others">Others</option>
                    </select>
                    <button class="align-self-center" type="submit">Submit</button>
                </form>

            </div>
        </div>
        <?php echo $this->render("_footer"); ?>

    </main>
    <?php $this->endBody() ?>


</body>

</html>
<?php $this->endPage() ?>