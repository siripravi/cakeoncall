<?php

namespace app\modules\catalog\controllers;

use app\modules\catalog\components\BaseController;
//use app\models\Review;
//use app\models\ReviewForm;
use app\modules\catalog\models\Product;
use app\modules\catalog\models\Article;
use app\modules\catalog\models\Feature;
use app\modules\catalog\models\CartOrder;

//use app\traits\BlockTrait;
use Yii;
use yii\helpers\Html;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;

class ProductController extends BaseController
{
    // use BlockTrait;

    public function actionIndex($slug)
    {

        $model = Product::viewPage($slug);
        $orderForm = new CartOrder();

        if (!$model->enabled) {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
        $this->view->params['category_ids'] = $model->group_ids;
        /**
         * Save viewed products
         */
        $viewed_ids = Yii::$app->request->cookies->getValue('viewed_ids', 'a:0:{}');
        $viewed_ids = unserialize($viewed_ids);
        array_unshift($viewed_ids, $model->id);
        $viewed_ids = array_unique($viewed_ids);
        $viewed_ids = array_slice($viewed_ids,  0, 7);
        Yii::$app->response->cookies->add(new \yii\web\Cookie([
            'name' => 'viewed_ids',
            'value' => serialize($viewed_ids),
            'expire' => time() + 3600 * 24 * 30
        ]));
        $viewed_ids = array_diff($viewed_ids, [$model->id]);
        //$similar = Product::find()->where(['id' => $viewed_ids])->all();
        /* End - Save viewed products */

        /**
         * Similar products
         */
        //if (count($similar) < 1) {
        $viewed = 0;
        $similar = Product::find()->joinWith(['groups'])->where(['catalog_product.enabled' => 1, 'group_id' => $model->group_ids[0]])->andWhere(['!=', 'catalog_product.id', $model->id])->limit(6)->all();
        //} else {
        //    $viewed = 1;
        //}
        /* Similar products */

        $view = 'index';

        /* if ($model->view) {
            $view = $model->view;  //ie., 'accessory' || 'container'
        }*/

        if (!empty(Yii::$app->params['templateTitle_' . Yii::$app->language])) {
            $model->title = str_replace('{0}', $model->h1, Yii::$app->params['templateTitle_' . Yii::$app->language]);

            if (empty($model->text)) {
                $model->text = str_replace('{0}', $model->h1, Yii::$app->params['templateDescription_' . Yii::$app->language]);
            }

            Yii::$app->view->title = $model->name;
            Yii::$app->view->registerMetaTag([
                'name' => 'description',
                'content' => $model->text
            ], 'text');
        }

        /*  $reviewForm = new ReviewForm();
        $reviewForm->product_id = $model->id;

        if ($reviewForm->load(Yii::$app->request->post()) && $reviewForm->send()) {
            Yii::$app->session->setFlash('reviewSubmitted');
            return $this->refresh('#card-form');
        }

        $dataProvider = new ActiveDataProvider([
            'query' => Review::find()->where(['status' => Review::STATUS_PUBLISHED, 'product_id' => $model->id]),
            'sort' => [
                'defaultOrder' => [
                    'position' => SORT_DESC
                ],
            ],
        ]);*/

        /*  $rating = Review::find()
            ->select(['SUM(rating) sum', 'COUNT(*) count'])
            ->where(['status' => Review::STATUS_PUBLISHED, 'product_id' => $model->id])
            ->asArray()
            ->one();

        if (!empty($rating['count'])) {
            $rating['value'] = round($rating['sum'] / $rating['count'], 1);
        } else {
            $rating = [
                'count' => 0,
                'value' => 0,
            ];
        }*/
        $features = Article::getFeaturesFormData($model->id); //Feature::getObjectList(true, $model->group_ids); 

        //echo "<pre>";
        //// print_r($features);
        //  die;
        Yii::trace("FEATURES:" . print_r(Feature::getObjectList(true, $model->group_ids), true));

        return $this->render('container', [
            'model' => $model,
            'viewed' => $viewed,
            'similar' => $similar,
            'features' => $features,
            'orderForm' => $orderForm,

            'articles' => $model->articles
            //  'reviewForm' => $reviewForm,
            // 'dataProvider' => $dataProvider,
            //  'rating' => $rating,
        ]);
    }

    public function actionAjaxInfo($id)
    {
        // Get the block by its ID
        $blockId = 85;
        $block = luya\cms\models\PhpBlock::findOne(['id' => $blockId]);

        // Check if the block exists
        if ($block) {
            // Render the block content
            echo $block->render();
        } else {
            // Handle the case where the block doesn't exist
            echo "Block not found";
        }
    }
}
