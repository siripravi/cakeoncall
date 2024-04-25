<?php

namespace app\modules\storage\models;

use Yii;

/**
 * This is the model class for table "admin_storage_image".
 *
 * @property int $id
 * @property int|null $file_id
 * @property int|null $filter_id
 * @property int|null $resolution_width
 * @property int|null $resolution_height
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class StorageImage extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin_storage_image';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['file_id', 'filter_id', 'resolution_width', 'resolution_height', 'created_at', 'updated_at'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'file_id' => 'File ID',
            'filter_id' => 'Filter ID',
            'resolution_width' => 'Resolution Width',
            'resolution_height' => 'Resolution Height',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
 /**
     * @return StorageFile
     */
    public function getFile()
    {
        return $this->hasOne(StorageFile::class, ['id' => 'file_id']);
    }

    /**
     * Get Storage Filter.
     *
     * @return StorageFilter
     * @since 3.2.0
     */
    public function getFilter()
    {
        return $this->hasOne(StorageFilter::class, ['id' => 'filter_id']);
    }

    /**
     * Returns the current file source path for the current filter image.
     *
     * @return string
     */
    public function getSource()
    {
        return Yii::$app->storage->fileAbsoluteHttpPath($this->filter_id . '_' . $this->file->name_new_compound);
    }

    /**
     * Get the path to the source files internal, on the servers path.
     *
     * This is used when you want to to grab the file on server side for example to read the file
     * with `file_get_contents` and is the absolut path on the file system on the server.
     *
     * @return string The path to the file on the filesystem of the server.
     * @since 1.2.2.1
     */
    public function getServerSource()
    {
        return Yii::$app->storage->fileServerPath($this->filter_id . '_' . $this->file->name_new_compound);
    }

    /**
     * Return boolean value whether the file server source exsits on the server or not.
     *
     * @return boolean Whether the file still exists in the storage folder or not.
     * @since 1.2.2.1
     */
    public function getFileExists()
    {
        return Yii::$app->storage->fileSystemExists($this->filter_id . '_' . $this->file->name_new_compound);
    }
    /**
     * Return a storage image object representing the tiny crop which is used for file manager and crud list previews.
     *
     * The tiny crop image filter is also the thumbnail used in ngrest list (and file manager).
     *
     * > The thumbnail won't be created on the fly! Use storage system to create the image for the given filter.
     * > This should have been done already while uploading.
     *
     * @since 1.2.3
     * @return StorageImage
     */
    public function getTinyCropImage()
    {
        return $this->getFilterImage(TinyCrop::identifier());
    }

    /**
     * Return a storage image object representing the medium thumbail which is used for file manager and crud list previews.
     *
     * The Medium Thumbnail image filter is used when hovering the image in file manager.
     *
     * > The thumbnail won't be created on the fly! Use storage system to create the image for the given filter.
     * > This should have been done already while uploading.
     *
     * @since 1.2.3
     * @return StorageImage
     */
    public function getMediumThumbnailImage()
    {
        return $this->getFilterImage(MediumThumbnail::identifier());
    }

    /**
     * the relation for an storage image with the given filter identifier
     *
     * @param string $identifier The identifier of the filter to use.
     * @return StorageImage
     * @since 1.2.3
     */
    public function getFilterImage($identifier)
    {
        $filterId = Yii::$app->storage->getFilterId($identifier);
        return $this->hasOne(self::class, ['file_id' => 'file_id'])->andWhere(['filter_id' => $filterId]);
    }

    /**
     * Get an image for a given filter id of the current image.
     *
     * @param integer $filterId The filter id.
     * @param boolean $checkImagesRelation If enabled the current relation `getImages()` will be used to check whether the file exists inside or not. This should only used when you preload this
     * relation:
     * ```php
     * foreach (StorageImage::find()->where(['id', [1,3,4,5]])->with(['images'])->all() as $image) {
     *     var_dump($image->imageFilter(1));
     * }
     * ```
     * @return StorageImage
     * @since 2.0.0
     */
    public function imageFilter($filterId, $checkImagesRelation = true)
    {
        if ($checkImagesRelation) {
            foreach ($this->images as $image) {
                if ($image->filter_id == $filterId) {
                    return $image;
                }
            }
        }

        return Yii::$app->storage->createImage($this->file_id, $filterId);
    }

    /**
     * Delete the source of this image.
     *
     * @return boolean
     */
    public function deleteSource()
    {
        return Yii::$app->storage->fileSystemDeleteFile($this->filter_id . '_' . $this->file->name_new_compound);
    }

    /**
     * Get all related images
     *
     * @return StorageImage[]
     */
    public function getImages()
    {
        return $this->hasMany(self::class, ['file_id' => 'file_id']);
    }
}
