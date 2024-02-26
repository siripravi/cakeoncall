<?php
namespace app\modules\catalog\components;
class MyGlobalClass extends \yii\base\Component{
    public function init() {
        echo "Hi";
        parent::init();
    }
}