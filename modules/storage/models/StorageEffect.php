<?php

namespace app\modules\storage\models;

use Yii;

/**
 * This is the model class for table "admin_storage_effect".
 *
 * @property int $id
 * @property string $identifier
 * @property string|null $name
 * @property string|null $imagine_name
 * @property string|null $imagine_json_params
 */
class StorageEffect extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin_storage_effect';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['identifier'], 'required'],
            [['imagine_json_params'], 'string'],
            [['identifier'], 'string', 'max' => 100],
            [['name', 'imagine_name'], 'string', 'max' => 255],
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
            'imagine_name' => 'Imagine Name',
            'imagine_json_params' => 'Imagine Json Params',
        ];
    }

     /**
     * Returns the effect name ensured with lowercase.
     *
     * @return string
     * @since 1.0.2
     */
    public function getImagineEffectName()
    {
        return strtolower($this->imagine_name);
    }
}
