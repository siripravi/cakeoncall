<?php

/**
 * Created by PhpStorm.
 * User: dench
 * Date: 20.01.18
 * Time: 14:02
 */

namespace siripravi\ecommerce\frontend\widgets;

use app\modules\shopcart\models\Cart;
use siripravi\ecommerce\models\CartOrder;
use siripravi\ecommerce\models\Article;
use Yii;
use yii\base\Widget;
use yii\helpers\ArrayHelper;
use luya\admin\filters\MediumCrop;
use luya\admin\filters\LargeCrop;
use yii\helpers\Html;
use yii\helpers\Url;


class OrderFormWidget extends Widget
{
  public $key = '';
  public $aId = '';
  public $data = [];

  public $selection = [];
  public $urlCart = ['/cart/bag/index'];
  public $articleImages = [];
  public function init()
  {
    parent::init();
    $articleImages = [];
    $articleRadios = [];

    $features = Article::getFeaturesFormData($this->key);


    foreach ($features as $aid => $feat) {
      $thumbnails = [];
      $images = [];
      $radList = [];
      foreach ($feat as $i => $val) {

        switch ($val['type']) {
          case 1:
            $fId = $val['id'];
            $fName = $val['name'];
            $fArr = $val['featureValues'][$fId];
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
       
      }
      $this->selection[$aid]['radioList'] = $radList;
        //
        if (!empty($aid)) {
          $article = Article::findOne(['id' => $aid, 'enabled' => 1]);
          if ($article) {
            foreach ($article->images as $id => $photo) {
              $thumbnails[$id] = ['thumb' => $photo->image->applyFilter(MediumCrop::identifier())->source];
              $src = str_replace("\\", "/", $photo->image->applyFilter(LargeCrop::identifier())->getSourceAbsolute());
              $images[] = [
                'src' => $src,
                // 'src' => 'https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/'.$im[$id].'a.webp', //$src,
                'content' => Html::img($src, ['data-mdb-img' => $src, 'class' => 'w-100']),
                'options' => [
                  // 'title' => $photo->alt,
                  'class' => ''
                ],
              ];
            }
          }
        }
     
      $this->articleImages[$aid]['thumbnails'] = $thumbnails;
      $this->articleImages[$aid]['images'] = $images;
    }
    /*echo "<pre>";
    echo $aid;
    print_r($this->selection);
    echo '</pre>';
    die;*/
  }
  public function run()
  {
    $model = new CartOrder();

    // Validate model
    if ($model->load(Yii::$app->request->post()) && $model->validate()) {
      // All data submitted is valid
      // Do stuff with the data

      // Save the model
      if ($model->save()) {
        Yii::$app->session->setFlash('success');
      }
    }
    return $this->render("orderForm", [
      'cartOrder' => $model, 'data' => $this->data, 'radioList' => $this->selection, 'aid'=> $this->aId,'key' => $this->key,

      'articleImages' => $this->articleImages[$this->aId], 'selection' => $this->selection[$this->aId]
    ]);
  }
}
