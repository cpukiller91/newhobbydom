<!DOCTYPE html>
<html lang="ru">
<head>
[[$head.meta]]
</head> 
<body class="class__page">
<main>
[[$header]]
[[$article.header]]
<section class="article__content">
    <div class="article__left">
        <section class="article__header">
            <img src="/[[*class-image-detail]]" alt="" class="article__main-img">

            <div class="class__target-customers">
                [[*type-class]]
            </div>
        </section>
    </div>
    <div class="article__right">
        <div class="class__right--info">
            <div class="class__right--row">
                [[*contact-address-id:notempty=`
                    [[pdoResources?
                    	&tpl=`tpl.contacts.class`
                        &parents=`9,199`
                    	&resources=`[[*contact-address-id]]`
                    ]]
                `]]

            </div>
            <div class="class__right--row class__right--row-icons">
                [[ClassIcons?&tv=`[[*class-user-option]]` &allTitle=`1` &prefix=`_blue`]]
            </div>
            <div class="class__right--row">
                <div>
                    <img src="images/evro_blue.svg" alt=""><p>[[%hobbydom_clases_price_ot? &topic=`hobbydom` &namespace=`hobbydom` ]][[*price]] [[%hobbydom_clases_price_evro? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
                    <img src="images/clock_blue.svg" alt=""><p>[[*time]] [[%hobbydom_minute? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
                </div>
            </div>
            <div class="class__right--row">
                [[*class-free:is=`1`:then=`
                    <div>
                        <img src="images/gift_blue.svg" alt=""><p class="class__info--green">[[%hobbydom_class_free_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
                    </div>
                `]]

            </div>
            <a @click="openPopup({ id:[[*id]], name: '[[*pagetitle]]' })" class="button button--green">[[%hobbydom_clases_popup_button? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
        </div>
    </div>
</section>
<section class="article__content article__content--second">
    <div class="article__left">
        [[*content]]
        <a @click="openPopup({ id:[[*id]], name: '[[*pagetitle]]' })" class="button button--green">[[%hobbydom_clases_popup_button? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
    </div>
    <div class="article__right">
        <div class="article__right--vidgets">
            [[feedControll? &tv=`[[*fedback_slide_controll]]`]]

           
            <!--<div class="article__events">
                <h3>наши мероприятия</h3>
                <div class="article__events--content">
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                </div>
                <a href="" class="button button--yellow">все мероприятия</a>
            </div>-->
            <!--<div class="article__shedule">
                <img src="images/calendar_pink.svg" alt=""><a>Расписания всех занятий и мероприятий</a>
            </div>-->
        </div>
    </div>
</section>
<section class="clases">
    <div class="clases__inner">
        <h3>[[%hobbydom_clases_other_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="clases__tiles">
            [[pdoResources?
                &tpl=`tpl.clases.tile`
                &parents=`[[++parent_classes]]`
                &includeTVs=`class-user-option,class-image,price`
                &resources=`-[[*id]]`
                &limit=`3`
                &where=`[{"class_key":"msCategory"}]`
            ]]
        </div>
    </div>
</section>

[[$footer]]

[[$popup.modall]]
</main>

</body>
</html>