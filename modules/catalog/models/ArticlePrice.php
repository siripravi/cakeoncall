<?php

namespace siripravi\ecommerce\models;

use Yii;
use yii\db\ActiveRecord;

use yii\helpers\ArrayHelper;
/**
 * Article Price.
 *
 * File has been created with `crud/create` command on LUYA version 1.0.0-dev.
 *
 * @property integer $article_id
 * @property integer $currency_id
 * @property integer $qty
 * @property float $price
 */
class ArticlePrice extends ActiveRecord
{
    public $adminValues = [];
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_article_price';
    }

   
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'article_id' => Yii::t('app', 'Article ID'),
            'currency_id' => Yii::t('app', 'Currency ID'),
            'qty' => Yii::t('app', 'Qty'),
            'price' => Yii::t('app', 'Price'),
            'unit_id' => Yii::t('app', 'Unit'),
            'value_id' => Yii::t('app', 'Feature Value'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['article_id', 'currency_id', 'qty', 'price', 'unit_id'], 'required'],
            [['article_id', 'currency_id', 'qty', 'unit_id', 'value_id'], 'integer'],
            [['price'], 'number'],
        ];
    }


    /**
     * @return Article
     */
    public function getArticle()
    {
        return $this->hasOne(Article::class, ['id' => 'article_id']);
    }

    /**
     * @return Currency
     */
    public function getCurrency()
    {
        return $this->hasOne(Currency::class, ['id' => 'currency_id']);
    }

    /**
     * @return Currency
     */
    public function getUnit()
    {
        return $this->hasOne(Unit::class, ['id' => 'unit_id']);
    }

    public function getValues()
    {
        return $this->hasMany(Value::class, ['id' => 'value_id'])->viaTable(ArticleValueRef::tableName(), ['value_id' => 'id'])->where(['article_id'=>'id']);
        //return $this->hasMany(ArticleValueRef::class, ['article_id' => 'id']);

    }

   
    /**
     * @param integer|null $feature_id
     * @return array
     */
    public static function getPriceList($article_id, $feature_id)
    {
        $values = self::find()
            ->joinWith('values')
            // ->joinWith(['values.feature'])
            ->andFilterWhere(['article_id' => $article_id])
            ->andFilterWhere(['feature_id' => $feature_id])
            ->orderBy('position')
            ->all();

            return ArrayHelper::map($values, 'id', 'name');
        
      
    }
}
