<?php

namespace app\components\events;

use yii\base\Event;

/**
 * @author Albert Gainutdinov <xalbert.einsteinx@gmail.com>
 */
class UserRegistrationEvent extends Event
{

    /**
     * @var integer
     * User id
     */
    public $id;
}
