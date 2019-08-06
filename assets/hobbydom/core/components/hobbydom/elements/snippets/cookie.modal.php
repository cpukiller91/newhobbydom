<?php

/** @var modX $modx */
/** @var array $scriptProperties */
/** @var modCookiesModal $modCookiesModal */

$tpl = "tpl.modCookiesModal";
if($_COOKIE["agree"] != "accept"){
    return $modx->getChunk($tpl);
}
//return $modx->getChunk($tpl);