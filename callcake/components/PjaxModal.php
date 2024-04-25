<?php

namespace app\components;

class PjaxModal extends \yii\base\Component implements \yii\base\BootstrapInterface
{
    public function bootstrap($app)
    {
        if (\Yii::$app->request->isPjax) {
            Event::on(Controller::className(), Controller::EVENT_BEFORE_ACTION, function ($event) {
                \Yii::$app->pjaxmodal->layoutFile = \Yii::$app->controller->findLayoutFile();
             //   echo \Yii::$app->pjaxmodal->layoutFile; die;
                \Yii::$app->controller->layout = 'pjax';
                \Yii::$app->controller->layoutPath = __DIR__;
            });
        }
    }
}
