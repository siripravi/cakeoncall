<?php

namespace app\modules\userauth\frontend\blocks;

use luya\cms\base\PhpBlock;

use luya\helpers\ArrayHelper;
use siripravi\ecommerce\frontend\blockgroups\BlockCollectionGroup;
use yii\data\ActiveDataProvider;

/**
 * Head Teaser Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0-RC3.
 */
class UserAddressBlock extends PhpBlock
{
    

    /**
     * @var boolean Choose whether block is a layout/container/segmnet/section block or not, Container elements will be optically displayed
     * in a different way for a better user experience. Container block will not display isDirty colorizing.
     */
    //  public $isContainer = true;

    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;
    public $module = 'userauthfrontend';
    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;

    public $product_ids = [28, 4];
    public $link;
    /**
     * @inheritDoc
     */
    public function blockGroup()
    {
        return BlockCollectionGroup::class;
    }

    /**
     * @inheritDoc
     */
    public function name()
    {
        return 'User Addresse';
    }

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'geo'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [
            'placeholders' => [
                ['var' => 'elements', 'label' => 'Elemente', 'type' => self::TYPE_LIST_ARRAY],
            ],
        ];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [           
            'elements' => $this->getUserAddresses()
        ];
    }

    public function getUserAddresses()
    {
        return [];
    }

    /**
     * {@inheritDoc}
     *
     */
    public function admin()
    {
        return '<p>User Addresses</p>';
    }
}
