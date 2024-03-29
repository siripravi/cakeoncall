<?php

namespace app\modules\catalog\models;
use luya\helpers\Url;
use yii\helpers\Inflector;

/**
 * This is the model class for table "gallery_cat".
 *
 * @property integer $id
 * @property string $title
 * @property integer $cover_image_id
 * @property string $description
 */
class Cat extends \yii\db\ActiveRecord
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
        return 'gallery_cat';
    }
        
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['title', 'description'], 'string'],
            [['cover_image_id'], 'integer'],
        ];
    }
    
    /**
     * @inheritdoc
     */
 /*   public function attributeLabels()
    {
        return [
            'title' => Module::t('cat_title'),
            'description' => Module::t('cat_description'),
            'cover_image_id' => Module::t('cat_cover_image_id'),
        ];
    }*/

    /**
     * Ensure if deleteion is available or not.
     *
     * @param unknown $event
     */
  /*  public function eventBeforeDelete($event)
    {
        $items = Album::find()->where(['cat_id' => $this->id])->count();

        if ($items > 0) {
            $this->addError('id', Module::t('cat_delete_error'));
            $event->isValid = false;
            return;
        }
    }*/
    
      
    /**
     * Get Cat detail Link.
     *
     * @return string
     */
    public function getDetailLink()
    {
        return Url::toRoute(['/gallery/alben/index', 'catId' => $this->id, 'title' => Inflector::slug($this->title)]);
    }
}