<?php

/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Chandra\Yii2Account\events;

use Chandra\Yii2Account\mail\RegistrationEmail;
use Chandra\Yii2Account\models\User;

/**
 * @property RegistrationEmail $email
 * @property User $model
 * @author Dmitry Erofeev <dmeroff@gmail.com>
 */
class RegistrationEvent extends UserEvent
{
    /**
     * @var RegistrationEmail
     */
    protected $email;

    /**
     * @return RegistrationEmail
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param RegistrationEmail $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }
}