<?php

namespace app\blocks;
use yii\widgets\Menu;
use siripravi\ecommerce\models\Group;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\helpers\Html;
use yii\helpers\Url;
use luya\cms\base\PhpBlock;
use yii;
use luya\cms\frontend\blockgroups\ProjectGroup;


/**
 * Portfolio Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0. 
 */
class NavbarBlock extends PhpBlock
{
    /**
     * @var string The module where this block belongs to in order to find the view files.
     */

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
        return 'Navbar';
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
        return [];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [
            'items' => $this->getMenuItems(),
            'userItems' => $this->getUserItems()
        ];
    }

    /**
     * {@inheritDoc} 
     *
     * @param {{vars.elements}}
     */
    public function admin()
    {
        return '<h5 class="mb-3">Navbar</h5>';
    }

    /**
     * {@inheritdoc}
     */
    /* public function getViewPath()
    {
        return  dirname(__DIR__).'/src/views/blocks';
    }  */

    public function getMenuItems()
    {
        $menuItems = [
            [
                'label' => Yii::t('app', 'Home'),
                'url' => ['/'],
                'active' => in_array(Yii::$app->controller->id, ['site']) && in_array(Yii::$app->controller->action->id, ['index']),
                'linkOptions' => [
                //    'class' => in_array(Yii::$app->controller->id, ['site']) && in_array(Yii::$app->controller->action->id, ['index']) ? 'nav-item nav-link text-white ml-3' : 'nav-item nav-link text-white',
                ],
            ],
            '<li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                  </li>',
            [
                'label' => Yii::t('app', 'Browse'),
                //'url' => ['/category/index'],
                'url' => ["#"], //nav-link dropdown-toggle show 
                'options' => ['class' => 'has-megamenu'],
                //class="dropdown-toggle" data-toggle="dropdown"
                'linkOptions' => ['class' => 'dropdown-toggle', 'data-bs-auto-close' => 'outside', 'data-bs-toggle' => 'dropdown'],
                // 'active' => in_array(Yii::$app->controller->id, ['category', 'product']),
                'items' => [
                    //$this->render("_mega")
                    $this->getMegaMenu()
                ]
            ],
            ['label' => Yii::t('app', 'Blog'), 'url' => ['/blog']
            ]
        ]; //<iconify-icon icon="mdi:user-outline" style="color: #123;" width="20" rotate="0deg"></iconify-icon>
       
        return $menuItems;
    }

    public function getUserItems()
    {
        $userItems = [];
        if (Yii::$app->user->isGuest) {
            $userItems[] = [
                'label' =>  Html::tag(
                    'span',
                    '<i class="" data-feather="user-check"></i>',
                    ["class" => "d-inline-block", "tabindex" => "0", "data-bs-toggle" => "popover", "data-bs-trigger" => "hover focus", "data-bs-content" => "click to login!"]
                ),
                'encode' => false,
                'url' => ['/user/login'],
                'linkOptions' => ['alt' => Yii::t('app', 'Login'), 'class' => ''],
            ];
        } else {
            $userItems[] = [
                'label' => Yii::t('app', 'Manage users'),
                'url' => ['/user/index'],
                'visible' => \Yii::$app->user->can('manage_users'),
                'items' => []
            ];
            $userItems[] = [
                'label' => Html::img(
                    \Yii::$app->user->identity->getAvatarImage(),
                    ['alt' => Yii::$app->user->identity->username, 'class' => 'rounded-circle border-2', 'width' => 38]
                ),
                'encode' => false,
                'linkOptions' => ['alt' => Yii::t('app', 'Welcome'), 'data-bs-title' => Yii::t('app', 'Welcome'), ['class' => 'nav-item dropdown']],
                // 'options' => ['class' => 'dropdown-menu dropdown-menu-end'],
                'items' => [
                    [
                        'label' => Html::tag('span', Yii::$app->user->identity->username),
                        'url' => ['/user/settings/profile'],
                        'encode' => false,
                        'class' => 'nav-link dropdown-toggle'
                    ],
                    [
                        'label' => Html::tag('span', Yii::t('app', 'Account Settings')),
                        'encode' => false,
                        'url' => ['/user/settings/account'],
                        'linkOptions' => ['alt' => Yii::t('app', 'Account Settings'), 'title' => Yii::t('app', 'Account Settings')],
                    ],
                    [
                        'label' => Html::tag('span', Yii::t('app', 'Addresses')),
                        'encode' => false,
                        'url' => ['/user/settings/addresses'],
                        'linkOptions' => ['alt' => Yii::t('app', 'Addresses'), 'title' => Yii::t('app', 'Addresses')],
                    ],
                    [
                        'label' => Html::tag('span', Yii::t('app', 'Logout')),
                        'url' => ['/user/logout'],
                        'encode' => false,
                        'linkOptions' => [
                            'data-method' => 'post',
                            'alt' => Yii::t('app', 'Logout'),
                            'title' => Yii::t('app', 'Logout'),
                        ],
                    ]
                ]
            ];
        }
        return $userItems;
    }

    public function getMegaMenu(){
        $categories = Group::getMain(); //!Yii::$app->cache->exists('_categories-' . Yii::$app->language) ? Category::getMain() : [];
        $items = [];
        foreach ($categories as $category) {
          $items[$category->id] = [
            'label' => $category->name,
            'url' => (count($category->categories)) ? ['/menu/'.$category->slug] : ['/menu/'.$category->slug],
            'options' => [
              'tag' => false,
            ],
          ];
        }
        return Menu::widget([
          'items' => $items,
          'linkTemplate' => '<a class="list-group-item" href="{url}">{label}</a>',
          'itemOptions' => ['class' => 'list-group-item'],
          'options' => [
            'tag' => 'div',
            //'class' => 'dropdown-menu rounded-0 w-100',
            'class' => 'list-group',
            // 'aria-labelledby' => "dropdownButton"
          ],
        ]);
    }
}
