<?php

use arturoliveira\checkoutprogressbar\CheckOutProgressBar;
use yii\helpers\Url;

/**
 * @var string[] $placeholders
 */
?>
<header class="nav-holder make-sticky">

    <?php if ($placeholders['detailhdr']) : ?>
        <?= $placeholders['detailhdr'] ?>
    <?php endif ?>
</header>
<!-- Intro -->
<div class="header-container">
    <div class="container">
        <?= $placeholders['detailbanner'] ?>
    </div>
</div>

<!-- Main -->
<section id="main-detail" class="wrapper">
    <div class="container">
        <?= $placeholders['detailmain'] ?>
    </div>
</section>

<?php if ($placeholders['detailrelated']) : ?>
    <!-- Highlights -->
    <section id="highlights" class="wrapper style3">
        <div class="container">
            <?= $placeholders['detailrelated'] ?>
        </div>
    </section>
<?php endif ?>