<?php

function senderToTallanto($module, $params)
{
    $crm_url = 'http://hobbydom.tallanto.com';
    $url = $crm_url . '/index.php?entryPoint=dataCapture&module=' . $module;
    $key = '238ee7d29f9b5aed6cf37946d4ca13efcc33106c';//ваш сгенерированный ключ для подписи(его изменять не надо)
    uksort($params, "strcasecmp");
    $values = "";
    foreach ($params as $name => $value) {
        if (is_array($value) && count($value) === 0) continue;
        if (is_array($value)) {
            $values .= 'Array';//Элементы массива второй и более вложенностей в данном случае не играют важной роли и не участвуют в подписи
        } else {
            $values .= $value;
        }
    }
    $params['crc'] = md5($values . $key);

    //Пример кода для передачи данных(Передачу данных можно делать методом POST с помощью любого способа(например, curl или http_post_fields)
    //В примере использована самая простая реализация: file_get_contents + stream_context_create
    $options = array(
        'http' => array(
            'header' => "Content-type: application/x-www-form-urlencoded\r\n",
            'method' => 'POST',
            'content' => http_build_query($params),
        ),
    );

    try {
        $context = stream_context_create($options);
        $serverRes = file_get_contents($url, false, $context);

        //Здесь можно произвести обработку запроса

        $result = json_decode($serverRes, true);

        if (json_last_error()) {
            //Тут нам с сервера пришла ошибка. Проверим, может какие то параметры не те послали...
            echo $serverRes;
        } elseif ($result['result'] == false) {
            //Если в $result['result'] - То это ошибка, например, не передали обязательные поля или какие то другие. в $result['message'] в таком случае ошибка
            echo $result['message'];
        } else {
            //все ок, если что можно взять сообщение об успешном добавление, а так же id созданной/обновленной в бд записи
            echo 'ID ' . $result['id'] . '; MSG ' . $result['message'] . '; ';
            if ($result['duplicate'] == true) echo 'Duplicate was found in database and successful update or rewrite';
            //echo "<a href='{$result['purchase_abonement_link']}' target='_blank'>Купить абонемент</a>"; //получаемый параметр, в котором содержится ссылка для покупки абонемента
        }
    } catch (Exception $e) {
        //здесь какая то серверная ошибка(например, internal server error 500) или еще что-то, можно попытаться определить проблему. В $e->getMessage() - ошибка
        echo $e->getMessage();
    }

    return $result;
}

