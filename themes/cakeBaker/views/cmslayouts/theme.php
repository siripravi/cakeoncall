<?php


/**
 * @var string[] $placeholders
 */
?>
<header>
    <?php if ($placeholders['header']) : ?>
        <?= $placeholders['header'] ?>

    <?php endif ?>
</header>
<!-- Main -->
<main>
    <section id="main" class="wrapper">
        <?= $placeholders['main'] ?>
    </section>
</main>
<?php if ($placeholders['highlights']) : ?>
    <!-- Highlights -->
    <section id="highlights" class="wrapper style3">
        <div class="container">
            <?= $placeholders['highlights'] ?>
        </div>
    </section>
<?php endif ?>