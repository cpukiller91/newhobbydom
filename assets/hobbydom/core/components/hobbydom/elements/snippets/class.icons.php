<?php
/** @var modX $modx */
/** @var array $scriptProperties */
/** @var hobbydom $hobbydom */
if(is_array($partIcons = explode("||",$tv))){
    foreach($partIcons as $part){
        echo '<img src="/assets/template/images/'.$part.'.svg" alt="">';
    }

};

