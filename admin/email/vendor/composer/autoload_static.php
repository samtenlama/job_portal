<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit7a8261b4eb7cd9e705635842d972eb77
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit7a8261b4eb7cd9e705635842d972eb77::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit7a8261b4eb7cd9e705635842d972eb77::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit7a8261b4eb7cd9e705635842d972eb77::$classMap;

        }, null, ClassLoader::class);
    }
}
