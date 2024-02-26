<?php

namespace app\modules\catalog\models;

use Yii;
use yii\db\ActiveRecord;

use yii\behaviors\TimestampBehavior;
use app\modules\catalog\behaviors\ManyToManyBehavior;
use yii\db\Expression;
use yii\helpers\Inflector;
use yii\helpers\Url;
/**
 * Product.
 * 
 * File has been created with `crud/create` command. 
 *
 * @property integer $id
 * @property text $name
 * @property string $slug
 * @property integer $brand_id
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $price_from
 * @property string $view
 * @property integer $position
 * @property tinyint $enabled
 */
class Product extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    //public $i18n = ['name','slug', 'view'];

    /**
     * @var array
     */
    public $adminGroups = [];
    public $adminRelated = [];
    /**
     * @var array
     */
    public $adminSets = [];

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'catalog_product';
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
                    'group_ids' => ['groups'],
                    'related_ids' => ['related'],
                ]
            ]
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
            'slug' => Yii::t('app', 'Slug'),
            'cover_image_id' => Yii::t('app', 'Image'),
            'text' => Yii::t('app', 'text'),
            'brand_id' => Yii::t('app', 'Brand ID'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'price_from' => Yii::t('app', 'Price From'),
            'view' => Yii::t('app', 'View'),
            'position' => Yii::t('app', 'Position'),
            'enabled' => Yii::t('app', 'Enabled'),
            'adminGroups' => 'Categories',
            'adminRelated' => 'Related',
            //'adminSets' => 'Features',
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['slug'], 'required'],
            [['brand_id', 'created_at', 'updated_at', 'price_from', 'cover_image_id', 'position', 'enabled'], 'integer'],
            [['name', 'slug', 'view', 'text'], 'string', 'max' => 255],
            [['adminGroups'], 'safe'],
            [['adminRelated'], 'safe'],
            [['group_ids'], 'each', 'rule' => ['integer']],
            [['related_ids'], 'each', 'rule' => ['integer']]

        ];
    }

    public function getArticles()
    {
        return $this->hasMany(Article::class, ['product_id' => 'id']);
    }


    public function getGroups()
    {
        return $this->hasMany(Group::class, ['id' => 'group_id'])->viaTable(ProductGroupRef::tableName(), ['product_id' => 'id']);
    }


    /**
     * @return Article
     */
    public function getBrands()
    {
        return $this->hasOne(Brand::class, ['id' => 'brand_id']);
    }

    public function getRelated()
    {
        return $this->hasMany(Related::class, ['id' => 'related_id'])->viaTable('catalog_product_related_ref', ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOptions()
    {
        return $this->hasMany(Product::class, ['id' => 'set_id'])->viaTable('catalog_product_set_ref', ['product_id' => 'id']);
    }

    public function getFeatures()
    {
        if (!empty($this->group_ids)) {
            $features = Feature::getObjectList(true, $model->group_ids);
        } else {
            $features = [];
        }
    }

    public static function viewPage($id)
    {
         if (is_numeric($id)) {
        $page = self::find()->where(['id' => $id])->one();
         } else {
              $page = self::find()->where(['slug' => $id])->one();
        //echo $page->id; die;  //->createCommand()->getRawSql(); die;
          }
        if ($page === null) {
            throw new \NotFoundHttpException('The requested page does not exist.');
        }
        Yii::$app->view->params['page'] = $page;
        Yii::$app->view->title = $page->name;
        if ($page->text) {
            Yii::$app->view->registerMetaTag([
                'name' => 'text',
                'content' => $page->text
            ]);
        }
        /*if ($page->keywords) {
            Yii::$app->view->registerMetaTag([
                'name' => 'keywords',
                'content' => $page->keywords
            ]);
        }*/
        return $page;
    }

     /**
     *
     * @return string
     */
    public function getDetailUrl()
    {
        return Url::toRoute(['/product-info', 'id' => $this->id, 'title' => Inflector::slug($this->name)]);
    }
}
