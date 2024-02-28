<?php

/**
 * User: TheCodeholic
 * Date: 12/12/2020
 * Time: 7:04 PM
 */

namespace app\modules\catalog\components;

//use common\models\CartItem;
//use \models\Search;

/**
 * Class Controller
 *
 * @author  
 * @package 
 */
class BaseController extends \yii\web\Controller
{
    public $layout = '@app/views/layouts/detail';
    public $secClass = "container my-2 my-md-3";

    public $bannerTitle = "Some Title";


    public function beforeAction($action)
    {   
        if (!parent::beforeAction($action)) {
            return false;
        }
    
    //   echo "BEFORE ACTION";
    
        return true; //
    }

    public function beforeRender($event)
    {       
        if (!parent::beforeRender($action)) {
            return false;
        }
    
      // echo "BEFORE RENDER"; die;
    
        return true; //
        
    }
}
