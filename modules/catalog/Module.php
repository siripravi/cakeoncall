<?php
namespace app\modules\catalog;
use yii;
/**
 * Portfolio Admin Module.
 *
 * File has been created with `module/create` command on LUYA version 1.0.0. 
 */
class Module extends \yii\base\Module
{
      /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'app\modules\catalog\controllers';
    protected $_isBackend;
    public $articleDefaultOrder = ['created_at' => SORT_DESC];
    
    /**
     * @var integer Default number of pages.
     */
    public $articleDefaultPageSize = 10;
    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->registerTranslations();
		        
		$this->setComponents([
            
			
			]);
		if ($this->getIsBackend() === true) { 
          $this->controllerNamespace = 'app\modules\catalog\controllers\backend';
		  $this->viewPath = '@app/modules/catalog/views/backend';
		
        } else {
            $this->controllerNamespace = 'app\modules\catalog\controllers';
            $this->setViewPath('@app/modules/catalog/views/');			
        }	
    }
      public function registerTranslations()
    {
   
    }

    public static function t($category, $message, $params = [], $language = null)
    {
        return Yii::t('@siripravi/catalog/' . $category, $message, $params, $language);
    }
	
	/**
     * Check if module is used for backend application.
     *
     * @return boolean true if it's used for backend application
     */
    public function getIsBackend()
    {
        if ($this->_isBackend === null) {
            $this->_isBackend = strpos($this->controllerNamespace, 'backend') === false ? false : true;
        }

        return $this->_isBackend;
    }
   
    public static function onLoad()
    {
       /* Yii::setAlias('@luyathemes', static::staticBasePath());

        self::registerTranslation('luyathemes*', '@luyathemes/messages', [
            'luyathemes' => 'luyathemes.php',
        ]);

        parent::onLoad();*/
    }
    /**
     * @inheritdoc
     */
    public $urlRules = [
        
        ['pattern' => 'catalog/page-<page:[0-9]+>', 'route' => 'catalog/category/index'],
        ['pattern' => 'catalog', 'route' => 'catalog/category/pod'],
        ['pattern' => 'catalog/<slug:[0-9a-z\-]+>/page-<page:[0-9]+>', 'route' => ''],
        ['pattern' => 'catalog/<slug:[0-9a-z\-]+>', 'route' => 'catalog/category/pod'],
        ['pattern' => 'menu/<slug:[0-9a-z\-]+>/page-<page:[0-9]+>', 'route' => 'catalog/category/view'],
        ['pattern' => 'menu/<slug:[0-9a-z\-]+>/page-<page:[0-9]+>', 'route' => 'catalog/default/index'],
        ['pattern' => 'menu/<slug:[0-9a-z\-]+>', 'route' => 'catalog/category/view'],
        ['pattern' => 'menu/<slug:[0-9a-z\-]+>', 'route' => 'catalog/default/index'],
        ['pattern' => 'product/<slug:[0-9a-z\-]+>', 'route' => 'catalog/product/index'],
        [
            'pattern' => 'my-basket',
            'route' => 'catalog/default/basket',
        ],
        [
            'pattern' => 'ajax-info',
            'route' => 'catalog/default/ajax-info',
        ],
    ];

}
