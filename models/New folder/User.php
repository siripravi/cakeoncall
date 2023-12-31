<?php

namespace app\models;

use claviska\SimpleImage;
use Yii;
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\helpers\FileHelper;
use yii\web\IdentityInterface;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;

/**
 * User model
 *
 * @property integer $id
 * @property string $username
 * @property string $fullname
 * @property string $avatar
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property string $auth_key
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $password write-only password
 * @property string $github
 * @property string $twitter
 * @property string $facebook
 * @property bool $notify_about_comment_on_email
 *
 * @property Auth[] $auths
 * @property Project[] $projects
 * @property mixed $statusLabel
 * @property \yii\db\ActiveQuery $bookmarkedProjects
 * @property string $githubProfileUrl
 * @property string $authKey
 * @property Project[] $bookmarkProjects
 */
class User extends ActiveRecord implements IdentityInterface
{
    const STATUS_DELETED = 0;
    const STATUS_ACTIVE = 10;

    const SCENARIO_MANAGE = 'manage';

    /** @var UploadedFile */
    public $avatarFile;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%user}}';
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::class,
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['status', 'default', 'value' => self::STATUS_ACTIVE],
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            ['status', 'filter', 'filter' => 'intval'],

            // Username
            [['username', 'fullname'], 'string'],

            // Avatar
            ['avatar', 'string', 'max' => 60],
            ['avatarFile', 'file', 'extensions' => 'png, jpg'],
            
            ['notify_about_comment_on_email', 'required'],
            ['notify_about_comment_on_email', 'boolean'],
        ];
    }

    /**
     * @return array
     */
    public function scenarios()
    {
        static $defaultAttributes = ['username', 'fullname', 'notify_about_comment_on_email'];

        return [
            self::SCENARIO_DEFAULT => $defaultAttributes,
            self::SCENARIO_MANAGE => array_merge($defaultAttributes, ['status']),
        ];
    }

    /**
     * @inheritdoc
     */
    public static function findIdentity($id)
    {
        return static::findOne(['id' => $id, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUsername($username)
    {
        return static::findOne(['username' => $username, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * Finds user by password reset token
     *
     * @param string $token password reset token
     * @return static|null
     */
    public static function findByPasswordResetToken($token)
    {
        if (!static::isPasswordResetTokenValid($token)) {
            return null;
        }

        return static::findOne([
            'password_reset_token' => $token,
            'status' => self::STATUS_ACTIVE,
        ]);
    }

    /**
     * Finds out if password reset token is valid
     *
     * @param string $token password reset token
     * @return boolean
     */
    public static function isPasswordResetTokenValid($token)
    {
        if (empty($token)) {
            return false;
        }
        $expire = Yii::$app->params['user.passwordResetTokenExpire'];
        $parts = explode('_', $token);
        $timestamp = (int) end($parts);
        return $timestamp + $expire >= time();
    }

    /**
     * @inheritdoc
     */
    public function getId()
    {
        return $this->getPrimaryKey();
    }

    /**
     * @inheritdoc
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * @inheritdoc
     */
    public function validateAuthKey($authKey)
    {
        return $this->getAuthKey() === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password_hash);
    }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }

    /**
     * Generates "remember me" authentication key
     */
    public function generateAuthKey()
    {
        $this->auth_key = Yii::$app->security->generateRandomString();
    }

    /**
     * Generates new password reset token
     */
    public function generatePasswordResetToken()
    {
        $this->password_reset_token = Yii::$app->security->generateRandomString() . '_' . time();
    }

    /**
     * Removes password reset token
     */
    public function removePasswordResetToken()
    {
        $this->password_reset_token = null;
    }

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'username' => Yii::t('app', 'Username'),
            'fullname' => Yii::t('app', 'Fullname'),
            'avatar' => Yii::t('app', 'Avatar'),
            'avatarFile' => Yii::t('app', 'Avatar'),
            'auth_key' => Yii::t('app', 'Auth Key'),
            'password_hash' => Yii::t('app', 'Password Hash'),
            'password_reset_token' => Yii::t('app', 'Password Reset Token'),
            'email' => Yii::t('app', 'Email'),
            'github' => Yii::t('app', 'Github'),
            'twitter' => Yii::t('app', 'Twitter'),
            'facebook' => Yii::t('app', 'Facebook'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'notify_about_comment_on_email' => Yii::t('app', 'Notify about new comments by e-mail'),
        ];
    }

    public function getStatusLabel()
    {
        $statuses = self::getStatuses();
        return ArrayHelper::getValue($statuses, $this->status);
    }

    public static function getStatuses()
    {
        return [
            self::STATUS_DELETED => Yii::t('app', 'Delete'),
            self::STATUS_ACTIVE  => Yii::t('app', 'Active'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAuths()
    {
        return $this->hasMany(Auth::class, ['user_id' => 'id'])->inverseOf('app');
    }

    /**
     * @return string GitHub profile URL or null if user isn't connected with GitHub
     */
    public function getGithubProfileUrl()
    {
        return $this->github ? 'http://github.com/' . $this->github : null;
    }

    /**
     * @return UserQuery
     */
    public static function find()
    {
        return new UserQuery(static::class);
    }
    
    /**
     * Returns bookmarked projects query
     * 
     * @return \yii\db\ActiveQuery
     */
    public function getBookmarkedProjects()
    {
        return $this->hasMany(Project::className(), ['id' => 'project_id'])
            ->viaTable(Bookmark::tableName(), ['user_id' => 'id']);
    }

    /**
     * @return bool
     */
    public function uploadAvatar()
    {
        if (!$this->validate()) {
            return false;
        }

        if ($this->avatarFile !== null) {
            $this->avatarFile->saveAs($this->getAvatarPath());
            $this->processAvatarFile();

            $this->avatar = $this->id . '.' . $this->avatarFile->extension;
        }

        return true;
    }

    /**
     * Returns path for saving avatar image
     * @return string
     */
    public function getAvatarPath()
    {
        if(!$this->avatarFile instanceof UploadedFile) {
            return null;
        }

        $path = Yii::getAlias('@webroot/img/avatar/') . $this->id . '/' . $this->id . '.' . $this->avatarFile->extension;
        FileHelper::createDirectory(dirname($path));

        return $path;
    }

    /**
     * @return string
     */
    public function getAvatarImage()
    {
        return Yii::getAlias('@web/img/avatar/') . $this->id . '/' . $this->avatar;
    }

    /**
     * Resize avatar image
     */
    private function processAvatarFile()
    {
        $size = Yii::$app->params['user.avatar.size'];

        (new SimpleImage($this->getAvatarPath()))
            ->bestFit($size[0], $size[1])
            ->toFile($this->getAvatarPath());
    }
}
