<?php

namespace app\modules\catalog\models;

use luya\helpers\Url;
use yii\db\ActiveRecord;
use yii\helpers\Inflector;

/**
 * This is the model class for table "gallery_album".
 *
 * @property integer $id
 * @property integer $cat_id
 * @property string $title
 * @property string $description
 * @property integer $cover_image_id
 * @property integer $timestamp_create
 * @property integer $timestamp_update
 * @property integer $is_highlight
 * @property integer $sort_index
 */
class Album extends ActiveRecord
{


    /**
     * @inheritdoc
     */
    public $i18n = ['title', 'description'];

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gallery_album';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cat_id', 'cover_image_id', 'timestamp_create', 'timestamp_update', 'is_highlight', 'sort_index'], 'integer'],
            [['title'], 'required'],
            [['title', 'description'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    /*  public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cat_id' => Module::t('album_cat_id'),
            'title' => Module::t('album_title'),
            'description' => Module::t('album_description'),
            'cover_image_id' => Module::t('album_cover_image_id'),
            'sort_index' => Module::t('album_sort_index'),
            'is_highlight' => Module::t('album_is_highlight'),
            'timestamp_create' => 'Timestamp Create',
            'timestamp_update' => 'Timestamp Update',
        ];
    }  */


    /**
     * Get the Album Category.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCat()
    {
        return $this->hasOne(Cat::class, ['id' => 'cat_id']);
    }

    /**
     * Get Album Images.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAlbumImages()
    {
        return $this->hasMany(AlbumImage::class, ['album_id' => 'id'])->orderBy(['sortindex' => SORT_ASC]);
    }

    /**
     * Return the detail link for the current model.
     *
     * @return string
     */
    public function getDetailLink()
    {
        return Url::toRoute(['/gallery/album/index', 'albumId' => $this->id, 'title' => Inflector::slug($this->title)]);
    }

    // deprecated methods  for 1.0.0

    /**
     * @deprecated deprecated for version 1.0.1
     */
  /*  public function getCategoryUrl()
    {
        trigger_error('Method "$model->getCategoryUrl()" is deprecated, use "$model->cat->detailLink" instead.', E_USER_DEPRECATED);

        $category = Cat::findOne($this->cat_id);

        return Url::toRoute(['/gallery/alben/index', 'catId' => $category->id, 'title' => \yii\helpers\Inflector::slug($category->title)]);
    }  */

    /**
     * @deprecated deprecated for version 1.0.1
     */
    public function getCategoryName()
    {
        trigger_error('Method "$model->getCategoryName()" is deprecated, use "$model->cat->title" instead', E_USER_DEPRECATED);

        $category = Cat::findOne($this->cat_id);

        return $category->title;
    }

    /**
     * @deprecated deprecated for version 1.0.1
     */
    /*  public function getDetailUrl($contextNavItemId = null)
    {
        trigger_error('Method "$model->getDetailUrl()" is deprectaed, use "$model->detailLink" instead.', E_USER_DEPRECATED);
        
        if ($contextNavItemId) {
            return \luya\cms\helpers\Url::toMenuItem($contextNavItemId, 'gallery/album/index', ['albumId' => $this->id, 'title' => \yii\helpers\Inflector::slug($this->title)]);
        }
        
        return Url::toRoute(['/gallery/album/index', 'albumId' => $this->id, 'title' => \yii\helpers\Inflector::slug($this->title)]);
    }*/

    /**
     * @deprecated deprecated for version 1.0.1
     */
    public function images()
    {
        trigger_error('Method "images()" is depreacted, use the" getAlbumImages()" or "$albumImages" relation ActiveQuery instead.', E_USER_DEPRECATED);

        return (new \yii\db\Query())->from('gallery_album_image')->where(['album_id' => $this->id])->all();
    }
}
