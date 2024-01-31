<?php

/**
 * @var string[] $placeholders
 */
?>
<header class="nav-holder make-sticky">
    <!-- echo $this->render('_headerNav'); ?-->
    <?php if ($placeholders['homehdr']) : ?>
        <?= $placeholders['homehdr'] ?>
    <?php endif ?>
</header>
<!-- HERO SLIDER SECTION-->
<section class="text-white bg-cover bg-center primary-overlay overlay-dense" style="background: url('img/photogrid.jpg') repeat">
    <div class="overlay-content py-5">
        <div class="container py-4">
            <!-- Hero slider-->
            <?php if ($placeholders['homeslider']) : ?>
                <?= $placeholders['homeslider'] ?>
            <?php endif ?>
        </div>
    </div>
</section>
<!-- Main -->
<main>
    <?php if ($placeholders['homemain']) : ?>
        <?= $placeholders['homemain'] ?>
    <?php endif ?>
</main>