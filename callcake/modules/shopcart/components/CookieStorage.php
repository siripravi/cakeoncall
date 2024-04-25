<?php
/**
 * @link https://www.github.com/hscstudio/yii2-cart
 * @copyright Copyright (c) 2016 HafidMukhlasin.com
 * @license http://www.yiiframework.com/license/
 */
 
namespace app\modules\shopcart\components;

/**
 * CookieStorage is extended from Storage Class
 * 
 * It's specialty for handling read and write cart data into cookie
 *
 * Usage:
 * Configuration in block component look like this
 *		'cart' => [
 *			'class' => 'app\modules\shopcart\cart\Cart',
 *			'storage' => [
 *				'class' => 'app\modules\shopcart\cart\CookieStorage',
 *			]
 *		],
 *
 * @author Hafid Mukhlasin <hafidmukhlasin@gmail.com>
 * @since 1.0
 *
*/

class CookieStorage extends Storage
{
	public function read(Cart $cart)
	{
		$cookies = \Yii::$app->request->cookies;
		if (isset($cookies[$cart->id]))
			$this->unserialize($cookies[$cart->id],$cart);
	}
	
	public function write(Cart $cart)
	{
		$cookies = \Yii::$app->response->cookies;
		$cookies->add(new \yii\web\Cookie([    
			'name' => $cart->id,    
			'value' => $this->serialize($cart),
		]));		
			
	}
	
	public function lock($drop, Cart $cart)
	{
		// not implemented, only for db
	}
}