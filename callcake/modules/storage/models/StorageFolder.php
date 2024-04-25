<?php

namespace app\modules\storage\models;

use Yii;

/**
 * This is the model class for table "admin_storage_folder".
 *
 * @property int $id
 * @property string|null $name
 * @property int|null $parent_id
 * @property int|null $timestamp_create
 * @property int|null $is_deleted
 */
class StorageFolder extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin_storage_folder';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['parent_id', 'timestamp_create', 'is_deleted'], 'integer'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'parent_id' => 'Parent ID',
            'timestamp_create' => 'Timestamp Create',
            'is_deleted' => 'Is Deleted',
        ];
    }
}
