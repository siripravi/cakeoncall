<?php

/**
 * @author Albert Gainutdinov <xalbert.einsteinx@gmail.com>
 *
 * @var \app\models\UserAddress $addresses
 */

use yii\bootstrap5\Html;
use yii\helpers\Url;

$this->title = Yii::t('app', 'Addresses');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="container-fluid py-5">
    <div class="container py-5">
        <!--?= $this->render('_menu') ?-->
        <div class="col-md-9">
            <?php if (!empty($addresses)) : ?>
                <?= Html::a(\Yii::t('app', 'Add new address'), Url::toRoute('save-address'), ['class' => 'btn btn-success']); ?>
                <table class="table table-hover">
                    <tr>
                        <th class="col-md-1">#</th>
                        <th class="col-md-9"><?= \Yii::t('app', 'Addresses'); ?></th>
                        <th class="col-md-2"><?= \Yii::t('app', 'Manage'); ?></th>
                    </tr>
                    <?php foreach ($addresses as $address) : ?>
                        <tr>
                            <td><?= $address->id; ?></td>
                            <td>
                                <p><?= "$address->zipcode $address->country, $address->region, $address->city "; ?></p>
                                <p><em><?= \Yii::t('app', 'street') . " $address->street, $address->house" .
                                            " - $address->apartment"; ?></em></p>
                            </td>
                            <td>
                                <?= Html::a(
                                    '<span class="glyphicon glyphicon-remove"></span>',
                                    Url::toRoute(['delete-address', 'id' => $address->id]),
                                    ['title' => Yii::t('yii', 'Delete'), 'class' => 'btn btn-danger pull-right pjax']
                                ) .
                                    Html::a(
                                        '<span class="glyphicon glyphicon-edit"></span>',
                                        Url::toRoute(['address', 'id' => $address->id]),
                                        ['class' => 'btn btn-primary ']
                                    ); ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            <?php else : ?>
                <h3>
                    <?= \Yii::t('app', 'You have not added any address'); ?>
                </h3>
                <?= Html::a(\Yii::t('app', 'Add new address'), Url::toRoute('address'), ['class' => 'btn btn-success']); ?>
            <?php endif; ?>
        </div>
    </div>
</div>