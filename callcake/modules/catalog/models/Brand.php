<?php

namespace app\modules\catalog\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Brand.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property text $name
 * @property integer $image_id
 * @property integer $position
 * @property tinyint $enabled
 */
class Brand extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_brand';
    }

   
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Title'),
            'image_id' => Yii::t('app', 'Image ID'),
            'position' => Yii::t('app', 'Position'),
            'enabled' => Yii::t('app', 'Enabled'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['image_id', 'position', 'enabled'], 'integer'],
            [['name'], 'string']
        ];
    }
    
}
