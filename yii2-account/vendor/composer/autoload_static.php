<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit58d6c14bc5fc21ad71d4dc6ba556dc2a
{
    public static $prefixLengthsPsr4 = array (
        'C' => 
        array (
            'Chandra\\Yii2Account\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Chandra\\Yii2Account\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit58d6c14bc5fc21ad71d4dc6ba556dc2a::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit58d6c14bc5fc21ad71d4dc6ba556dc2a::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit58d6c14bc5fc21ad71d4dc6ba556dc2a::$classMap;

        }, null, ClassLoader::class);
    }
}
