<?php
// composer autoload include
require(__DIR__ . '/../callcake/vendor/autoload.php');

// use the luya boot wrapping class
$boot = new \luya\Boot();

$boot->setBaseYiiFile(__DIR__ . '/../callcake/vendor/yiisoft/yii2/Yii.php');
$boot->run();
