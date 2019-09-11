<?php
/** @var modX $modx */
/** @var array $scriptProperties */
/** @var hobbydom $hobbydom */

if(is_array($partIcons = explode("||",$tv))){

    if(count($partIcons) == 1){

            echo '<img src="/assets/template/images/'.$partIcons[0].$prefix.'.svg" alt=""><span>[[%hobbydom_class_option_'.$partIcons[0].'? &topic=`hobbydom` &namespace=`hobbydom`]]</span>';
    }else{
        foreach($partIcons as $part) {
            if ($allTitle == 1) {

                echo '<div><img src="images/' . $part . $prefix . '.svg" alt=""></div><span>[[%hobbydom_class_option_' . $part . '? &topic=`hobbydom` &namespace=`hobbydom`]]</span>';

            } else {

                echo '<img src="/assets/template/images/' . $part . $prefix . '.svg" alt="">';

            }
        }
    }


};

