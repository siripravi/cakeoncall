<?php

namespace siripravi\shopcart;

use luya\forms\models\Form;
use app\modules\shopcart\models\OrderForm;
use yii\base\Event;

/**
 * A form after save event to attach in the config.
 * 
 * ```php
 * 'forms' => [
 *     'class' => 'luya\forms\Forms',
 *     'on afterSave' => function(\luya\forms\AfterValidateEvent $event) {
 *         // do something with event model 
 *     }
 * ]
 * ```
 * 
 * @since 1.6.0
 */
class BeforeLoadOrderFormEvent extends Event
{
    /**
     * @var SubmissionEmail
     */
    //public $submission;

    /**
     * @var Form
     */
    //public $form;
    //public $model;

    private $_model;

    /**
     * @return Model
     */
    public function getModel()
    {
        return $this->_model;
    }

    /**
     * @param Model $form
     */
    public function setModel(OrderForm $model)
    {
        $this->_model = $model;
    }
}
