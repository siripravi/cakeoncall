<?php

namespace app\modules\userauth;

use app\modules\userauth\models\UserAddress;

class BeforeLoadAddressHandler
{
    /**
     * Handles the after login event process to send emails
     *
     * @param FormEvent $event Event object form
     *
     * @return null
     */
    public static function handleBeforeLoad(\app\modules\userauth\BeforeLoadAddressEvent $event)
    {

        $model = $event->model;
        if($model->forNew){
             $model->attributes = [];
            // $model->Name = "CHandra";
           // \Yii::$app->forms->cleanup();
          //   \Yii::$app->session->set(\Yii::$app->forms->sessionFormDataName, $model->attributes);
             \Yii::$app->session->remove(\Yii::$app->forms->sessionFormDataName);
        }
        else{
            \Yii::debug('Sel Addr:#',$model->Aid);
           //   $model->Name = $model->Aid;
         //     \Yii::$app->session->set(\Yii::$app->forms->sessionFormDataName, $model->attributes);
       
     //   print_r($model->Addresses); die;
      // echo $model->Aid; die;
        // return true;
    }
    }

    public function load(&$model, $data)
    {
        //  $model->id = $data['Aid'];
        $model->contact_person = $data['Name'];
        $model->contact_mobile1 = $data['Mobile1'];
        $model->contact_mobile2 = $data['Mobile2'];
        $model->house = $data['Address1'];
        $model->apartment = $data['Address2'];
        $model->zipcode = $data['Pincode'];
        $model->country = 'India';
        $model->city = 'Hyderabad';
        $model->region = 'Telangana';
        $model->postoffice = '';
        return true;
    }
}
