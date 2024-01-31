<?php

namespace app\modules\userauth\models;

use luya\base\DynamicModel;
use app\modules\shopshopcart\models\Cart;
use yii\helpers\ArrayHelper;
use app\modules\userauth\models\UserAddress;
use Yii;

/**
 * Form Submission Model
 *
 * @author Basil Suter <git@nadar.io>
 * @since 1.0.0
 */
class AddressModel extends \luya\forms\Model
{
    /**
     * @var string The uniue form id
     */
    public $formId;
    public $Aid;
    public $Name;
    public $Address1;
    public $Address2;
    public $Mobile1;
    public $Mobile2;
    public $Pincode;
    public $keyField = "Aid";
    public $forNew = true;
    public $Addresses = [];

    public $isPjax = false;
    public $pjaxOptions = ['id'=> 'cart-address'];
    public $activeFormClassOptions = ['id' => 'address-form'];
    public $redirectUrl = "/shopping-cart";
    /**
     * @var array An array where the key is the attribute and value the formatter option, like
     * ```php
     * 'firstname' => 'ntext',
     * ```
     */
    public $formatters = [];

    const EVENT_AFTER_SAVE = 'afterSave';
    const EVENT_AFTER_VALID = 'afterValid';

    const EVENT_BEFORE_LOAD = 'beforeLoad';
    public function init()
    {
        parent::init();
        // if ($this->isNewRecord) {
        $this->Addresses = $this->getAddresses();
        // }
        //bind after confirmation event
        /*   $this->on(
            self::EVENT_AFTER_SAVE,
            [
                new \app\modules\userauth\AfterSaveAddressHandler(),
                'handleAfterSave',
            ]
        ); */
        $this->on(
            self::EVENT_AFTER_VALID,
            [
                new \app\modules\userauth\AfterValidateAddressHandler(),
                'handleAfterValidate',
            ]
        );

        $this->on(
            self::EVENT_BEFORE_LOAD,
            [
                new \app\modules\userauth\BeforeLoadAddressHandler(),
                'handleBeforeLoad',
            ]
        );
    }


    public function rules()
    {
        return array_merge(
            parent::rules(),
            [
                [['Aid', 'Addresses'], 'safe']
            ]
        );
    }
    /**
     * Format a given attribute
     *
     * @param string $attribute
     * @param string $value
     * @return string
     */
    public function formatAttributeValue($attribute, $value)
    {
        $value = is_array($value) ? implode(", ", $value) : $value;

        if (isset($this->formatters[$attribute]) && !empty($this->formatters[$attribute])) {
            return Yii::$app->formatter->format($value, $this->formatters[$attribute]);
        }
        return Yii::$app->formatter->autoFormat($value);
    }

    private $_invisibleAttributes = [];

    /**
     * An invisible attribute will not be shown in the confirm page
     * nor the value will be stored when saving the form data.
     *
     * The invisible attributes won't be validated when switching from "confirm"
     * step to "save" step, the invisble attributes will only validate from "form input"
     * to "confirm" step. The main reason for this and also for introduction of invisible
     * attributes are captcha codes. They need to be validated once, afterwards they are
     * not valid anymore and should therfore not be validated in a second process.
     *
     * @param string $attributeName
     */
    public function invisibleAttribute($attributeName)
    {
        $this->_invisibleAttributes[] = $attributeName;
    }

    /**
     * Whether the given attribute is in the list of invisible attributes.
     *
     * @param string $attributeName
     * @return boolean
     */
    public function isAttributeInvisible($attributeName)
    {
        return in_array($attributeName, $this->_invisibleAttributes);
    }

    /**
     * Returns all attribute names without the attributes tagged as invisible
     *
     * @return array
     */
    public function getAttributesWithoutInvisible()
    {
        $result = [];
        foreach ($this->attributes() as $attributeName) {
            if (!$this->isAttributeInvisible($attributeName)) {
                $result[] = $attributeName;
            }
        }
        return $result;
    }

   /* public static function getAfterSaveEvent(\app\modules\userauth\models\AddressModel $model)
    {
        return \Yii::createObject(['class' => \app\modules\userauth\AfterSaveAddressEvent::class, 'model' => $model]);
    }*/


    public static function getAfterValidateEvent(\app\modules\userauth\models\AddressModel $model)
    {
        return \Yii::createObject(['class' => \app\modules\userauth\AfterValidateAddressEvent::class, 'model' => $model]);
    }

    public static function getBeforeLoadAddressEvent(\app\modules\userauth\models\AddressModel $model)
    {
        return \Yii::createObject(['class' => \app\modules\userauth\BeforeLoadAddressEvent::class, 'model' => $model]);
    }

    public static function renderAddress($address)
    {
        return '<p><b>' . $address->contact_person . '</b></p>' . '<p>' . $address->zipcode . ' ' . $address->country . ', ' . $address->region . ', ' . $address->city . '</p>' .
            '<p><em>' . $address->street . ', ' . $address->house . ' - ' . $address->apartment . '</em></p>';
    }

    public function setAddresses($addresses)
    {
        $this->Addresses = $addresses;
    }
    public function getAddresses()
    {
        $this->Addresses = [];
        if (\Yii::$app->user->identity) {
            $addre = \Yii::$app->user->identity->profile->userAddresses;
            foreach ($addre as $adrs) {
                $this->Addresses[$adrs['id']] = AddressModel::renderAddress($adrs);
            }
        }
        return $this->Addresses;
    }

    public function loadPostData($data = [])
    {
        $attrs = [];
       // $post = $data['AddressModel'];
        $aid = $data['Aid'];
       
        if ($aid > 0) {
            $attrs['Aid'] = $aid;
            $address = UserAddress::findOne($aid);
            if(!empty($address)){
                    $attrs['Name'] = !empty($data['Name']) ? $data['Name']:$address->contact_person;
                    $attrs['Mobile1'] = !empty($data['Mobile1']) ? $data['Mobile1']:$address->contact_mobile1;
                    $attrs['Mobile2'] = !empty($data['Mobile2']) ? $data['Mobile2']:$address->contact_mobile2;
                    $attrs['Address1'] = !empty($data['Address1']) ? $data['Address1'] :$address->house;
                    $attrs['Address2'] = !empty($data['Address2']) ? $data['Address2'] :$address->apartment;                   
                    $attrs['Pincode'] = !empty($data['Pincode']) ? $data['Pincode'] :$address->zipcode;                    
                    $attrs['Addresses'][$aid] = self::renderAddress($address);
               
                $this->setAttributes($attrs, false);
           }
        }
        //  $model->country = 'India';
        //  $model->city = 'Hyderabad';
        //   $model->region = 'Telangana';
        //   $model->postoffice = '';          
      
    }
}
