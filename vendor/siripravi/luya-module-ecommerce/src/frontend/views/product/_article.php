<?php

use luya\helpers\ArrayHelper;
use siripravi\ecommerce\frontend\widgets\OrderFormWidget;
?>
<?php
$radList = [];
/*foreach ($features as $id => $feature) {
  switch ($feature['type']) {
    case 1:
      $fId = $feature['id'];
      $fName = $feature['name'];
      $fArr = $feature['featureValues'][$fId];
      $rad = ArrayHelper::map($fArr, "id", "name");
      $rList = [];
      $fList = [];
      foreach ($rad as  $k => $v) {
        $rList[$k . "+" . $fArr[$k]['price']] = $rad[$k];
        $fList[] = $k;
      }
      $radList[$fId]['name'] = $fName;
      $radList[$fId]['rList'] = $rList;
      $radList[$fId]['fList'] = $fList;
  }
}*/

?>

<div class="row">
    <!--?php foreach ($modelsVariant as $index => $modelVariant) : ?-->
  
    <div class="col-sm-7 col-md-6 detail">
        <h1 class="title"><?= $modelVariant->name;  ?></h1>
        <div class="row">
            <div class="description_wrapper col-xs-9 col-xs-push-3">
                <p class="description"><?= $modelVariant->text; ?> </p>
            </div>
            <div class="col-xs-3 col-xs-pull-9 price_wrapper">
                <span class="price"></span>
            </div>
        </div>

        <?php

        echo OrderFormWidget::widget(['key' => $model->id, 'aId' => $modelVariant->id]);
        /*  echo "<pre>";
        print_r($radList);
        echo "</pre>";*/
        ?>
    </div>
</div>