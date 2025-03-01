<?php

namespace app\modules\storage\image;

/**
 * Iterator class for file items.
 *
 * @author Basil Suter <basil@nadar.io>
 * @since 1.0.0
 */
class Iterator extends \app\modules\storage\IteratorAbstract
{
    /**
     * Iterator get current element, generates a new object for the current item on access.
     *
     * @return \luya\admin\image\Item
     */
    #[\ReturnTypeWillChange]
    public function current()
    {
        return Item::create(current($this->data));
    }
}
