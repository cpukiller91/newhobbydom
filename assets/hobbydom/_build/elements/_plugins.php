<?php
$path = 'core/elements/plugins/'. $this->config['name_lower'].'/';
return [
    'hobbydom' => [
        'file' => 'hobbydom',
        'description' => '',
        'events' => [
            'OnManagerPageInit' => [],
        ],
        'static_file'=>$path.'modedubase.php'
    ],

];