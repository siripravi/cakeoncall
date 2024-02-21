<?php

namespace siripravi\ecommerce\frontend\blocks;

use siripravi\forms\FieldBlockTrait;
use siripravi\ecommerce\models\Article;
use siripravi\ecommerce\models\Product;
use siripravi\ecommerce\models\Feature;
use siripravi\shopcart\models\OrderForm;
use siripravi\forms\blocks\FormBlock;
use luya\helpers\ArrayHelper;
use yii\helpers\Html;
use keygenqt\jsonForm\JsonForm;

class FeatureSelectionBlock extends FormBlock
{
    use FieldBlockTrait;

    public function name()
    {
        return 'Article Feat seln';
    }

    public function admin()
    {
        return '<p> Feature Selection
        <span class="block__empty-text">Feature Selection</span>       
        <header>
            <h3>
           <span class="block__empty-text">feature Sel</span>            
            </h3>
        </header>       
       
        </p>';
    }
   
    public function extraVars()
    {
        return [           
            'ajaxLink' => $this->createAjaxLink('HelloWorld', ['time' => time()]),
            
        ];
    }
    public function frontend()
    {
       
        \Yii::$app->forms->autoConfigureAttribute(
            $this->getVarValue($this->varAttribute),
            $this->getVarValue($this->varRule, $this->defaultRule),
            $this->getVarValue($this->varIsRequired),
            $this->getVarValue($this->varLabel),
            $this->getVarValue($this->varHint)
        );    
        \Yii::$app->forms->autoConfigureAttribute('Features','safe',false);
        \Yii::$app->forms->autoConfigureAttribute('Pid','safe',false);
        \Yii::$app->forms->autoConfigureAttribute('Price','safe',false);
        \Yii::$app->forms->autoConfigureAttribute('Delivery','safe',false);
        \Yii::$app->forms->autoConfigureAttribute('Image','safe',false);
        \Yii::$app->forms->autoConfigureAttribute('Name','safe',false);
        $output = '';      
       //ArrayHelper::typeCast(\Yii::$app->session->get('__OrderForm', $model->attributes));
       $model = \Yii::$app->forms->model;       
        $model =  $model->loadAttributeValues();
        foreach ($model->Features as $id => $feature) {           
                    $fId = $id;
                    $fName = $feature['name'];                 
                    $output .= "<h5>" . $fName . "</h5>";
                    $output .= "<div class='featSel mb-3'>";
                    $output .= "<div class='card border border-round d-flex flex-wrap align-content-start'>";
                    
                    $output .= \Yii::$app->forms->form->field(
                        $model,
                        $this->getVarValue($this->varAttribute) . '[' . $fId . ']'
                    )
                        ->radioList(
                          
                           $feature['rList'],
                           [
                            'item' => function($index, $label, $name, $checked, $value)use  (&$model, $fId,$fName){                               
                                $check = ($index == 0 && $value > 0) ? 'checked' : '';
                                $checked = (isset($model->FeatureSel[$fId]) && $model->FeatureSel[$fId] == $value) ? 'checked' : $check;
                                $return = '<div class="p-2 flex-fill fsel">';
                                $return .= '<input type="radio" id="' . $name . $index . '" class="form-check-input" name="' . $name . '" value="' . $fName."+".$label."+".$value  . '" title="click" autocomplete="off" ' . $checked . '>';
                                $return .= '<label class="form-check-label" for="' . $name . $index . '">' . '<span class="xtext-muted">' . ucwords($label) . '</span></label>';
                                $return .= "</div>"; 
                                return $return;
                            },'class' => 'd-flex text-inline'
                        ]                  
                        )->label(false);
                    $output .=  "</div>";
                    $output .=  "</div>";
          
        }
       
        return $output;
    }
  /*  public function getArticle()
    {
        $session = \Yii::$app->session;
        //\Yii::$app->menu->current->link;
        $id = \Yii::$app->request->get('id') ?  \Yii::$app->request->get('id') : $session['__params']['id'];
        return Article::findOne(['id' => $id, 'enabled' => 1]);
    }
    public function getArticlePrices()
    {
        $article = $this->getArticle();
        $product = Product::viewPage($article->product_id);
        $category_ids = $product->group_ids;
        $prices = $article->prices;
        $priceList = ArrayHelper::index(ArrayHelper::toArray($prices, [
            'siripravi\ecommerce\models\ArticlePrice' => [
                'article_id', 'image_id','value_id', 'currency_id', 'price', 'qty', 'unit_id'
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
        array_walk($pli, function (&$value, $key) use ($priceList) {
            $fId = $value['id'];
            $fVals = (array_key_exists($fId, $value['featureValues'])) ? $value['featureValues'][$fId] : [];
            foreach ($fVals as $k => $v) {
                if (array_key_exists($k, $priceList)) {
                    if (!empty($v)) {
                        $value['article_id'] = $priceList[$k]['article_id'];
                        $value['image_id'] = $priceList[$k]['image_id'];
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
*/
    public function callbackHelloWorld($time)
    {
        return 'hallo world ' . $time;
    }
    public function callbackSearch($term)
    {
        if (\Yii::$app->request->isAjax) {

            sleep(2); // for test

            $results = [];
            if (is_numeric($term)) {
                /** @var User $model */
                $model = User::findOne(['id' => $term]);

                if ($model) {
                    $results[] = [
                        'id' => $model['id'],
                        'label' => $model['email'] . ' (model id: ' . $model['id'] . ')',
                    ];
                }
            } else {
                $q = addslashes($term);
                foreach (User::find()->where("(`email` like '%{$q}%')")->all() as $model) {
                    $results[] = [
                        'id' => $model['id'],
                        'label' => $model['email'] . ' (model id: ' . $model['id'] . ')',
                    ];
                }
            }
            echo Json::encode($results);
        }
    }
}
