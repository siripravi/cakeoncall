<?php

namespace siripravi\ecommerce\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Currency.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property string $code
 * @property decimal $rate
 * @property integer $position
 * @property string $name
 * @property string $before
 * @property string $after
 * @property tinyint $enabled
 */
class Currency extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%catalog_currency}}';
    }

     /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'code' => Yii::t('app', 'Code'),
            'rate' => Yii::t('app', 'Rate'),
            'position' => Yii::t('app', 'Position'),
            'name' => Yii::t('app', 'Name'),
            'before' => Yii::t('app', 'Before'),
            'after' => Yii::t('app', 'After'),
            'enabled' => Yii::t('app', 'Enabled'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['code', 'rate', 'name'], 'required'],
            [['rate'], 'number'],
            [['position', 'enabled'], 'integer'],
            [['code'], 'string', 'max' => 3],
            [['name'], 'string', 'max' => 255],
            [['before', 'after'], 'string', 'max' => 20],
        ];
    }
   
}
