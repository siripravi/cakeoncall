<?php

$vendorDir = dirname(__DIR__);

return array (
  'configs' => 
  array (
    'luyadev/luya-deployer' => 
    array (
      'package' => 
      array (
        'isDev' => false,
        'name' => 'luyadev/luya-deployer',
        'prettyName' => 'luyadev/luya-deployer',
        'version' => '1.0.9.0',
        'targetDir' => NULL,
        'installSource' => 'dist',
        'sourceUrl' => 'https://github.com/luyadev/luya-deployer.git',
        'packageFolder' => 'luyadev\\luya-deployer',
      ),
      'blocks' => 
      array (
      ),
      'bootstrap' => 
      array (
      ),
      'themes' => 
      array (
      ),
    ),
    'luyadev/luya-module-admin' => 
    array (
      'package' => 
      array (
        'isDev' => false,
        'name' => 'luyadev/luya-module-admin',
        'prettyName' => 'luyadev/luya-module-admin',
        'version' => '5.0.1.0',
        'targetDir' => NULL,
        'installSource' => 'dist',
        'sourceUrl' => 'https://github.com/luyadev/luya-module-admin.git',
        'packageFolder' => 'luyadev\\luya-module-admin',
      ),
      'blocks' => 
      array (
      ),
      'bootstrap' => 
      array (
        0 => '\\luya\\admin\\Bootstrap',
      ),
      'themes' => 
      array (
      ),
    ),
  ),
  'timestamp' => 1708972289,
);
