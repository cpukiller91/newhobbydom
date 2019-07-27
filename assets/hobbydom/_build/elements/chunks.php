<?php
$path = 'core/elements/chunks/'. $this->config['name_lower'].'/';
return [
    'tpl.hobbydom.item' => [
        'file' => 'item',
        'description' => '',
        'static_file' => $path.'tpl.hobbydom.item.tpl',
    ],
    'tpl.hobbydom.office' => [
        'file' => 'office',
        'description' => '',
        'static_file' => $path.'tpl.hobbydom.office.tpl',
    ],
];