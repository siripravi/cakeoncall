<?php

namespace siripravi\ecommerce\frontend\blocks;

use siripravi\ecommerce\models\Article;
use luya\cms\base\PhpBlock;
use luya\admin\filters\MediumCrop;
use luya\admin\filters\LargeCrop;
use luya\helpers\ArrayHelper;
use yii\helpers\Html;

class ImageSliderBlock extends PhpBlock
{
   // use FieldBlockTrait;

    public $module = 'ecommerce';

    public function name()
    {
        return 'Image Slider';
    }
    public function config()
    {
        return [
          /*  'vars' => [
                ['var' => 'mytext', 'label' => 'The Text', 'type' => self::TYPE_TEXT],
            ],*/
        ];
    }

    public function admin()
    {
        return '<p> Image Carousel
        <span class="block__empty-text">Image View</span>       
        <header>
            <h3>
           <span class="block__empty-text">shwo images</span>            
            </h3>
        </header>              
        </p>';
    }

    public function extraVars()
    {
        return [
            'articleImages' => $this->getArticleImages(),
            'ajaxLink' => $this->createAjaxLink('HelloWorld', ['time' => time()]),
        ];
    }
    /* public function getArticle()
    {
        $session = \Yii::$app->session;
        $id = \Yii::$app->request->get('id') ?  \Yii::$app->request->get('id') : $session['__params']['id'];
        return Article::findOne(['id' => $id, 'enabled' => 1]);
    }*/
    public function callbackHelloWorld($time)
    {
        return 'hallo world ' . $time;
    }
    public function getArticleImages()
    {
        $params = \Yii::$app->request->queryParams;
        $id = 8;//\Yii::$app->request->get('id');
        // $session = \Yii::$app->session;
        $articleImages = [];
        $thumbnails = [];
        $images = [];
        //?  \Yii::$app->request->get('id') : $session['__params']['id'];  //$this->varValue('articleId');
       
        if (!empty($id)) {
            $model = Article::findOne(['id' => $id, 'enabled' => 1]);
            if ($model) {
                foreach ($model->images as $id => $photo) {
                    $thumbnails[$id] = ['thumb' => $photo->image->applyFilter(MediumCrop::identifier())->source];
                    $src = str_replace("\\","/",$photo->image->applyFilter(LargeCrop::identifier())->getSourceAbsolute());
                    $images[] = [
                        'src' => $src,
                       // 'src' => 'https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/'.$im[$id].'a.webp', //$src,
                        'content' => Html::a(
                            Html::img($src, ['data-mdb-img' => $src,'class'=>'w-100']),
                            $src,
                            ["class"=>"thumbnail popup-image image-active" ,"data-image"=> $src,
                             "data-zoom-image"=> $src, "title"=>"Remington Iron Round Chandelier"]),
                        'options' => [
                            // 'title' => $photo->alt,
                            'class' => ''
                        ],
                    ];
                }
            }
        } 
      
        $articleImages['thumbnails'] = $thumbnails;
        $articleImages['images'] = $images;
        return $articleImages;
    }
}
