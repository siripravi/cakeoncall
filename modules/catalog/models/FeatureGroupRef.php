<?php

namespace app\module\catalog\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * Feature Group Ref.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $feature_id
 * @property integer $group_id
 * @property integer $position
 *  @property integer $is_base
 */
class FeatureGroupRef extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%catalog_feature_group_ref}}';
    }

       /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'feature_id' => Yii::t('app', 'Feature ID'),
            'group_id' => Yii::t('app', 'group ID'),
            'position' => Yii::t('app', 'Position'),
            'is_base' => Yii::t('app', 'Main?'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['feature_id', 'group_id','position','is_base'], 'required'],
            [['feature_id', 'group_id','position','is_base'], 'integer'],
        ];
    }

        /**
     * @return Feature
     */
    public function getFeature()
    {
        return $this->hasOne(Feature::class, ['id' => 'feature_id']);
    }

     /**
     * @return Feature
     */
    public function getGroup()
    {
        return $this->hasOne(Group::class, ['id' => 'group_id']);
    }
}
