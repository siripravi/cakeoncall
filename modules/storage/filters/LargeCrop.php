<?php

namespace app\modules\storage\filters;

use app\modules\storage\Filter;

/**
 * Admin Module default Filter: Large Crop (800x800)
 *
 * @author Basil Suter <basil@nadar.io>
 * @since 1.0.0
 */
class LargeCrop extends Filter
{
    public static function identifier()
    {
        return 'large-crop';
    }

    public function name()
    {
        return 'Crop large (800x800)';
    }

    public function chain()
    {
        return [
            [self::EFFECT_THUMBNAIL, [
                'width' => 800,
                'height' => 800,
            ]],
        ];
    }
}
