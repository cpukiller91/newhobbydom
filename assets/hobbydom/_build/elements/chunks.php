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
    'tpl.modCookiesModal' => [
        'file' => 'tpl.cookie.modal',
        'description' => '',
        //'static_file' => $path.'tpl.cookie.modal.tpl',
    ],'tpl.tag.google.modal' => [
        'file' => 'tpl.tag.google.modal',
        'description' => '',
        //'static_file' => $path.'tpl.cookie.modal.tpl',
    ],
];