<?php

use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
?>
<section class="mt-3">
  <div class="container">
    <div class="row">
      <div class="col-12" id="twocol-top">
        <?= $placeholders['top']; ?>

      </div>
    </div>
    <div class="row">
      <div class="col-md-6" id="twocol-left">
        <?= $placeholders['left']; ?>
      </div>
      <div class="col-md-6 mx-6" id="twocol-right">
        <?= $placeholders['right']; ?>
      </div>
    </div>
    <div class="col-12" id="twocol-bottom">
      <?= $placeholders['bottom']; ?>
    </div>
  </div>
</section>