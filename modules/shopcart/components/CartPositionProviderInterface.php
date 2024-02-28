<?php

namespace app\modules\shopcart\components;


/**
 * Interface CartPositionProviderInterface
 * @property CartPositionInterface $cartPosition
 * @package yz\shoppingcart
 */
interface CartPositionProviderInterface
{
    /**
     * @param array $params Parameters for cart position
     * @return CartPositionInterface
     */
    public function getCartPosition($params = []);
} 