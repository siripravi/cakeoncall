<?php
/**
 * @link https://www.github.com/hscstudio/yii2-cart
 * @copyright Copyright (c) 2016 HafidMukhlasin.com
 * @license http://www.yiiframework.com/license/
 */
 
namespace app\modules\shopcart\components;

/**
 * SessionStorage is extended from Storage Class
 * 
 * It's specialty for handling read and write cart data into session
 *
 * Usage:
 * Configuration in block component look like this
 *		'cart' => [
 *			'class' => 'app\modules\shopcart\cart\Cart',
 *			'storage' => [
 *				'class' => 'app\modules\shopcart\cart\SessionStorage',
 *			]
 *		],
 *
 * @author Hafid Mukhlasin <hafidmukhlasin@gmail.com>
 * @since 1.0
 *
*/

class SessionStorage extends Storage
{
	public function read(Cart $cart)
	{
		$session = \Yii::$app->session;
		if (isset($session[$cart->id]))
			$this->unserialize($session[$cart->id],$cart);
	}
	
	public function write(Cart $cart)
	{
		$session = \Yii::$app->session;
		$session[$cart->id] = $this->serialize($cart);
	}
	
	public function lock($drop, Cart $cart)
	{
		// not implemented, only for db
	}
}