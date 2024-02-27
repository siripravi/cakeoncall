<?php

namespace app\modules\storage\models;

use Yii;
use yii\helpers\Json;
use app\models\User;
use app\modules\storage\models\StorageImage;
use app\modules\storage\filters\TinyCrop;
/**
 * This is the model class for table "admin_storage_file".
 *
 * @property int $id
 * @property int|null $is_hidden
 * @property int|null $folder_id
 * @property string|null $name_original
 * @property string|null $name_new
 * @property string|null $name_new_compound
 * @property string|null $mime_type
 * @property string|null $extension
 * @property string|null $hash_file
 * @property string|null $hash_name
 * @property int|null $upload_timestamp
 * @property int|null $file_size
 * @property int|null $upload_user_id
 * @property int|null $is_deleted
 * @property int|null $passthrough_file
 * @property string|null $passthrough_file_password
 * @property int|null $passthrough_file_stats
 * @property string|null $caption
 * @property int|null $inline_disposition
 * @property int|null $update_timestamp
 */
class StorageFile extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin_storage_file';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['is_hidden', 'folder_id', 'upload_timestamp', 'file_size', 'upload_user_id', 'is_deleted', 'passthrough_file', 'passthrough_file_stats', 'inline_disposition', 'update_timestamp'], 'integer'],
            [['caption'], 'string'],
            [['name_original', 'name_new', 'name_new_compound', 'mime_type', 'extension', 'hash_file', 'hash_name'], 'string', 'max' => 255],
            [['passthrough_file_password'], 'string', 'max' => 40],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'is_hidden' => 'Is Hidden',
            'folder_id' => 'Folder ID',
            'name_original' => 'Name Original',
            'name_new' => 'Name New',
            'name_new_compound' => 'Name New Compound',
            'mime_type' => 'Mime Type',
            'extension' => 'Extension',
            'hash_file' => 'Hash File',
            'hash_name' => 'Hash Name',
            'upload_timestamp' => 'Upload Timestamp',
            'file_size' => 'File Size',
            'upload_user_id' => 'Upload User ID',
            'is_deleted' => 'Is Deleted',
            'passthrough_file' => 'Passthrough File',
            'passthrough_file_password' => 'Passthrough File Password',
            'passthrough_file_stats' => 'Passthrough File Stats',
            'caption' => 'Caption',
            'inline_disposition' => 'Inline Disposition',
            'update_timestamp' => 'Update Timestamp',
        ];
    }
    /**
     * @inheritdoc
     */
    public static function find()
    {
        return parent::find();
    }
    /**
     * Get upload user.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::class, ['id' => 'upload_user_id']);
    }
    /**
     * Get all images fro the given file.
     *
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(StorageImage::class, ['file_id' => 'id']);
    }
    /**
     * Get the file for the corresponding model.
     *
     * @return \luya\admin\file\Item|boolean
     * @since 1.2.0
     */
    public function getFile()
    {
        return Yii::$app->storage->getFile($this->id);
    }

    /**
     * Returns the current file source path for the current filter image.
     * @return string
     */
    public function getSource()
    {
        return Yii::$app->storage->fileAbsoluteHttpPath($this->name_new_compound);
    }

    /**
     * Get the content of the file
     *
     * @return string|stream
     * @since 2.0
     */
    public function getContent()
    {
        return Yii::$app->storage->fileSystemContent($this->name_new_compound);
    }

    /**
     * Get the content of the file
     *
     * @return resource
     * @since 4.0
     */
    public function getStream()
    {
        return Yii::$app->storage->fileSystemStream($this->name_new_compound);
    }

    /**
     * Return boolean value whether the file server source exsits on the server or not.
     *
     * @return boolean Whether the file still exists in the storage folder or not.
     * @since 4.0.0
     */
    public function getFileExists()
    {
        return Yii::$app->storage->fileSystemExists($this->name_new_compound);
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
        return Yii::$app->storage->fileServerPath($this->name_new_compound);
    }

    /**
     * Get the size of a file in human readable size.
     *
     * For example sizes are partial splitet in readable forms:
     *
     * + 100B
     * + 100KB
     * + 10MB
     * + 1GB
     *
     * @return string The humand readable size.
     * @since 1.2.2.1
     */
    public function getSizeReadable()
    {
        return FileHelper::humanReadableFilesize($this->file_size);
    }

    /**
     * Whether the file is of type image or not.
     *
     * If the mime type of the files is equals to:
     *
     * + `image/gif`
     * + `image/jpeg`
     * + `image/jpg`
     * + `image/png`
     * + `image/bmp`
     * + `image/tiff`
     *
     * The file indicates to be an image and return value is true.
     *
     * @return boolean Whether the file is of type image or not.
     * @since 1.2.2.1
     */
    public function getIsImage()
    {
        return in_array($this->mime_type, Yii::$app->storage->imageMimeTypes);
    }

    /**
     * Create the thumbnail for this given file if its an image.
     *
     * > This method is used internal when uploading a file which is an image, the file manager preview images are created here.
     *
     * @return array|boolean Returns an array with the key source which contains the source to the thumbnail.
     * @since 1.2.2.1
     */
    public function getCreateThumbnail()
    {
        if (!$this->isImage) {
            return false;
        }

        $tinyCrop = Yii::$app->storage->getFilterId(TinyCrop::identifier());
        foreach ($this->images as $image) {
            if ($image->filter_id == $tinyCrop) {
                return ['source' => $image->source];
            }
        }

        // create the thumbnail on the fly if not existing
        $image = Yii::$app->storage->createImage($this->id, $tinyCrop);
        if ($image) {
            return ['source' => $image->source];
        }

        return false;
    }

    /**
     * Create the thumbnail medium for this given file if its an image.
     *
     * > This method is used internal when uploading a file which is an image, the file manager preview images are created here.
     *
     * @return array|boolean Returns an array with the key source which contains the source to the thumbnail medium.
     * @since 1.2.2.1
     */
    public function getCreateThumbnailMedium()
    {
        if (!$this->isImage) {
            return false;
        }
        $mediumThumbnail = Yii::$app->storage->getFilterId(MediumThumbnail::identifier());

        foreach ($this->images as $image) {
            if ($image->filter_id == $mediumThumbnail) {
                return ['source' => $image->source];
            }
        }

        // create the thumbnail on the fly if not existing
        $image = Yii::$app->storage->createImage($this->id, $mediumThumbnail);
        if ($image) {
            return ['source' => $image->source];
        }

        return false;
    }

    /**
     * Get an image for a given filter id of the current file
     *
     * @param integer $filterId The filter id.
     * @param boolean $checkImagesRelation If enabled the current relation `getImages()` will be used to check whether the file exists inside or not. This should only used when you preload this
     * relation:
     * ```php
     * foreach (StorageFile::find()->where(['id', [1,3,4,5]])->with(['images'])->all() as $file) {
     *     var_dump($file->imageFilter(1));
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

        return Yii::$app->storage->createImage($this->id, $filterId);
    }

    /**
     * Get the parsed response for a file caption as expand.
     *
     * @since 1.2.3
     * @return string The caption parsed for the current input langauge.
     */
    public function getCaptions()
    {
        return Json::decode($this->caption);
    }
}
