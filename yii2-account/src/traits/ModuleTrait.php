<?php


namespace Chandra\Yii2Account\traits;

use Chandra\Yii2Account\Module;

/**
 * Trait ModuleTrait
 * @property-read Module $module
 * @package Chandra\Yii2Account\traits
 */
trait ModuleTrait
{
    /**
     * @return Module
     */
    public function getModule()
    {
        return \Yii::$app->getModule('user');
    }
}
