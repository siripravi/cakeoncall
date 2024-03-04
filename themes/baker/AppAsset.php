<?php

namespace app\themes\baker;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{
   // public $sourcePath = '@app/resources/assets/dist';
   public $sourcePath = '@app/themes/baker';
   public $css = [
     
   //   'css/topbar.css',
    
   //  'css/style.css',
   
    // '//unpkg.com/aos@2.3.1/dist/aos.css'

   ];
   public $js = [
      '//unpkg.com/aos@2.3.1/dist/aos.js',
     
    //!  "js/script.js",
      // 'js/all.js'    // YII_ENV_DEV ? : 'js/all.min.js'
   ];

   public $depends = [
       // include mdb assets
    'exocet\bootstrap5md\MaterialAsset',
    
    // include Fontawesome icons (optional)
    'exocet\bootstrap5md\FontawesomeAsset',

    // include material icons (optional)
    'exocet\bootstrap5md\MaterialIconsAsset',
     // 'yii\web\YiiAsset',
    //  'yii\web\JqueryAsset',
    //  'yii\bootstrap5\BootstrapAsset',
      // 'yii\bootstrap\BootstrapPluginAsset',
      // 'yidas\yii\fontawesome\FontawesomeAsset',
      //  'yii\materialicons\AssetBundle'
   ];

   /**
    * @inheritdoc
    */
   public function init()
   {
      parent::init();
   }
}
