<?php

use kartik\form\ActiveForm; // or kartik\widgets\ActiveForm
use yii\bootstrap5\Accordion;
use kartik\date\DatePicker;
use yii\helpers\Html;
use app\modules\catalog\widgets\Carousel;

$articleOptions = $this->context->getCfgValues(); 
//$this->extraValue('articleOptions');
//echo "<pre>";print_r($articleOptions); die;
$aid = $articleOptions['aId'];
$key = $articleOptions['key'];
$selection = $articleOptions['selection'];
$cartOrder = $articleOptions['cartOrder'];
$imageInfo = $articleOptions['articleImages'];
$image = $articleOptions['image'];  //  Thumbnail
//$price = $articleOptions['price'];
$name = $articleOptions['name'];
//$featureText = $articleOptions['featureText'];
//$data = $articleOptions['data'];
$items = [];
$output = "";
$idx = 1;
?>
<div class="row" data-key="<?= $aid; ?>">
  <div class="col-md-6">
    <div class=" popup-gallery pro-zoom">
      <?php echo Carousel::widget([
        'items' =>
        $imageInfo['images'],
        'thumbnails'  => $imageInfo['thumbnails'],
        'options' => [
          'data-interval' => 3, 'data-bs-ride' => 'scroll', 'class' => 'carousel product_img_slide',
        ],
        //'options'  => ['class' => 'carousel product_img_slide','ride'=>true]

      ]);

      ?>
    </div>
  </div>
  <div class="col-md-6">
    <div class="mypanel_chkzipcod panel1">
      <div class="chkzipcodContainer">
        <div class="panel1head">Check Pincode</div>
        <div class="panel1body clearfix">
          <div class="chkzipcodPopupClose" style="display:none;">
            <i class="fa fa-close"></i>
          </div>
          <form method="post" action="https://www.potterybarn.in/index.php?route=extension/module/chkzipcod/checkzipcode" id="chkzipcodform"><input type="hidden" name="__csrf" id="__csrf" value="4aa1831496c28e1fd1b8ce954263478f7f326f71">
            <input type="number" class="form-controltxt" placeholder="Enter your Pincode" value="" name="postcode_check" id="postcode_check">
            <span class="btnshpinschk" onclick="submitchkzipcodform(this.form);">Check</span>
          </form>
        </div>
        <div id="chkzipcod_response"></div>
        <div id="chkzipcod_response1"></div>
      </div>
    </div>
    <div id="product">
      <?php

      $form = ActiveForm::begin([
        'id' => 'cart-form-' . $aid,
        //  'type' => ActiveForm::TYPE_INLINE,
        'fieldConfig' => ['options' => ['class' => 'form-group mb-3 mr-2 me-2']] // spacing form field groups
      ]);
      echo Html::hiddenInput('article_id', $aid,['id'=>'art-'.$aid]);
      echo $form->field($cartOrder,'['.$aid. ']image')->hiddenInput(['value'=> $image])->label(false);
      //echo $form->field($cartOrder,'['.$aid. ']price')->hiddenInput(['value'=> $price])->label(false);
      echo $form->field($cartOrder,'['.$aid. ']name')->hiddenInput(['value'=> $name])->label(false);
      //echo $form->field($cartOrder,'['.$aid. ']featureText')->hiddenInput(['value'=> $featureText])->label(false);
      foreach ($selection['radioList'] as $id => $feature) {
        $fName = $feature['name'];
        $fId = $id;
        $output .= ' <div class="grop-product ">';
        /*    $output .= ' <label class="control-label-name collapser"> <span> ' . $idx . ' </span>PLEASE SELECT ' . strtoupper($feature['name']) .
        '<i class="glyphicon glyphicon-menu-up"></i>
    <i class="glyphicon glyphicon-menu-down"></i>
  </label>';
      $output .=  '<div class="grop-product-product collapse show">  */
        $output .= '<div class="card card-body">';
        $output .= $form->field($cartOrder, '[' . $aid . ']'.'selFeatures' . '[' . $id . ']')->radioList(
          $feature['rList'],
          [
            'item' => function ($index, $label, $name, $checked, $value) use ($fId, $fName) {
              $return = '<div class="p-2 flex-fill form-check">';
              $return .= '<input type="radio" id="' . $name . $index . '" class="btn-check" name="' . $name . '" value="' . $fName . "+" . $label . "+" . $value  . '" title="click" autocomplete="off" ' . $checked . '>';
              $return .= '<label class="btn btn-info" for="' . $name . $index . '">' . '<span class="xtext-muted">' . ucwords($label) . '</span></label>';
              $return .= "</div>";
              /*   $return = '<label class="modal-radio">';
                            $return .= '<input type="radio" name="' . $name . '" value="' . $value . '" tabindex="3">';
                            $return .= '<i></i>';
                            $return .= '<span>' . ucwords($label) . '</span>';
                            $return .= '</label>';  */
              return $return;
            }, 'class' => 'd-flex text-inline'
          ]
        )->label(false);
        $output .= '</div></div>';

        $items[] =
          [
            'label' => '<label class="control-label-name collapser"> <span> ' . $idx . ' </span>PLEASE SELECT ' . strtoupper($feature['name']),
            'content' => $output,
            // open its content by default
            'contentOptions' => ['class' => 'in']
          ];
        $output = '';
        $idx++;
      }
      ?>

      <?php
      echo Accordion::widget([
        'items' => $items,
        'encodeLabels' => false
      ]);
      ?>
      <?php
      echo '<label class="form-label">DELIVERY DATE</label>';
      echo DatePicker::widget([
        'model' => $cartOrder,
        'attribute'  => '['.$aid.']delDate',
       // 'name' => 'Delivery Date',
      //  'value' => '01/29/2014',
        'type' => DatePicker::TYPE_COMPONENT_APPEND,
        'pickerIcon' => '<i class="fas fa-calendar-alt text-primary"></i>',
        'removeIcon' => '<i class="fas fa-trash text-danger"></i>',
        'pluginOptions' => [
          'autoclose' => true,
          'format' => 'mm/dd/yyyy'
        ]
      ]);
      ?>
      <div id="field1">Quantity
        <div class="quantity-box">
          <button type="button" id="sub" class="sub">-</button>
          <input type="text" name="quantity" value="1" size="2" id="input-quantity" max="5">
          <button type="button" id="add" class="add">+</button>
        </div>
      </div>

      <div class="form-group" id="buttons-cart-functions">
       
        <p id="oos-message"></p>
        <p id="oos-email-notify"></p>
        <p id="wishlist-notify-message"></p>
        <button type="submit" id="button-cart" data-loading-text="Loading..." class="btn btn-primary addtoCart-Btn col-sm-12">Add to Cart</button>
        <button type="button" id="button-view-cart" class="btn btn-primary col-sm-12" style="display:none;">View Cart</button>
      </div>
      <?php ActiveForm::end(); ?>
    </div>
  </div>
</div>
<!--
<div class="col-sm-5 col-md-6 " >
  <div class="photo">
    <php
     echo $this->render('_photo',['articleImages'=>$articleImages,'aid'=>$aid]);
    ?>
  </div>
</div>
    -->