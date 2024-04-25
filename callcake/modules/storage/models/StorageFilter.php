<?php

namespace app\modules\storage\models;

use Yii;
use yii\imagine\Image;
/**
 * This is the model class for table "admin_storage_filter".
 *
 * @property int $id
 * @property string $identifier
 * @property string|null $name
 */
class StorageFilter extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin_storage_filter';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['identifier'], 'required'],
            [['identifier'], 'string', 'max' => 100],
            [['name'], 'string', 'max' => 255],
            [['identifier'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'identifier' => 'Identifier',
            'name' => 'Name',
        ];
    }

    /**
     * Apply the current filter chain.
     *
     * Apply all filters from the chain to a given file and stores the new generated file on the $fileSavePath
     *
     * @param string $source the Source path to the file, which the filter chain should be applied to.
     * @param string $fileSavePath
     * @return boolean
     */
    public function applyFilterChain($source, $fileSavePath)
    {
        // load resource object before processing chain
        $image = Image::getImagine()->open($source);
        $saveOptions = [];

        foreach (StorageFilterChain::find()->where(['filter_id' => $this->id])->with(['effect'])->all() as $chain) {
            // apply filter
            [$image, $saveOptions] = $chain->applyFilter($image, $saveOptions);
        }

        // auto rotate & save
        $image = Image::autoRotate($image)
            ->save($fileSavePath, $saveOptions);

        unset($image);
        return true;
    }

}
