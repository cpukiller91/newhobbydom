<?php

/** @var modX $modx */
/** @var array $scriptProperties */
/** @var modCookiesModal $modCookiesModal */

if($_POST['accept1']){
    setcookie ("agree","agree" );
    header('Location: /');
}
//echo '<pre>';
//print_r($_COOKIE);
//echo '</pre>';
$tpl = "tpl.modCookiesModal";
if($_COOKIE["agree"] != "agree"){
    return $modx->getChunk($tpl);
}else{
    return $modx->getChunk("tpl.tag.google.modal");
}

