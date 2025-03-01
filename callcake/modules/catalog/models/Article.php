<?php

namespace app\modules\catalog\models;

use Yii;
use yii\helpers\Inflector;
use yii\db\ActiveRecord;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;
use app\modules\catalog\behaviors\ManyToManyBehavior;
use app\modules\catalog\models\Album;

use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use app\modules\catalog\behaviors\JsonBehavior;
/**
 * Article.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property text $name
 * @property integer $product_id
 * @property string $code
 * @property decimal $price
 * @property decimal $price_old
 * @property integer $currency_id
 * @property integer $unit_id
 * @property integer $available
 * @property integer $image_id
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $position
 * @property tinyint $enabled
 */
class Article extends ActiveRecord
{

    private $_price;
    private $_currency;
public $jsonObject;
    public $adminFeatures = [];

    public $i18n = ['name', 'code'];
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_article';
    }

    /**
     * @inheritdoc
     */
    public static function ngRestApiEndpoint()
    {
        return 'api-catalog-article';
    }

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'createdAtAttribute' => 'created_at',
                'updatedAtAttribute' => 'updated_at',
                'value' => new Expression('NOW()'),
            ],
            [
                'class' => ManyToManyBehavior::class,
                'relations' => [
                    'value_ids' => ['setValues'],
                ]
                ],
                [
                    'class'=>JsonBehavior::className(),
                    'attributes'=>[
                        'jsonObject' => 'name' 
                    ]
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
            'name' => Yii::t('app', 'Title'),
            'product_id' => Yii::t('app', 'Product ID'),
            'album_id'  => Yii::t('app', 'Image Gallery'),
            'code' => Yii::t('app', 'Code'),
            'price' => Yii::t('app', 'Price'),
            'price_old' => Yii::t('app', 'Price Old'),
            'currency_id' => Yii::t('app', 'Currency ID'),
            'unit_id' => Yii::t('app', 'Unit ID'),
            'text'  => Yii::t('app', 'Description'),
            'available' => Yii::t('app', 'Available'),
            'image_id' => Yii::t('app', 'Cover Image'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'enabled' => Yii::t('app', 'Enabled'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'product_id'], 'required'],
            [['product_id', 'unit_id', 'available', 'image_id', 'album_id', 'created_at', 'updated_at', 'position', 'enabled'], 'integer'],
            [['price', 'price_old'], 'number'],
            [['code'], 'string', 'max' => 255],
            [['id', 'values', 'text'], 'safe'],
            // [['adminFeatures'], 'safe'],
            [['value_ids'], 'each', 'rule' => ['integer']]
        ];
    }
  
        
    public function getProduct()
    {
        return $this->hasOne(Product::class, ['id' => 'product_id']);
    }

    /**
     * Get the Album.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlbum()
    {
        return $this->hasOne(Album::class, ['id' => 'album_id']);
    }

    /**
     * Get the Album.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        if(!empty($this->getAlbum()))
            return $this->album->albumImages;
        return false;
    }

    public function getGroups()
    {
        return $this->product->groups;
    }

    public function getPrices()
    {
        return $this->hasMany(ArticlePrice::class, ['article_id' => 'id']);
    }

    public function getFeatures()
    {
        return $this->hasMany(Feature::class, ['id' => 'feature_id'])->with('groups')->viaTable(FeatureGroupRef::tableName(), ['group_id' => 'id'])->orderBy(['position' => SORT_ASC]);
    }

    public function getAttributeValues()
    {
        return $this->hasMany(ArticleValueRef::class, ['article_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getValues()
    {
        $product = $this->product;
        $value_ids = $this->value_ids;
        if ($product->group_ids)
            $features = Feature::getFilterList(true, $product->group_ids);
        else
            $features = [];

        $data = [];
        foreach ($features as $set) {
            $values = Value::getList($set->id);
            foreach ($values as $i => $val) {
                $data[$set->id][$i] = $val;
            }
        }
        return $data;
    }

    public function setValues($data)
    {
        if ($this->isNewRecord) {
            $this->on(self::EVENT_AFTER_INSERT, function () use ($data) {
                $this->updateSetValues($data);
            });
        } else {
            $this->updateValues($data);
        }
    }

    private function updateValues($data)
    {

        if (!empty($data)) {

            $this->unlinkAll('attributeValues', true);

            foreach ($data as $setId => $values) {
                foreach ($values as $attributeId => $attributeValue) {
                    if ($attributeValue == 1) {
                        $model = new ArticleValueRef();
                        $model->article_id = $this->id;
                        $model->value_id = $attributeId;
                        $this->link('attributeValues', $model);
                    }
                }
            }
        }
    }
    public function getSetValues()
    {
        return $this->hasMany(Value::class, ['id' => 'value_id'])->viaTable(ArticleValueRef::tableName(), ['article_id' => 'id']);
    }

    public static function getElements()
    {
        $elements = self::find()->where(['enabled' => 1])->all();
        $data = [];
        foreach ($elements as $key => $element) {
            $data[$key] = $element;
            $data[$key]['image_id'] = \Yii::$app->storage->getImage($element['image_id']);
            // $data[$key]['img_max_id'] = \Yii::$app->storage->getImage($element['img_max_id']);
        }
        return $data;
    }
    /*  public function getPricesDef($feature_id = null)
    {
        // $article = self::findOne($article_id);
        $curDef = $this->getCurrencyDef();
        $rows = [];
        $priceList = [];
        $value_ids = [];
        $index = $this->id;
        $list = Value::getList($feature_id);
        $value_ids = $this->value_ids;
        foreach ($list as $key => $item) {
            if (in_array($key, $value_ids)) {
                //$value_ids[] = $value_id;
                //   unset($list[$key]);

                $priceList[$key] = [
                    'label' => $item,
                    'price' => '0',
                    'priceLabel' => $item . '   - Not Available'
                ];
            }
        }
        foreach ($this->prices as $price) {

            if (in_array($price->value_id, $value_ids)) {
                if ($price->currency_id = $curDef->id) {
                    $pLabel = $price->qty . " " . $price->unit->name . " @ " . $curDef->before . $price->price . $curDef->after . " Only";
                }
                if (isset($list[$price->value_id])) {
                    $priceList[$price->value_id] =
                        [
                            'ftext'  => $list[$price->value_id],
                            'price'  => $price->value_id."_".$price->price,
                            'ptext' => $list[$price->value_id] . "-" . $pLabel
                        ];
                }
            }
        }
        return $priceList;
    }*/

    /*public function getPriceDef()
    {

        if (empty($this->_currency)) {
            $this->_currency = Currency::findOne(1);  //Yii::$app->params['currency_id']);
        }

        if (empty($this->_currency)) {
            $price;
        } else {
            round($this->price * $this->_currency->rate);
        }
    }*/

    /*   public function getCurrencyDef()
    {
        if (empty($this->_currency)) {
            $this->_currency = Currency::findOne(['code' => 'INR']);  //Yii::$app->params['currency_id']);
        }

        if (empty($this->_currency)) {
            return $this->_currency;
        } else {
            return  $this->_currency;
        }
    }*/

    /**
     * Get image object.
     *
     * @return \luya\admin\image\Item|boolean
     */
    public function getImage()
    {
        $image = Yii::$app->storage->getImage($this->image_id);
        if(isset($image)){
            return $image;
        }
        return false;
       // return Yii::$app->storage->getImage($this->image_id);
    }

    /**
     *
     * @return string
     */
    public function getDetailUrl()
    {
        //return Url::toRoute(['/product-info', 'aID' => $this->id, 'aTitle' => Inflector::slug($this->name)]);
        return Url::toRoute(['/product-info/.'. $this->id. '/'. Inflector::slug($this->name)]);
    }

    public static function getFeaturesFormData($id)
    {
        $product = Product::findOne(['id' => $id, 'enabled' => 1]);

        $articles = $product->articles;
        $artForm = [];
        foreach ($articles as $article) {
            $imageId = $article->image_id;
            $aName = $article->name;
            $product = Product::viewPage($article->product_id);
            $category_ids = $product->group_ids;
            $prices = $article->prices;
            $priceList = ArrayHelper::index(ArrayHelper::toArray($prices, [
                'app\modules\catalog\models\ArticlePrice' => [
                    'article_id', 'value_id', 'currency_id', 'price', 'qty', 'unit_id'
                ],
            ]), 'value_id');

            $obList = Feature::getObjectList(true, $category_ids);
            $pli =  ArrayHelper::toArray($obList, [
                'app\modules\catalog\models\Feature' => [
                    'id',
                    'name',
                    'type',
                    'input',
                    // 'values',
                    'featureValues',
                    //  'DP',
                ],
            ]);

            array_walk($pli, function (&$value, $key) use ($priceList, $aName, $imageId) {
                $fId = $value['id'];

                $fVals = (array_key_exists($fId, $value['featureValues'])) ? $value['featureValues'][$fId] : [];
                foreach ($fVals as $k => $v) {
                    if (array_key_exists($k, $priceList)) {
                        if (!empty($v)) {
                            $value['article_id'] = $priceList[$k]['article_id'];
                            $value['image_id'] = $imageId;
                            $value['pname'] = $aName;
                            $value['featureValues'][$fId][$k]['value_id'] = $priceList[$k]['value_id'];
                            $value['featureValues'][$fId][$k]['currency_id'] = $priceList[$k]['currency_id'];
                            $value['featureValues'][$fId][$k]['price'] = $priceList[$k]['price'];
                            $value['featureValues'][$fId][$k]['qty'] = $priceList[$k]['qty'];
                            $value['featureValues'][$fId][$k]['unit_id'] = $priceList[$k]['unit_id'];
                        }
                    } else {
                        unset($value['featureValues'][$fId][$k]);
                    }
                }
            });
            $artForm[$article->id] = $pli;
        }
        return $artForm;
    }

    public static function calcCartPrice($options){
        $fsel = [];
        $price = 0;       
        foreach ($options as $f => $v) {

            $fsel[] = explode("+", $v);
            $price += end($fsel)[3];
        }
        return $price;
    }
}
