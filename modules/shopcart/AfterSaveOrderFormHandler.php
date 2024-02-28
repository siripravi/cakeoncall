<?php

namespace siripravi\shopcart;

use app\modules\shopcart\models\Cart;
use app\modules\shopcart\models\CartOrder;
use yii\helpers\ArrayHelper;
use Yii;

class AfterSaveOrderFormHandler
{
  /**
   * Handles the after login event process to send emails
   *
   * @param FormEvent $event Event object form
   *
   * @return null
   */
  public static function handleAfterSave(\app\modules\shopcart\AfterSaveOrderFormEvent $event)
  {
    $model = $event->model;
    $config['class'] = 'app\modules\shopcart\models\CartOrder';
    $config['delDate'] = $model->Delivery;
    $config['name'] = $model->Name;
    $config['id'] = $model->Pid;
    $config['price'] =  $model->getPrice();
    $config['quantity'] = $model->getQuantity();
    $config['image'] = $model->Image;
    $config['message'] = $model->Message;
    $config['featureText'] = $model->formatFText();
    $cartOrder = Yii::createObject($config);
    /* $cartOrder->id = $model->Pid;
        $cartOrder->name = $model->Name;
        $cartOrder->price = $model->getPrice();
        $cartOrder->quantity = $model->getQuantity();
        $cartOrder->message = $model->Message;
        $cartOrder->delDate = $model->Delivery;
        $cartOrder->image = $model->Image;*/
    //$cartOrder->featureText = $model->formatFText();      
    //Cart::setCart($cartOrder->attributes);     
    \Yii::$app->cart->create($cartOrder, $model->Quantity);
    // return true;
  }
}
