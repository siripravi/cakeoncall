<?php

/**
 * @author Albert Gainutdinov <xalbert.einsteinx@gmail.com>
 */

namespace app\components\events;


use yii\base\Event;

class OrderInfoEvent extends Event
{
    /**
     * @var integer
     */
    public $user_id;

    /**
     * @var string
     */
    public $email;
}
