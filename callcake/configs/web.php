<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';
//$webroot = Yii::getPathOfAlias('webroot');
$config = [
    'id' => 'basic',
    'language' => 'hi',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log','app\components\Bootstrap'],//,'pjaxmodal'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
        '@baker' => '@app/themes/baker'
    ],
    'components' => [
        /*'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'xElL896xtETlBBwfxqmdZBkNvkeBeTgy',
        ],*/
        'gallery' => [
            'class' => 'siripravi\gallery\components\ImgManager',
            'fkName' => 'fk_id',
            'imgTable' => '{{%image}}',
            'thumbVer'  => 'medium',
            'imagePath' => '\files\images\\',
            'versions' => [
                'small' => ['width' => 72, 'height' => 72],
                'medium' => ['width' => 200, 'height' => 150],
                'large' => ['width' => 1920, 'height' => 566],
            ],
        ],
        'request' => [
            'class' => 'app\components\SiteRequest',
            'cookieValidationKey' => 'I-mmzHGFYAx9EnbueCBRo4W4HQBKHA_-',
        ],

        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        /*  'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],*/
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'pjaxmodal' => [
            'class' => app\components\PjaxModal::class
        ],
       /* 'assetManager' => [
            'bundles' => [
                'yii\bootstrap5\BootstrapAsset' => [
                    'class' => \exocet\bootstrap5md\BootstrapAsset::class,              
                ],
                'yii\bootstrap5\BootstrapPluginAsset' => [
                    'class' => \exocet\bootstrap5md\BootstrapPluginAsset::class,

                ],
            ],
        ],*/
        'mailer' => [
            'class' => \yii\symfonymailer\Mailer::class,
            'viewPath' => '@app/mail',
            // send all mails to a file by default.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'storage' => [
            'class' => 'app\modules\storage\filesystem\LocalFileSystem',
            'whitelistExtensions' => ['jpg', 'png'],
            'whitelistMimeTypes' => ['text/plain', 'image/svg+xml'], // as this is the mime type for csv files
        ],
        'composition' => [
            'class' => 'luya\web\Composition',
            //'hidden' => true, // no languages in your url (most case for pages which are not multi lingual)
            'default' => ['langShortCode' => 'en'], // the default language for the composition should match your default language shortCode in the language table.
        ],
        'db' => $db,
        'urlManager' => [
            'class' => 'app\components\SiteUrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '' => 'site/index',
                'product-info/<aID:\d+>/<aTitle>' => 'catalog/default/product-info',
                //'product-info/<title:[0-9a-z\-]+>' => 'catalog/default/product-info',
                'image/<size:[0-9a-z\-]+>/<name>.<extension:[a-z]+>' => 'admin/image/default/index',
                // 'file/<name>.<extension:[a-z]+>' => 'admin/image/default/file',                
                $params['images_dir'] . '/<dir:[a-zA-Z0-9-_\/]+>/<action:(small|medium|large)>/<name:[a-zA-Z0-9-_\.]+>' => 'image/<action>',
                $params['files_dir'] . '/<dir:[a-zA-Z0-9-_\/]+>/<name:[a-zA-Z0-9-_\.]+>' => 'file/open',
            ],
        ],

        /* 'view' => [
            'theme' => [
               'pathMap' => [ 
                  '@app/views' => [ 
                      '@webroot/themes/demo/views',

                   ]
               ],
             ],
            ], */ // here demo is your folder name
        'user' => [
            'class' => 'yii\web\User',
            'identityClass' => app\modules\userauth\models\User::class,
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

    ],
    'modules'  =>  [
        'slider' => [
            'class' => 'siripravi\slideradmin\Module',
        ],
        'userauth' => [
            'class' => 'app\modules\userauth\Module',
        ],
        'catalog' => [
            'class' => 'app\modules\catalog\Module',
        ],
        'gallery' => [
            'class' => 'siripravi\gallery\Module',
        ],

        'nyiixta' => [
            'class' => 'siripravi\nyiixta\Module',
        ],

        'user' => [
            'class' => 'siripravi\userhelper\Module',
            //   'layout' => '@app/themes/cakeBaker/views/layouts/auth',
            'modelMap' => [
                'RegistrationForm' => app\modules\userauth\models\RegistrationForm::class,
                'RecoveryForm' => app\modules\userauth\models\RecoveryForm::class,
                'LoginForm' => app\modules\userauth\models\LoginForm::class,
                'SettingsForm' => app\modules\userauth\models\SettingsForm::class,
                'Profile' => app\modules\userauth\models\Profile::class,
                'User' => app\modules\userauth\models\User::class,

            ],
            'controllerMap' => [
                'registration' => app\modules\userauth\controllers\frontend\RegistrationController::class,
                'settings' => app\modules\userauth\controllers\frontend\SettingsController::class,
                'security' => app\modules\userauth\controllers\frontend\SecurityController::class,
                'recovery' => app\modules\userauth\controllers\frontend\RecoveryController::class
            ],
            'mailer' => [
                'viewPath' => '@app/views/user/mail',
                'sender'                => 'no-reply@myhost.com', // or ['no-reply@myhost.com' => 'Sender name']
                'welcomeSubject'        => 'Welcome subject',
                'confirmationSubject'   => 'Confirmation subject',
                'reconfirmationSubject' => 'Email change subject',
                'recoverySubject'       => 'Recovery subject',
            ],
            // 'as frontend' => app\modules\user\filters\FrontendFilter::class,
            // 'enableFlashMessages' => false
        ],
        'admin' => [
            'class' => 'app\admin\Module',
            'as access' => [
                'class' => 'yii\filters\AccessControl',
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                ],
            ],
            'modules' => [
                'slider' => [
                    'class' => 'siripravi\slideradmin\Module',
                ],
                'nyiixta' => [
                    'class' => 'siripravi\nyiixta\Module',
                ],
                'gallery' => [
                    'class' => 'siripravi\gallery\Module',
                ],
            ],
        ],

    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
    $config['modules']['gallery'] = [
        'class' => 'siripravi\gallery\Module'
    ];
    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
