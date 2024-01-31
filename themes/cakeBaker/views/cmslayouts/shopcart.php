<?php
use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
?>
<div class="row">
    <div class="col-12">
        <div style="background-color: #d7d281;">
            <div class="container">
                <!--<div class="row">
                    <div class="align-items-center pt-4">
                        <h1 class="text-center styled">Product Detail</h1>
                    </div>
                </div>

                <div class="row">
                  <div class="col-md height-100 border-bottom align-items-center">
                        <div class="text-center">One of three columns</div>
                    </div>

                    <div class="col-md height-100 border-bottom">
                        <div class="text-center">One of three columns</div>
                    </div>

                    <div class="col-md height-100 border-bottom">
                        <div class="text-center">One of three columns</div>
                    </div>
                </div> -->
                <?php
                     if (isset($this->params['breadcrumbs'])) {
                                echo Html::tag(
                                    'div',
                                    Breadcrumbs::widget([
                                        'links' => $this->params['breadcrumbs'],
                                        'homeLink' => [
                                            'label' => Yii::$app->name,
                                            'url' => Yii::$app->homeUrl,
                                        ],
                                    ]),
                                    [
                                       'class' => 'display-4 fw-bolder'
                                    ]
                                );
                            }
                ?>
                <?= $placeholders['carttop']; ?>
            </div>
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-8">
            <?= $placeholders['cartleft']; ?>
        </div>
        <div class="col-md-4">
            <?= $placeholders['cartright']; ?>
        </div>
    </div>
    <div class="col-12">
        <?= $placeholders['cartbottom']; ?>
    </div>
</div>