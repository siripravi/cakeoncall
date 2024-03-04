<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>

<!--Section: Block Content-->
<section class="mb-5">

    <div class="row">
        <div class="col-md-6 mb-4 mb-md-0">

            <div id="xmdb-lightbox-ui"></div>

            <div class="xmdb-lightbox">
                <div class="row product-gallery mx-1">
                    <div class="col-12 mb-0">
                        <figure class="view overlay rounded z-depth-1 main-img" style="max-height: 450px;">
                            <a href="/images/3.jpg" data-size="710x823">
                                <img src="/images/3.jpg" class="img-fluid z-depth-1" style="margin-top: -90px;">
                            </a>
                        </figure>                       
                    </div>
                    <div class="col-12">
                        <div class="row">
                            <div class="col-3">
                                <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                                    <img src="/images/1.jpg" class="img-fluid">
                                    <div class="mask rgba-white-slight"></div>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                                    <img src="/images/3.jpg" class="img-fluid">
                                    <div class="mask rgba-white-slight"></div>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                                    <img src="/images/6.jpg" class="img-fluid">
                                    <div class="mask rgba-white-slight"></div>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="view overlay rounded z-depth-1 gallery-item hoverable">
                                    <img src="/images/5.jpg" class="img-fluid">
                                    <div class="mask rgba-white-slight"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="col-md-6">

            <h5>Vanilla cookies</h5>
            <p class="mb-2 text-muted text-uppercase small">cookiess</p>
            <ul class="rating">
                <li>
                    <i class="fas fa-star fa-sm text-primary"></i>
                </li>
                <li>
                    <i class="fas fa-star fa-sm text-primary"></i>
                </li>
                <li>
                    <i class="fas fa-star fa-sm text-primary"></i>
                </li>
                <li>
                    <i class="fas fa-star fa-sm text-primary"></i>
                </li>
                <li>
                    <i class="far fa-star fa-sm text-primary"></i>
                </li>
            </ul>
            <p><span class="mr-1"><strong>₹17.99</strong></span></p>
            <p class="pt-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam, sapiente illo. Sit
                error voluptas repellat rerum quidem, soluta enim perferendis voluptates laboriosam. Distinctio,
                officia quis dolore quos sapiente tempore alias.</p>
            <div class="table-responsive">
                <table class="table table-sm table-borderless mb-0">
                    <tbody>
                        <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Brand</strong></th>
                            <td>Sunfeast</td>
                        </tr>
                        <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Flavour</strong></th>
                            <td>Vanilla</td>
                        </tr>
                        <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Delivery</strong></th>
                            <td>India</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <hr>
            <div class="table-responsive mb-2">
                <table class="table table-sm table-borderless">
                    <tbody>
                        <tr>
                            <td class="pl-0 pb-0 w-25">Quantity</td>
                            <td class="pb-0">Select size</td>
                        </tr>
                        <tr>
                            <td class="pl-0">
                                <div class="def-number-input number-input safari_only mb-0">
                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
                                    <input class="quantity" min="0" name="quantity" value="1" type="number">
                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                </div>
                            </td>
                            <td>
                                <div class="mt-1">
                                    <div class="form-check form-check-inline pl-0">
                                        <input type="radio" class="form-check-input" id="small" name="materialExampleRadios" checked>
                                        <label class="form-check-label small text-uppercase card-link-secondary" for="small">Small</label>
                                    </div>
                                    <div class="form-check form-check-inline pl-0">
                                        <input type="radio" class="form-check-input" id="medium" name="materialExampleRadios">
                                        <label class="form-check-label small text-uppercase card-link-secondary" for="medium">Medium</label>
                                    </div>
                                    <div class="form-check form-check-inline pl-0">
                                        <input type="radio" class="form-check-input" id="large" name="materialExampleRadios">
                                        <label class="form-check-label small text-uppercase card-link-secondary" for="large">Large</label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
            <button type="button" class="btn btn-light btn-md mr-1 mb-2"><i class="fas fa-shopping-cart pr-2"></i>Add to
                cart</button>
        </div>
    </div>

</section>

<?php
echo '<label class="form-label">Birth Date</label>';
echo \kartik\date\DatePicker::widget([
    'name' => 'dp_1',
    'type' => \kartik\date\DatePicker::TYPE_INPUT,
    'value' => '23-Feb-1982',
    'pluginOptions' => [
        'autoclose' => true,
        'format' => 'dd-M-yyyy'
    ]
]);
?>
<!--Section: Block Content-->