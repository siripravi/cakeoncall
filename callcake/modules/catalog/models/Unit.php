<?php

namespace app\modules\catalog\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Unit.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property string $name
 * @property integer $position
 * @property tinyint $enabled
 */
class Unit extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%catalog_unit}}';
    }

      /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'code' => Yii::t('app', 'Code'),
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
            [['name'], 'required'],
            [['position', 'enabled'], 'integer'],
            [['name', 'code'], 'string', 'max' => 255],
        ];
    }
    
}
