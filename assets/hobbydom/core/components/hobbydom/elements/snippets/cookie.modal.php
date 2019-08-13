<?php

/** @var modX $modx */
/** @var array $scriptProperties */
/** @var modCookiesModal $modCookiesModal */

if($_POST['accept1']){
    setcookie ("agree","agree" ,null,"/");
    if($url==1){
        header('Location: /');
    }else{
        header('Location: /'.$modx->makeUrl($url));
    }

}
//echo '<pre>';
//print_r($_COOKIE);
//echo '</pre>';
//echo $url;
//$tpl = "tpl.modCookiesModal";
//if($_COOKIE["agree"] != "agree"){
//
//    return $modx->getChunk($tpl);
//}else{
//    return $modx->getChunk("tpl.tag.google.modal");
//}

echo $modx->getChunk($tpl);
echo $modx->getChunk("tpl.tag.google.modal");