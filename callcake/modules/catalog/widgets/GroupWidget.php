<?php

namespace app\modules\catalog\widgets;

use app\modules\catalog\models\Group;
use yii\base\Widget;


/**
 * Portfolio Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0. 
 */
class GroupWidget extends Widget
{
    /**
     * @var string The module where this block belongs to in order to find the view files.
     */
    public $module = 'catalog';

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
    public function icon()
    {
        return 'local_mall'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [
            'menu' => Group::getMenu(),
            'elements' => Group::getElements()
        ];
    }

    /**
     * {@inheritDoc} 
     *
     * @param {{vars.elements}}
     */
    public function admin()
    {
        return '<h5 class="mb-3">Group Block</h5>';
    }

    public function run()
    {
        $data = [
            'menu' => Group::getMenu(),
            'elements' => Group::getElements()
        ];
        return $this->render("groupWidget", [
            'data' => $data
        ]);
    }
}