if ($modx->event->name == 'OnLoadWebDocument') {
    $postData = file_get_contents('php://input');
    $data = json_decode($postData, true);
    $send_talanto = 1;

    if(isset($data)){
        foreach ($data['children'] as $cId => $children){
            $types = implode(",",$children['types']);
            $chil .= " Имя ребенка ".$children["name"]." возраст ".$children["age"]." Занятие ".$types."::";
        }
        $pClas = implode(",",$data['types']);
        //Задаваемые параметры
        //Если ученик(контакт)
        $module = 'Contact';
        //Если организация
        //$module = 'Account';
        //Если заявка
        //$module = 'Request';
        //Если финансовая операция
        //$module = 'most_finances';
        //Если абонемент
        //$module = 'most_abonements';
        //Если новый счет
        //$module = 'Invoice';


        //Важный параметр, мы можем передать по каким полям проводить проверку на дубликаты
        //Проверка на дубликат по email, если он присутствует, производится всегда, отключить ее нельзя
        //Если проверку на дубликаты производить не надо, удалите данный параметр или присвойте ему пустое значение
        //Для проверки по любому телефону без сравнения разделителей, используйте специальное поле: phone
                $check_duplicate_by = array(
                    'phone', 'skype_c',
                );

        //В случае нахождения в ответе будет признак duplicate = true, при этом result = true
        //мы можем дополнительно передать поля которые необходимо перезаписать/дописать информацией из вашего запроса в случае нахождения дубликата
        //дописать можно информацию только в ТЕКСТОВЫЕ поля, значения комбобоксов, чекбоксов, числовых полей можно только перезаписывать,
        //поэтому если указать в для этих полей флаг дописать информацию, то поля не обновят своих старых значений
        //Ключем в массиве выступает системное название поля, а значение rewrite - перезаписать, или add - дописать
                $update_duplicate_info = array(
                    'send_sms' => 'rewrite',
                    'filial' => 'rewrite',
                    'description' => 'add',
                    'notice' => 'rewrite',
                );

        //Пример вводимых данных. Вы будете получать их из $_REQUEST своих форм на сайте, либо из других мест. Например, из своей уже имеющейся бд на сайте
        //названия полей и их типы - http://hobbydom.tallanto.com/index.php?entryPoint=infoDataCapture&module=Contact
                $params = array(
                    'last_name' => 'hobbydom',
                    'first_name' => $data['name'],//Имя обязательный параметр, если у вас нет, тогда необходимо прописать любое название для идентификации в ЦРМ, например, "Человек с сайта"
                    'phone_mobile' => $data['phone'],
                    'email1' => $data['email'], //если передаем email проверка на дубликат производится всегда, отключить ее нельзя
                    'send_sms' => 'На мобильный', //Можно использовать русский язык, при условии что он у вас является языком по умолчанию в системе
//                    'skype_c' => 'my.Fedorchuk',
//                    'sex_c' => 'муж.',
//                    'filial' => array(
//                        'Марьино', 'Рублёвка', //А это переменная "многие из", значение такой переменной задается в виде массива
//                    ),
                    'description' => 'А тут допустим у вас есть дополнительные параметры. Например, когда человек хочет посещать ваши занятия. Их можно прописать в это поле, которое запишется в описание',

                );

        //Допустим нам так же надо записать человека на занятие(или группу), тогда можно использовать следующие параметры: (описание в документации по ссылке выше)
        //most_class_abonements, most_class_certificates, most_class_contacts_cost, most_class_contacts_duration, most_class_contacts_id, most_class_contacts_reserve, most_class_contacts_status, most_class_discounts, most_class_user_id, need_remind, notice
        //чтобы записаться в группу, вместо most_class_contacts_id используем - most_courses_contacts_id
        //$params['most_class_contacts_id'] = '36cde4e7-2e11-ad60-3134-54d095d574a6';//ID занятия
        //$params['notice'] = 'Этот ученик записался на занятие через форму сайта...';

        //Если нужно купить абонемент, необходимо передать следующие параметры:
        //$params['template_abonement_id'] = '36cde4e7-2e11-ad60-3134-54d095d574a6';//ID шаблона абонемента, по которому будет создан абонемент
        //$params['abonement_start_date'] = '22.11.2022';//Дата начала абонемента в формате День.Месяц.Год, если дата не указана, будет установлена завтрашняя дата
        //purchase_abonement_link - получаемый при отправке запроса параметр, в котором содержится ссылка для покупки абонемента

        if (isset($check_duplicate_by) AND !empty($check_duplicate_by))  $params['check_duplicate_by'] = $check_duplicate_by;
        if (isset($update_duplicate_info) AND !empty($update_duplicate_info))  $params['update_duplicate_info'] = $update_duplicate_info;
        if($send_talanto) {

            $resultContact = senderToTallanto($module, $params);

            //Все дальше идет стандартный код, который вам просто необходимо себе скопировать.
            //Но также надо понимать что вся передача данных должна быть в UTF-8, если у вас на сайте кодировка Windows-1251 , вам надо самостоятельно позаботится о конвертации данных
            senderToTallanto('Request', array(
                'name' => 'Заявка на занятие '.$pClas,//название обязательный параметр
                //ID ученика обязательный параметр
                //если вы только добавили ученика, то в вашем массиве $resultContact есть его id
                'contact_id' => $resultContact['id'],
                'status' => 'Не начата',//Статус обязательный параметр
//            'parent_name' => 'most_class',//Связать с занятием
//            'parent_id' => '36cde4e7-2e11-ad60-3134-54d095d574a6',//ID занятия
                'priority' => 'Высокий',
                'source' => 'Сайт',
                'type' => 'Занятие',
                'description' => $chil,

            ));
        }
        $modx->resource->set('content', "<pre>".print_r($data,true)."</pre>");
        $modx->resource->set('cacheable', 0);
        $modx->resource->set('template', 0);
    }


}