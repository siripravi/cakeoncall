<?php

namespace app\modules\catalog\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Product Category.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $product_id
 * @property integer $category_id
 */
class ProductCategory extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public $i18n = [''];

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_category}}';
    }

       /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'product_id' => Yii::t('app', 'Product ID'),
            'category_id' => Yii::t('app', 'Category ID'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'category_id'], 'required'],
            [['product_id', 'category_id'], 'integer'],
            [['product_id', 'category_id'], 'unique', 'targetAttribute' => ['product_id', 'category_id']],
        ];
    }
   
}
