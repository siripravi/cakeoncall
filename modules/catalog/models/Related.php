<?php

namespace siripravi\ecommerce\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Related.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property string $name
 * @property integer $position
 */
class Related extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_related';
    }

  
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'position' => Yii::t('app', 'Position'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['position'], 'integer'],
            [['name'], 'string', 'max' => 225],
        ];
    }

   
}
