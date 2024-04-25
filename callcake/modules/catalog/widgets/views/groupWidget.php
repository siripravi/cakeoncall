<?php

use app\helpers\ImageHelper;

use app\modules\storage\filters\MediumCrop;
use yii\helpers\Url;
use yii\helpers\Html;

/**
 * View file for block: GroupBlock
 *
 * File has been created with `block/create` command on LUYA version 1.0.0.
 *
 * @param $this->varValue('elements');
 *
 * @var $this \luya\cms\base\PhpBlockView
 */
//\app\modules\catalog\assets\Main::register(Yii::$app->view);
?>
<div class="container">
    <div class="page-content">
        <div class="col-md-12 bd-highlight align-self-center position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
            <h3 class="display-1 fw-bold">We Sell These!</h3>
            <h2>Delicious bakery products</h2>
            <!--<p style="font-size: 0.8rem;">Lorem ipsum deserunt mollit anim id est laborum.</p>-->
        </div>

        <section class="py-5">
            <div class="container">
                <div class="row">
                <?php foreach ($data['elements']['categories'] as $item) : ?>
                    <div class="col-sm-4 col-xs-12 col-md-4 col">
                    <div class="img-wrapper text-center">
                        <a data-catid="<?= $item->id; ?>" href="<?= $item->detailUrl; ?>">
                            <?php echo Html::img(
                                Yii::$app->storage->getImage($item->cover_image_id)->source,
                                ["width" => 292, "height" => 204, "class" => 'rounded-circle']
                            ) ?>
                        </a>
                        <h1 class="display-5"><?= $item->name; ?> </h1>
                        </div>
                    </div>
                <?php endforeach; ?>
                </div>
            </div>
        </section>

        <h2>HEADER2</h2>
        <div class="pb-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
    </div>
</div>
<!--
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="section-title position-relative text-center mx-auto mb-5 pb-3" style="max-width: 600px;">
            <h2 class="text-primary font-secondary">Our Menu</h2>
            <h1 class="display-4 text-uppercase">We Sell These</h1>
        </div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">            
        </div>
    </div>
</section>
-->