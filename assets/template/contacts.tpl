<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body class="contacts">
<main>
    [[$header]]
    <section class="contacts__content">
        <div class="contacts__header">
            <h1>[[*pagetitle]]</h1>
        </div>
        <div class="contacts__left">
            [[pdoResources?
                &tpl=`tpl.contact`
                &parents=`[[*id]]`
                &includeTVs=`contacts-map,contacts-prev,contacts-map-url`
            ]]
            
        </div>
    </section>
    [[!callBack?
        &tpl=`tpl.contact.item`
        &hooks=`email,callBackLog`
        &form=`tpl.contact.form`
        &validate=`phone:required,name:required`
        &emailTpl=`tpl.callBack.email`
        &target=`callBackModal`
        &registerCss=`0`
        &registerBootstrap=`0`
    ]]

    [[$footer]]

    [[$popup.modall]]
</main>

<script type="text/javascript" src="/assets/template/js/bundle_[[++cultureKey]].js"></script>
</body>
</html>