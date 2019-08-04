<?php
/** @var modX $modx */
/** @var array $scriptProperties */
/** @var hobbydom $hobbydom */

if(is_array($partIcons = explode("||",$tv))){

    if(count($partIcons) == 1){

            echo '<img src="/assets/template/images/'.$partIcons[0].$prefix.'.svg" alt=""><p>[[%hobbydom_class_option_'.$partIcons[0].'? &topic=`hobbydom` &namespace=`hobbydom`]]</p>';
    }else{
        foreach($partIcons as $part) {
            if ($allTitle == 1) {

                echo '<div><img src="images/' . $part . $prefix . '.svg" alt=""></div><p>[[%hobbydom_class_option_' . $part . '? &topic=`hobbydom` &namespace=`hobbydom`]]</p>';

            } else {

                echo '<img src="/assets/template/images/' . $part . '.svg" alt="">';

            }
        }
    }


};

