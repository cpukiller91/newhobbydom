<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body>
<main>
[[$header]]
<div class="article__header">
    <p class="article__news">[[%hobbydom_news_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
    <h1>[[*pagetitle]]</h1>
    <div class="article__author">
        <img src="images/author-img.png" alt=""><p>Оксана Лаврова</p><p class="article--date">[[*createdon:strtotime:date=`%d %B %Y`]]г</p>
    </div>
    <img src="images/article-main-img.jpg" alt="" class="article__main-img">
    <div class="header__share">
        <a href="#">

            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewBox="0 0 512 512">
                <title></title>
                <g id="icomoon-ignore">
                </g>
                <path d="M304 96h80v-96h-80c-61.757 0-112 50.243-112 112v48h-64v96h64v256h96v-256h80l16-96h-96v-48c0-8.673 7.327-16 16-16z"></path>
            </svg>
            <span>Поделиться</span>

        </a>
    </div>
</div>
<section class="article__content">
    <div class="article__left">
        [[*content]]
    </div>
    <div class="article__right">
        <div class="article__clases">
            <h3>[[%hobbydom_clases_home_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
            <div>
                [[pdoResources?
                    &tpl=`tpl.article.class`
                    &parents=`[[++parent_classes]]`
                    &includeTVs=`class-user-option,class-image,price`
                ]]

            </div>
            <a href="[[~[[++parent_classes]]]]" class="button button--green article__class--button">все занятия</a>
        </div>
        <!--div class="article__events">
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
        </div>
        <div class="article__shedule">
            <img src="images/calendar_pink.svg" alt=""><a>Расписания всех занятий и мероприятий</a>
        </div-->
    </div>
</section>
<section class="news">
    <div class="news__inner">
        <h3>[[%hobbydom_news_other? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="news__tiles">
            [[pdoResources?
                &tpl=`tpl.news.item`
                &parents=`[[%hobbydom_parent_news? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                &includeTVs=`article-prev`
                &resources=`-[[*id]]`
            ]]
        </div>
    </div>
</section>


[[$footer]]

[[$popup.modall]]
</main>

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</body>
</html>