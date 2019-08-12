<?php
/** @var modX $modx */
function dataController($param,$save=false){
    global $modx;

    if(!$object = $modx->getObject($param['key'], $param['filter'])){
        $object = $modx->newObject($param['key']);
    }

    if( $param['key'] == "modTemplateVarTemplate"){

        $object->set("tmplvarid",$param['data']['tmplvarid']);
        $object->set("templateid",$param['data']['templateid']);
    }else{
        $object->fromArray($param['data']);
    }

    if($save){$object->save();}

    return $object->toArray();
}



switch ($modx->event->name) {
    case 'OnLoadWebDocument':
        $class_list = $modx->getObject("modTemplate", array("templatename" => "Список Класов"));
        $class_detail = $modx->getObject("modTemplate", array("templatename" => "Класс подробно"));
//        $templatEvent = $modx->getObject("modTemplate", array("templatename" => "Занятие Таланто"));
//        $category = $modx->getObject("modCategory", array("category" => "modTalanto"));

        $param = array(
            "key" => "msCategory",
            "filter" => array(
                "parent" => 0,
                "alias" => "classes"
            ),
            "data" => array(
                "parent" => 0,
                "template" => $class_list->get('id'),
                "pagetitle" => "Занятия",
                "alias" => "classes"
            )
        );

        $msCategory = dataController($param,true);
        $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($msCategory));


    foreach($_POST as $event){
        if($event['hidden'] == 0){
            $modTemplateVarTemplate = $modx->getObject("modTemplateVarTemplate");

//            $param = array(
//                "key" => "msCategory",
//                "filter" => array(
//                    "parent" => $msCategory['id'],
//                    "pagetitle" => $event['subject_name']
//                ),
//                "data" => array(
//                    "parent" => $msCategory['id'],
//                    "template" => $class_list->get('id'),
//                    "pagetitle" => $event['subject_name'],
//                    //"alias" => "classes"
//                )
//            );
            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($param));

        }
    }


//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($modTemplateVarTemplateRes));
//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($modTemplateVarRes));
            //$modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($_POST));
//            $modx->resource->set('cacheable', 0);
//            $modx->resource->set('template', 0);
//            $modx->resource->set('content', "");

//            $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($msCategory));


        break;
}