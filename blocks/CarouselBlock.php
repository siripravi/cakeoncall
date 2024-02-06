<?php

namespace app\blocks;

use luya\cms\helpers\BlockHelper;
use luya\cms\base\PhpBlock;
use luya\helpers\Html;
use luya\bootstrap4\Module;
use luya\cms\frontend\blockgroups\ProjectGroup;


/**
 * Carousel Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0-RC3.
 */
class CarouselBlock extends PhpBlock
{

    /**
     * @var boolean Choose whether block is a layout/container/segmnet/section block or not, Container elements will be optically displayed
     * in a different way for a better user experience. Container block will not display isDirty colorizing.
     */
    public $isContainer = true;

    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;

    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;

    /**
     * @inheritDoc
     */
    public function blockGroup()
    {
        return ProjectGroup::class;
    }

    /**
     * @inheritDoc
     */
    public function name()
    {
        return 'Carousel Block';
    }

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'cake'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [
            'vars' => [
                ['var' => 'images', 'label' => Module::t('block_carousel.items'), 'type' => self::TYPE_MULTIPLE_INPUTS, 'options' => [
                    ['var' => 'title', 'type' => self::TYPE_TEXT, 'label' => Module::t('block_carousel.title')],
                    ['var' => 'caption', 'type' => self::TYPE_TEXTAREA, 'label' => Module::t('block_carousel.caption')],
                    ['var' => 'image', 'type' => self::TYPE_IMAGEUPLOAD, 'label' => Module::t('block_carousel.image')],
                    ['var' => 'link', 'type' => self::TYPE_LINK, 'label' => Module::t('block_carousel.image_link')]
                ]],
            ],
            'cfgs' => [
                ['var' => 'blockCssClass', 'type' => self::TYPE_TEXT, 'label' => Module::t('block_carousel.config_block_css_class')],
                ['var' => 'captionCssClass', 'type' => self::TYPE_TEXT, 'label' => Module::t('block_carousel.config_caption_css_class')],
                ['var' => 'controls', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_controls'), 'initvalue' => 1],
                ['var' => 'indicators', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_indicators'), 'initvalue' => 1],
                ['var' => 'crossfade', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_crossfade'), 'initvalue' => 1],
                ['var' => 'interval', 'type' => self::TYPE_NUMBER, 'label' => Module::t('block_carousel.config_interval')],
                ['var' => 'keyboard', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_keyboard'), 'initvalue' => 1],
                ['var' => 'pause', 'type' => self::TYPE_TEXT, 'label' => Module::t('block_carousel.config_pause')],
                ['var' => 'ride', 'type' => self::TYPE_TEXT, 'label' => Module::t('block_carousel.config_ride')],
                ['var' => 'wrap', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_wrap'), 'initvalue' => 0],
                ['var' => 'row', 'type' => self::TYPE_CHECKBOX, 'label' => Module::t('block_carousel.config_row'), 'initvalue' => 0],
                ['var' => 'lazyload', 'label' => Module::t('block_carousel.lazyload'), 'type' => self::TYPE_CHECKBOX]
            ]
        ];
    }
    public function getFieldHelp()
    {
        return [
            'blockCssClass' => 'Adds a class to the root contianer of the carousel.',
            'captionCssClass' => 'Adds a class to the carousel item caption element.',
            'controls' => 'Adds the previous and next controls arrows on the left and right side of the image.',
            'indicators' => 'Indicators are additional controls which displays all slides with an indicator which is clickable. The indicator is placed in the middle of the image.',
            'crossfade' => 'Add crossfase to your carousel to animate slides with a fade transition instead of a slide.',
            'interval' => 'The amount of time to delay between automatically cycling an item. If false, carousel will not automatically cycle.',
            'keyboard' => 'Whether the carousel should react to keyboard events.',
            'pause' => 'If set to "hover", pauses the cycling of the carousel on mouseenter and resumes the cycling of the carousel on mouseleave. If set to false, hovering over the carousel won\'t pause it. On touch-enabled devices, when set to "hover", cycling will pause on touchend (once the user finished interacting with the carousel) for two intervals, before automatically resuming. Note that this is in addition to the above mouse behavior.',
            'ride' => 'Autoplays the carousel after the user manually cycles the first item. If "carousel", autoplays the carousel on load.',
            'wrap' => 'Whether the carousel should cycle continuously or have hard stops.',
            "row" => 'Adds the row class to the carousel container.',
        ];
    }
    /**
     * {@inheritdoc}
     */
    public function extraVars()
    {
        return [
            'images' => $this->images(),
            //   'id' => 'carousel_'.md5($this->getEnvOption('id')),
            //  'jsConfig' => $this->getJsConfig()
        ];
    }
    /**
     * {@inheritDoc}
     *
     */
    public function admin()
    {
        return '
        {% if extras.images %}
            {% set hasImage = false %}
            {% for image in extras.images %}
                {% if image.image.source %}
                    {% set hasImage = true %}
                {% endif %}
            {% endfor %}
            {% if hasImage %}
                <div class="row">
                    {% for image in extras.images %}
                        {% if image.image.source %}
                            <div class="col">
                                  <img src="{{image.image.source}}" class="img-fluid" />
                            </div>
                        {% endif %}
                    {% endfor %}
                </div>
            {% endif %}
        {% endif %}';
    }

    /**
     * Get all carousel images (slides)
     *
     * @return array images
     */
    public function images()
    {
        $images = [];
        foreach ($this->getVarValue('images', []) as $item) {
            $image = BlockHelper::imageUpload($item['image'], false, true);
            if ($image) {
                $images[] = [
                    'image' => $image,
                    'title' => isset($item['title']) ? $item['title'] : null,
                    //     'caption' => isset($item['caption']) ? $item['caption'] : null,
                    'link' => isset($item['link'])  ? BlockHelper::linkObject($item['link']) : null,
                    'content' => '<div class="home_slider_container">
                                    <div class="text-center p-0"><div class="">' .
                        Html::img($image->source, ['class' => 'd-block w-100'])
                        // $image->render($sld->filename, "large", ["class" => "slider-img"]) .
                        . '</div>',
                    'caption' => '<div class="slide-text">' .
                        Html::tag('h1', $item['caption'], ['class' => 'h1 text-light']) .
                        '<h3 class="h2"></h3><p>' . $item['title'] . '</p></div></div></div>',
                    'captionOptions' => [
                        'class' => ['mb-0 d-flex align-items-center']
                    ]
                ];
            }
        }
        return $images;
    }

    /*  public function getSlides(){
        $slides = $this->placeholderValue('elements');
        $images = [];
        foreach ($slides as $sld) {
            if (($image = SliderImage::find()->where(['id' => $sld->id])->multilingual()->one()) !== null) {
                $sitems[] = [
                    'content' => '<div class="home_slider_container">
                             <div class="text-center p-0"><div class="">' .
                        $image->render($sld->filename, "large", ["class" => "slider-img"]) .
                        '</div>',
                    'caption' => '<div class="slide-text">' .
                        Html::tag('h1', $image->title, ['class' => 'h1 text-light']) .
                        '<h3 class="h2"></h3><p>' . $image->html . '</p></div></div></div>',
                    'captionOptions' => ['class' => ['mb-0 d-flex align-items-center']],
        
                ];
            }
        }
    }*/
}
