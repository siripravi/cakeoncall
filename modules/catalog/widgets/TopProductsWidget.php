<?php

namespace app\modules\catalog\widgets;

use app\modules\catalog\models\Product;
use yii\base\Widget;
use yii\data\ActiveDataProvider;

/**
 * Portfolio Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0. 
 */
class TopProductsWidget extends Widget
{
    /**
     * @var string The module where this block belongs to in order to find the view files.
     */
    public $module = 'catalog';
    public $product_ids = [28, 4];
    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;

    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'local_mall'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [
            'menu' => Group::getMenu(),
            'elements' => Group::getElements()
        ];
    }

    /**
     * {@inheritDoc} 
     *
     * @param {{vars.elements}}
     */
    public function admin()
    {
        return '<h5 class="mb-3">Group Block</h5>';
    }

    public function getTopProducts()
    {
        $query = Product::find();
        $query->joinWith(['groups']);
        $query->andWhere(['catalog_product.enabled' => true]);
        $query->andWhere(['catalog_product.id' => $this->product_ids]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => [
                    'position' => SORT_DESC,
                ],
            ],
            'pagination' => [
                'forcePageParam' => false,
                'pageSizeParam' => false,
                'pageSize' => 12,
            ],
        ]);
        //$model = Product::find()->where(['id' => $this->product_ids])->all();
        return [
            'dataProvider' => $dataProvider
        ];
    }


    public function run()
    {
        $data = [
            'products' => $this->getTopProducts()
           
        ];
        return $this->render("topWidget", [
            'data' => $data
        ]);
    }
}
