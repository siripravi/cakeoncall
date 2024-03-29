<?php

namespace app\modules\storage\filters;

use app\modules\storage\Filter;

/**
 * Admin Module default Filter: Tiny Crop (40x40)
 *
 * @author Basil Suter <basil@nadar.io>
 * @since 1.0.0
 */
class TinyCrop extends Filter
{
    public static function identifier()
    {
        return 'tiny-crop';
    }

    public function name()
    {
        return 'Crop tiny (40x40)';
    }

    public function chain()
    {
        return [
            [self::EFFECT_THUMBNAIL, [
                'width' => 40,
                'height' => 40,
            ]],
        ];
    }
}