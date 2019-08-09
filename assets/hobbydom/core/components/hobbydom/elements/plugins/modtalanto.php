<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'OnLoadWebDocument':


            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($_POST));
//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($modTemplateVarTemplateRes));
//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($modTemplateVarRes));
            //$modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($_POST));
//            $modx->resource->set('cacheable', 0);
//            $modx->resource->set('template', 0);
//            $modx->resource->set('content', "");

//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($msCategory));


        break;
}