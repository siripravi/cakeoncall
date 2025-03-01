<?php

namespace app\modules\shopcart\models;

use Yii;
use yii\base\Model;

/**
 * Class Cart
 * @package app\models
 */
class Cart extends Model
{
    public $address = [];
    /**
     * @param $data
     * @return bool
     */
    public static function setCart($data)
    {
        Yii::$app->response->cookies->add(new \yii\web\Cookie([
            'name' => 'cart',
            'value' => serialize($data),
            'expire' => time() + 3600 * 24 * 7,
        ]));

        return true;
    }

    public static function setAddress($address)
    {
        $cart = Yii::$app->request->cookies->getValue('cart');
        if (empty($cart)) {
            return [];
        } else {
            unserialize($cart)['address'] = $address;
            self::setCart($cart);
        }
    }


    /**
     * @return array|mixed
     */
    public static function getCart()
    {
        $cart = Yii::$app->request->cookies->getValue('cart');

        if (empty($cart)) {
            return [];
        } else {
            return unserialize($cart);
        }
    }

    /**
     * @return bool
     */
    public static function clearCart()
    {
        Yii::$app->response->cookies->remove('cart');

        return true;
    }
}
