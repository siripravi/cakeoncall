<?php

namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
   public $sourcePath = '@activeTheme/dist';
   public $css = [
      'css/Ans-font-awesome.min.css',    
      // 'css/main.css',     
      'css/style.pink.css',
      'css/style.css',
      'css/owlcarousel.css',
      'css/custom.css',
      'css/magnific-popup.css'
    
     

   ];

   public $js = [
      //'js/mdb.min.js',
      'js/menu.js',
      'js/skrollr.min.js',
      'js/elevatezoom.js',
      'js/owlcarousel.js',
      'js/magnific-popup.js',
      //  'plugins/js/ecommerce-gallery.min.js',
      'js/main.js',
   ];


   public $jsOptions = [
      // 'async' => true,
   ];

   public $depends = [
      // 'basepodapps\feathericons\FeatherIconsAsset',
      'yii\web\JqueryAsset',
      'yii\bootstrap5\BootstrapAsset',
      //   'exocet\bootstrap5md\MaterialAsset',
      'yii\web\YiiAsset'
   ];
}
