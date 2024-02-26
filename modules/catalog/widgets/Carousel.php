<?php

namespace siripravi\ecommerce\frontend\widgets;

use Yii;
use yii\bootstrap5\Html;
use yii\bootstrap5\Widget;
use yii\helpers\ArrayHelper;
use siripravi\ecommerce\frontend\assets\PhotoswipeAsset;

class Carousel extends \yii\bootstrap5\Carousel
{
    public $swpitems = [];
    public $swpoptions = ['class' => 'gallery'];
    public $swpselector = '.gallery-item';
    public $swpitemOptions = [];
    public $swplinkOptions = ['class' => 'gallery-item'];
    public $swpclientOptions = [];
    protected $swpclientItems;
    public $thumbnails = [];
    /*$model = Slider ::find()-> one();
		$slides = $model->slides;
		foreach($slides as $sld){
			if (($image = SliderImage::find()->where(['id' => $sld->id])->multilingual()->one()) !== null) {
			$this->items[] = [
        'content' => '<div class="home_slider_container">
		                <div class="row p-0"><div class="mx-auto">'.
		       $image->render($sld->filename,"large",["class" => "slider-img"]).	
                        '</div>',
        'caption' => '<div class="col-12">'.
		                Html::tag('h1', $image->title,['class'=>'h1 text-success']).
                       '<h3 class="h2"></h3><p>'.$image->html.'</p></div></div></div>',		
		'captionOptions' => ['class' => ['col-lg-12 mb-0 d-flex align-items-center']],
		
    ];  */

    public function init()
    {
        parent::init();
        /* Yii::$app->assetManager->bundles['yii\bootstrap5\BootstrapAsset'] = [
            'basePath'   => '@web',
           // 'sourcePath' => [],
           // 'css'        => ['css/styles.css'],
            'js'  => []
        ];*/
        Html::addCssClass($this->options, ['data-bs-ride' => 'carousel']);
        if ($this->crossfade) {
            Html::addCssClass($this->options, ['animation' => 'carousel-fade']);
        }
    }

    /**
     * {@inheritdoc}
     * @throws InvalidConfigException
     */
 /*   public function run(): string
    {
        $this->registerPlugin('carousel');
        $view = $this->getView();
        PhotoswipeAsset::register($view);
        $html = $this->render('pswp');
        $html .= $this->renderSwpItems();
        $items = json_encode($this->swpclientItems);
        $clientOptions = json_encode($this->swpclientOptions);
        $js = <<<JS
        var pswpElement = document.querySelectorAll('.pswp')[0];        
        $(document).on('click', '{$this->swpselector}', function(e){
            e.preventDefault();
            var options = { index: $(this).index(), bgOpacity: 0.7, showHideOpacity: true };  
            $.merge(options, {$clientOptions});
            var gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, {$items}, options);
            gallery.init();    
        });
        JS;
        $view->registerJs($js);
        echo $html;


        return implode("\n", [
            Html::beginTag('div', $this->options),
            $this->renderIndicators(),
            $this->renderItems(),
            $this->renderControls(),
            Html::endTag('div'),
        ]) . "\n";
    }
*/
     
    /**
     * Renders carousel indicators.
     * @return string the rendering result
     */
    public function renderIndicators(): string
    {
        if ($this->showIndicators === false) {
            return '';
        }
        $indicators = [];
        for ($i = 0, $count = count($this->items); $i < $count; $i++) {
            $options = [
                'data' => [
                    'bs-target' => '#' . $this->options['id'],
                    'bs-slide-to' => $i
                ],
                'type' => 'button',
                'thumb' => $this->thumbnails[$i]['thumb']
            ];
            if ($i === 0) {
                Html::addCssClass($options, ['activate' => 'active']);
                $options['aria']['current'] = 'true';
            }
            //  $indicators[] = Html::tag('button', '', $options);

            $indicators[] = Html::tag('li', Html::img($options['thumb']), $options);
        }
        return Html::tag('ol', implode("\n", $indicators), ['class' => ['carousel-indicators']]);
    }

    protected function renderSwpItems()
    {
        $items = '';
        foreach ($this->swpitems as $item) {
            $items .= $this->renderSwpItem($item);
        }
        return Html::tag('div', $items, $this->options);
    }
    protected function renderSwpItem($item)
    {
        $title = !empty($item['caption']) ? $item['caption'] : null;
        $this->swpclientItems[] = [
            'src' => $item['image'],
            'w' => $item['width'],
            'h' => $item['height'],
            'title' => $title,
        ];
        $itemOptions = ArrayHelper::merge([
            'alt' => $title,
        ], $this->swpitemOptions);
        $linkOptions = ArrayHelper::merge([
            'title' => $title,
        ], $this->swplinkOptions);
        $img = Html::img($item['thumb'], $itemOptions);
        return Html::a($img, $item['image'], $linkOptions);
    }
}
