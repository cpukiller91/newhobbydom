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
        //$modTemplateVarTemplate = $modx->getObject("modTemplateVarTemplate");

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

    foreach($_POST as $event){
        if($event['hidden'] == 0){

            if($modTemplateVarResource = $modx->getObject("modTemplateVarResource",array("value" => $event['subject_id']))){
                $msProduct = array(
                    "key" => "msProduct",
                    "filter" => array(
                        "parent" => $modTemplateVarResource->get("contentid"),
                        "alias" => $event['id']
                    ),
                    "data" => array(
                        "parent" => $modTemplateVarResource->get("contentid"),
                        "template" => 11,
                        "pagetitle" => $event['name'],
                        "alias" => $event['id'],
                        "pub_date" => strtotime($event['date_start']),
                        "unpub_date" => strtotime($event['date_finish']),
                        "price" => $event['cost'],
                        'published' => true,
                        'deleted' => false,
                        'hidemenu' => false,
                        'createdon' => time(),
                        'source' => '2',
                        "show_in_tree" => 0
                    )
                );
                $msProductRes = dataController($msProduct,true);
                if($resource = $modx->getObject("msProduct", $msProductRes["id"])){
                    $resource->setTVvalue("employee_names", $event['employee_names']);
                    $resource->setTVvalue("audience_system", $event['audience_system']);
                    $resource->save();
                }
                $modx->log(modX::LOG_LEVEL_INFO,'Log Talanto'.print_r($msProductRes,true));
            }



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