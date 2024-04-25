<?php

use luya\Config;

$config = new Config('myproject', dirname(__DIR__), [
    'siteTitle' => 'My Project',
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'components' => [
        'user' => [
            'class' => 'yii\web\User',
            'identityClass' => app\models\User::class,
            'enableAutoLogin' => true,
             'enableSession' => true,
            'identityCookie' => [
                'name'     => '_frontendIdentity',
                'path'     => '/',
                'httpOnly' => true,
            ],
            'on afterLogin' => function () {
                //  if (Yii::$app->cart->saveToDataBase) Yii::$app->cart->transportSessionDataToDB();
            },
            'on afterConfirm' => function () {
                //  if (Yii::$app->cart->saveToDataBase) Yii::$app->cart->transportSessionDataToDB();
            },
        ],
        'mail' => [
            'password' => '*********',
        ],
        /*
        'db' => [
            'class' => 'yii\db\Connection',
            'charset' => 'utf8',
        ],
        */
        'composition' => [
            'default' => [
                'langShortCode' => 'en'
            ],
            'hidden' => true,
        ],
        'urlManager' => [
            'rules' => [
                'home' => 'site/default/index',
              //  'contact' => 'site/default/contact',
            ],
        ],
        'forms' => [
            'class' => 'app\components\Forms'
        ],
    ],
    'modules' => [
        /*'admin' => [
            'class' => 'luya\admin\Module',
            'secureLogin' => false, // when enabling secure login, the mail component must be proper configured otherwise the auth token mail will not send.
            'strongPasswordPolicy' => false, // If enabled, the admin user passwords require strength input with special chars, lower, upper, digits and numbers
            'interfaceLanguage' => 'en', // Admin interface default language. Currently supported: en, de, ru, es, fr, ua, it, el, vi, pt, fa
            'autoBootstrapQueue' => true, // Enables the fake cronjob by default, read more about queue/scheduler: https://luya.io/guide/app-queue
        ],*/
       // 'cms' => 'luya\cms\frontend\Module',
     //   'cmsadmin' => 'luya\cms\admin\Module',
       // 'userauthfrontend' => '\siripravi\userhelper\frontend\Module',
      //  'userauthadmin' => '\siripravi\userhelper\admin\Module',
      //  'ecommerce' => 'siripravi\ecommerce\frontend\Module',
     //   'ecommerceadmin' => 'siripravi\ecommerce\admin\Module',
     //   'galleryadmin' => 'luya\gallery\admin\Module',
      //  'authhelper'  => '\siripravi\userhelper\Module',
    //    'shopcartadmin' => 'siripravi\shopcart\admin\Module',
        'api' => [
            'class' => 'luya\headless\cms\api\Module',
        ],
      /*  'forms' => [
            'class' => 'luya\forms\Module',
            // 'useAppViewPath' => true,
            //'viewMap' => ['block/*' =>'@app/views/blocks/']

        ],*/
        'user' => [
            'class' => 'siripravi\userhelper\Module',
            //   'layout' => '@app/themes/cakeBaker/views/layouts/auth',
            'modelMap' => [
                'RegistrationForm' => \siripravi\userhelper\models\RegistrationForm::class,
                'RecoveryForm' => \siripravi\userhelper\models\RecoveryForm::class,
                'LoginForm' => \siripravi\userhelper\models\LoginForm::class,
                'SettingsForm' => \siripravi\userhelper\models\SettingsForm::class,
                'Profile' => \siripravi\userhelper\models\Profile::class,
                'User' => \siripravi\userhelper\models\User::class,

            ],
            'controllerMap' => [
                'registration' => \siripravi\userhelper\controllers\RegistrationController::class,
                'settings' => \siripravi\userhelper\controllers\SettingsController::class,
                'security' => \siripravi\userhelper\controllers\SecurityController::class,
                'recovery' => \siripravi\userhelper\controllers\RecoveryController::class
            ],
        ]
    ]
]);

$config->callback(function () {
    define('YII_DEBUG', true);
    define('YII_ENV', 'local');
})->env(Config::ENV_LOCAL);


// docker mysql config
$config->component('db', [
    'class' => 'yii\db\Connection',
    'charset' => 'utf8',
    'dsn' => 'mysql:host=localhost;dbname=luyashopadmin',
    'username' => 'root',
    'password' => '',
])->env(Config::ENV_LOCAL);


$config->component('db', [
    'dsn' => 'mysql:host=localhost;dbname=luyashopadmin',
    'username' => 'root',
    'password' => '',
    'enableSchemaCache' => true,
    'schemaCacheDuration' => 0,
])->env(Config::ENV_PROD);


$config->component('cache', [
    'class' => 'yii\caching\FileCache'
])->env(Config::ENV_PROD);

// debug and gii on local env
$config->module('debug', [
    'class' => 'yii\debug\Module',
    'allowedIPs' => ['*'],
])->env(Config::ENV_LOCAL);
$config->module('gii', [
    'class' => 'yii\gii\Module',
    'allowedIPs' => ['*'],
])->env(Config::ENV_LOCAL);

$config->bootstrap(['debug', 'gii'])->env(Config::ENV_LOCAL);

return $config;
