<?php

namespace siripravi\shopcart\components;

class CartHelper extends \yii\web\Component
{

    public static function getArticlePrices()
    {
        $session = \Yii::$app->session;
        $id = \Yii::$app->request->get('id') ?  \Yii::$app->request->get('id') : $session['__params']['id'];
        $article = Article::findOne(['id' => $id, 'enabled' => 1]);
        $imageId = $article->image_id;
        $aName = $article->name;
        $product = Product::viewPage($article->product_id);
        $category_ids = $product->group_ids;
        $prices = $article->prices;

        $priceList = ArrayHelper::index(ArrayHelper::toArray($prices, [
            'siripravi\ecommerce\models\ArticlePrice' => [
                'article_id', 'value_id', 'currency_id', 'price', 'qty', 'unit_id'
            ],
        ]), 'value_id');

        $obList = Feature::find()->joinWith(['groups'])->andFilterWhere(['catalog_feature.enabled' => true])->andFilterWhere(['group_id' => $category_ids])->orderBy('position')->all();
        $pli =  ArrayHelper::toArray($obList, [
            'siripravi\ecommerce\models\Feature' => [
                'id',
                'name',
                'type',
                'input',
                // 'values',
                'featureValues',
                //  'DP',
            ],
        ]);

        array_walk($pli, function (&$value, $key) use ($priceList, $aName, $imageId) {
            $fId = $value['id'];

            $fVals = (array_key_exists($fId, $value['featureValues'])) ? $value['featureValues'][$fId] : [];
            foreach ($fVals as $k => $v) {
                if (array_key_exists($k, $priceList)) {
                    if (!empty($v)) {
                        $value['article_id'] = $priceList[$k]['article_id'];
                        $value['image_id'] = $imageId;
                        $value['pname'] = $aName;
                        $value['featureValues'][$fId][$k]['value_id'] = $priceList[$k]['value_id'];
                        $value['featureValues'][$fId][$k]['currency_id'] = $priceList[$k]['currency_id'];
                        $value['featureValues'][$fId][$k]['price'] = $priceList[$k]['price'];
                        $value['featureValues'][$fId][$k]['qty'] = $priceList[$k]['qty'];
                        $value['featureValues'][$fId][$k]['unit_id'] = $priceList[$k]['unit_id'];
                    }
                } else {
                    unset($value['featureValues'][$fId][$k]);
                }
            }
        });

        return $pli;
    }

    public  function loadAttributeValues()
    {
        $config = [];
        $config['FeatureSel'] = Yii::$app->forms->model->FeatureSel;
        // $config['class'] = 
        // if(empty($this->FeatureSel)){
        $priceList = OrderForm::getArticlePrices();
        $config['Pid'] = $priceList[0]['article_id'];
        $config['Image'] = \Yii::$app->storage->getImage($priceList[0]['image_id'])->applyFilter(\app\filters\ThumbFilter::identifier())->source;
        $config['Name'] = $priceList[0]['pname'];

        $radList = [];
        foreach ($priceList as $id => $feature) {
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
        }
        $config['Features'] = $radList;
        $this->load($config);
        Yii::$app->session->set('__OrderForm', $config);
        Yii::trace("LOAD ATTR VALS:" . print_r(Yii::$app->session->get('__OrderForm'), true));
        Yii::$app->forms->model->setAttributes($config);

        //  echo "<pre>";print_r(\Yii::$app->forms->model->attributes);die;
        // Yii::$app->forms->model = Yii::createObject($config);
        return $this;  //Yii::createObject($config);        

    }
}
