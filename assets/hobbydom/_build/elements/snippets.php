<?php
$path = 'core/elements/snippets/'. $this->config['name_lower'].'/';
return [
    'hobbydom' => [
        'file' => 'hobbydom',
        'description' => 'hobbydom snippet to list items',
        'properties' => [
            'tpl' => [
                'type' => 'textfield',
                'value' => 'tpl.hobbydom.item',
            ],
            'sortby' => [
                'type' => 'textfield',
                'value' => 'name',
            ],
            'sortdir' => [
                'type' => 'list',
                'options' => [
                    ['text' => 'ASC', 'value' => 'ASC'],
                    ['text' => 'DESC', 'value' => 'DESC'],
                ],
                'value' => 'ASC',
            ],
            'limit' => [
                'type' => 'numberfield',
                'value' => 10,
            ],
            'outputSeparator' => [
                'type' => 'textfield',
                'value' => "\n",
            ],
            'toPlaceholder' => [
                'type' => 'combo-boolean',
                'value' => false,
            ],
        ],
        'static_file'=>$path.'hobbydom.php'
    ],
    'ClassIcons' => [
        'file' => 'class.icons',
        'description' => 'hobbydom snippet to list items',
        //'static_file'=>$path.'class.icons.php'
    ]
];