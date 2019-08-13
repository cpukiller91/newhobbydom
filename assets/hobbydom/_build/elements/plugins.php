<?php
$path = 'core/elements/plugins/'. $this->config['name_lower'].'/';
return [
    'modTalanto' => [
        'file' => 'modtalanto',
        'description' => '',
        'events' => [
            'OnLoadWebDocument' => [],
        ],
        //'static_file'=>$path.'modedubase.php'
    ],
    'modAJAX' => [
        'file' => 'modajax',
        'description' => '',
        'events' => [
            'OnLoadWebDocument' => [],
        ],
        //'static_file'=>$path.'modedubase.php'
    ],

];