<?php

namespace app\modules\catalog\widgets;

use yii\base\Widget;

class ArticleOptionsWidget extends Widget
{
    // use FieldBlockTrait;
    private array $_cfgValues = [];
    public $module = 'catalog';
    public $key = '29';
    public $aId = '8';
    public $data = [];
    public $selection = [];
    public $urlCart = ['/cart/bag/index'];
    public $articleImages = [];

    /**
     * @inheritdoc
     */
    public function setCfgValues(array $values)
    {
        foreach ($values as $key => $value) {
            $this->_cfgValues[$key] = $value;
        }
    }

    /**
     *
     * @return array
     */
    public function getCfgValues()
    {
        return $this->_cfgValues;
    }

    /**
     * Get cfg value.
     *
     * If the key does not exist in the array, is an empty string or null the default value will be returned.
     *
     * @param string $key The name of the key you want to retrieve
     * @param mixed  $default A default value that will be returned if the key isn't found or empty.
     * @return mixed
     */
    public function getCfgValue($key, mixed $default = false)
    {
        return (isset($this->_cfgValues[$key]) && $this->_cfgValues[$key] != '') ? $this->_cfgValues[$key] : $default;
    }

    public function show()
    {
        return $this->render('articleOptionsWidget');
    }
}
