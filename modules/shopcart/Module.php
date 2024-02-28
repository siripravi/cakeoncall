<?php
namespace app\modules\shopcart;
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
    public $controllerNamespace = 'app\modules\shopcart\controllers';
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
            'cart' => [
                'class' => 'app\modules\catalogcomponents\Cart',
                'storage' => [
                    'class' => 'app\modules\catalogcomponents\MultipleStorage',
                    'storages' => [
                        ['class' => 'app\modules\catalogcomponents\SessionStorage'],
                        [
                            'class' => 'app\modules\catalogcomponents\DatabaseStorage',
                            'table' => 'cart',
                        ],
                    ],
                ]
            ],
			
			]);
		if ($this->getIsBackend() === true) { 
          $this->controllerNamespace = 'app\modules\shopcart\controllers\backend';
		  $this->viewPath = '@app/modules/shopcart/views/backend';
		
        } else {
            $this->controllerNamespace = 'app\modules\shopcart\controllers';
            $this->setViewPath('@app/modules/shopcart/views/');			
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
      
    }
    /**
     * @inheritdoc
     */
    public $urlRules = [        
      
    ];

}
