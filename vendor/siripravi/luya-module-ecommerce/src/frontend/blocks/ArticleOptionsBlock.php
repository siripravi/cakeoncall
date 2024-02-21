<?php

namespace siripravi\ecommerce\frontend\blocks;

use luya\cms\base\PhpBlock;


class ArticleOptionsBlock extends PhpBlock
{
    // use FieldBlockTrait;
    public $module = 'ecommerce';
    public $key = '29';
    public $aId = '8';
    public $data = [];
    public $selection = [];
    public $urlCart = ['/cart/bag/index'];
    public $articleImages = [];

    public function init()
{
    //parent::init();
   // $this->on(self::EVENT_BEFORE_RENDER, [$this, 'beforeRender']);
}

public function beforeRender($event)
{
    if ($this->thisMethodReturnsFalseWhyEver()) {
        Yii::$app->response->redirect('https://luya.io');
        $event->isValid = false;
    }
}
    public function setup()
    {
        //parent::init();
     /*   $articleImages = [];
        $articleRadios = [];
        $features = Article::getFeaturesFormData($this->key);
        foreach ($features as $aid => $feat) {
            $thumbnails = [];
            $images = [];
            $radList = [];
            foreach ($feat as $i => $val) {

                switch ($val['type']) {
                    case 1:
                        $fId = $val['id'];
                        $fName = $val['name'];
                        $fArr = $val['featureValues'][$fId];
                        $rad = ArrayHelper::map($fArr, "id", "name");
                        $rList = [];
                        $fList = [];
                        foreach ($rad as  $k => $v) {
                            $rList[$k . "+" . $fArr[$k]['price']] = $rad[$k];
                            $fList[] = $k;
                        }
                        $radList[$fId]['name'] = $fName;
                        $radList[$fId]['rList'] = $rList;
                        $radList[$fId]['fList'] = $fList;
                }
            }
            $this->selection[$aid]['radioList'] = $radList;
            //
            if (!empty($aid)) {
                $article = Article::findOne(['id' => $aid, 'enabled' => 1]);
                if ($article) {
                    foreach ($article->images as $id => $photo) {
                        $thumbnails[$id] = ['thumb' => $photo->image->applyFilter(MediumCrop::identifier())->source];
                        $src = str_replace("\\", "/", $photo->image->applyFilter(LargeCrop::identifier())->getSourceAbsolute());
                        $images[] = [
                            'src' => $src,
                            // 'src' => 'https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/'.$im[$id].'a.webp', //$src,
                            'content' => Html::img($src, ['data-mdb-img' => $src, 'class' => 'w-100']),
                            'options' => [
                                // 'title' => $photo->alt,
                                'class' => ''
                            ],
                        ];
                    }
                }
            }

            $this->articleImages[$aid]['thumbnails'] = $thumbnails;
            $this->articleImages[$aid]['images'] = $images;
        } */
    }
    public function name()
    {
        return 'Article Option Selection';
    }
    public function config()
    {
        return [
            /*  'vars' => [
                ['var' => 'mytext', 'label' => 'The Text', 'type' => self::TYPE_TEXT],
            ],*/];
    }

    public function admin()
    {
        return '<p>Article Options Selection
        <span class="block__empty-text">Image View</span>       
        <header>
            <h3>
           <span class="block__empty-text">shwo images</span>            
            </h3>
        </header>              
        </p>';
    }

   /* public function placeholderRenderIteration()
    {
        return '<div class="block-wrapper">' . $this->renderFrontend() . '</div>';
    }*/

    public function extraVars()
    {
        return [
          //  'articleOptions' => $this->getArticleOptions(),
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
   /* public function getArticleOptions()
    {
        $model = new OrderForm();  //CartOrder();
        if ($model->load(\Yii::$app->request->post()) && $model->validate()) {
            if ($model->save()) {
                \Yii::$app->session->setFlash('success');
            }
        }

        $articleOptions = [];
        $articleOptions['aid'] = $this->aId;
        $articleOptions['data'] = $this->data;
        $articleOptions['radioList'] = $this->selection;
        $articleOptions['cartOrder'] = $model;
        $articleOptions['key'] = $this->key;
        $articleOptions['articleImages'] = $this->articleImages[$this->aId];
        $articleOptions['selection'] = $this->selection[$this->aId];
        
        return $articleOptions;
        return $this->render("orderForm", [
            'cartOrder' => $model, 'data' => $this->data, 'radioList' => $this->selection, 'aid' => $this->aId, 'key' => $this->key,

            'articleImages' => $this->articleImages[$this->aId], 'selection' => $this->selection[$this->aId]
        ]);
    }*/
}
