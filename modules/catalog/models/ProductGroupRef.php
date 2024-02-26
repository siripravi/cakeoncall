<?php

namespace siripravi\ecommerce\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Product Group Ref.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $product_id
 * @property integer $group_id
 */
class ProductGroupRef extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%catalog_product_group_ref}}';
    }

       /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'product_id' => Yii::t('app', 'Product ID'),
            'group_id' => Yii::t('app', 'Group ID'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'group_id'], 'required'],
            [['product_id', 'group_id'], 'integer'],
            [['product_id', 'group_id'], 'unique', 'targetAttribute' => ['product_id', 'group_id']],
        ];
    }
   
}
