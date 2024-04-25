<?php

namespace app\modules\catalog\models;

use Yii;
use yii\db\ActiveRecord;

use app\modules\catalog\behaviors\ManyToManyBehavior;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use app\modules\catalog\models\Value;

use luya\admin\base\TypesInterface;
use luya\admin\aws\TaggableActiveWindow;

/**
 * Feature.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property string $name
 * @property integer $position
 * @property tinyint $enabled
 * @property integer $after
 * @property integer $type
 * @property string $input 
 * @property string $value_text
 * 
 */
class Feature extends ActiveRecord
{

    public $adminGroups = [];

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_feature';
    }
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [

            [
                'class' => ManyToManyBehavior::class,
                'relations' => [
                    'article_ids' => ['articles'],
                    'group_ids' => ['groups'],
                    'filter_ids' => ['filters'],
                ],
            ],
        ];
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
            'enabled' => Yii::t('app', 'Enabled'),
            'after' => Yii::t('app', 'After'),
            'adminGroups' => 'Categories',
            'value_text' => Yii::t('app', 'Values'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['position', 'type', 'enabled'], 'integer'],
            [['name', 'input', 'value_text'], 'string', 'max' => 255],
            [['adminGroups'], 'safe'],
            [['after'], 'string', 'max' => 32],
            [['input'], 'required'],
            [['group_ids'], 'each', 'rule' => ['integer']],
            [['article_ids'], 'each', 'rule' => ['integer']],
            [['filter_ids'], 'each', 'rule' => ['integer']]
        ];
    }

    public function getGroups()
    {
        return $this->hasMany(Group::class, ['id' => 'group_id'])->viaTable('catalog_feature_group_ref', ['feature_id' => 'id']);
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getValues()
    {
        return $this->hasMany(Value::class, ['feature_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArticles()
    {
        // TODO: value_id != feature_id
        return $this->hasMany(Article::class, ['id' => 'article_id'])->viaTable('catalog_article_value_ref', ['value_id' => 'id']);
    }
    /**
     * @param boolean|null $enabled
     * @param array $category_ids
     * @return @return MultilingualQuery|\yii\db\ActiveQuery
     */
    public static function getObjectList($enabled, array $category_ids)
    {
        return self::find()->joinWith(['groups'])->andFilterWhere(['catalog_feature.enabled' => $enabled])->andFilterWhere(['group_id' => $category_ids])->orderBy('position')->all();
        //return self::find()->joinWith(['groups'])->andFilterWhere(['catalog_feature.enabled' => $enabled])->andFilterWhere(['group_id' => $category_ids])->orderBy('position')->all();
    }

    public function getFeatureValues()
    {
        $data = [];
        foreach ($this->getValues()->all() as $value) {
            $data[$value->feature_id][$value->id] = $value;
        }

        return $data;
    }

    public function fields()
    {
        $fields = parent::fields();
        $fields['values_json'] = function ($model) {
            return Json::decode($model->value_text);
        };
        return $fields;
    }

    public function extraFields()
    {
        return ['adminGroups'];  //adminSets
    }

    /**
     * @inheritdoc
     */
    public function genericSearchFields()
    {
        return ['name', 'value_text'];
    }

    
    /* public function ngRestRelations()
    {
        return [
           ['label' => 'Categories', 'targetModel' => FeatureGroupRef::class,'apiEndpoint' => FeatureGroupRef::ngRestApiEndpoint(), 'dataProvider' => $this->getGroups()],
        ];
    }*/

    /**
     * @param boolean|null $enabled
     * @param array $category_ids
     * @return array
     */
    public static function getList($enabled, $category_ids)
    {
        return ArrayHelper::map(self::find()->joinWith(['groups'])->andFilterWhere(['catalog_feature.enabled' => $enabled])->andFilterWhere(['group_id' => $category_ids])->orderBy('position')->all(), 'id', 'name');
    }

    /**
     * @param boolean|null $enabled
     * @param array $category_ids
     * @return @return MultilingualQuery|\yii\db\ActiveQuery
     */


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFilters()
    {
        return $this->hasMany(Group::class, ['id' => 'group_id'])->viaTable('catalog_feature_filter', ['feature_id' => 'id']);
    }

    /**
     * @param boolean|null $enabled
     * @param array $category_ids
     * @return @return MultilingualQuery|\yii\db\ActiveQuery
     */
    public static function getFilterList($enabled, array $category_ids)
    {
        return self::find()->joinWith(['filters'])->andFilterWhere(['catalog_feature.enabled' => $enabled])->andFilterWhere(['group_id' => $category_ids])->orderBy('position')->all();
    }
}
