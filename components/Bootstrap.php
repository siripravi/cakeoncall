<?php
namespace app\components;

use yii\base\BootstrapInterface;

class Bootstrap implements BootstrapInterface {
    public function bootstrap($app) {
        $app->params['uploadPath'] = $app->basePath . '/web/files/images';
        $app->params['uploadUrl'] = $app->urlManager->baseUrl . '/files/images/';
    }
}