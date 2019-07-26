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
            <img src="images/article-main-img.jpg" alt="" class="article__main-img">

            <div class="class__target-customers">
                [[*type-class]]
            </div>
        </section>
    </div>
    <div class="article__right">
        <div class="class__right--info">
            <div class="class__right--row">
                <div><img src="images/local_pin_blue.svg" alt=""><p>Slokas iela 69, LV-2015</p></div>
                <div><img src="images/local_pin_blue.svg" alt=""><p>Шоссе Талсу 31-К9, LV-2016</p></div>
            </div>
            <div class="class__right--row class__right--row-icons">
                <div><img src="images/baby_blue.svg" alt=""><p>до 2 лет</p></div>
                <div><img src="images/schoolboy_blue.svg" alt=""><p>до 2-6 лет</p></div>
                <div><img src="images/schoolboy_blue.svg" alt=""><p>до 2-6 лет</p></div>
                <div><img src="images/schoolboy_blue.svg" alt=""><p>до 2-6 лет</p></div>
            </div>
            <div class="class__right--row">
                <div>
                    <img src="images/evro_blue.svg" alt=""><p>от 30 евро</p><img src="images/clock_blue.svg" alt=""><p>45 минут</p>
                </div>
            </div>
            <div class="class__right--row">
                <div>
                    <img src="images/gift_blue.svg" alt=""><p class="class__info--green">Певрое занятие бесплатное!</p>
                </div>
            </div>
            <a @click="openPopup('[[+pagetitle]]')" class="button button--green">записаться на занятие</a>
        </div>
    </div>
</section>
<section class="article__content article__content--second">
    <div class="article__left">
        <div class="article__header article__header-bdb">
            <p class="class__descr class__descr-top"> molestias nemo, non omnis sapiente, sit suscipit velit?</p>
            <p class="class__sub-descr">Занятия проводятся билингвально.</p>
        </div>
        <div class="class__content">
            <div class="class__content--item class__subtitle-acordeon">
                <p class="class__subtitle">описание <img src="images/arrow_down_grey.svg" alt=""></p>
                <div class="class__text--wrapper">
                    <p class="article__text"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias dolores et ex excepturi exercitationem expedita illum molestiae mollitia nihil nobis officia officiis perferendis perspiciatis, quam qui recusandae tenetur ullam voluptatibus!</span><span>Aliquid assumenda commodi consequatur deserunt dolores ducimus eligendi eos error ex itaque laudantium libero magnam molestiae nam optio perspiciatis placeat praesentium quae quasi, ratione rem similique tempore voluptatibus! Aliquam, ullam.</span> </p>
                    <iframe width="100%" height="500px" src="https://www.youtube.com/embed/wLX8mfhs0Mg?controls=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                    <ul class="class__list--dotted">
                        <span>В программе «Раннее музыкальное развитие»</span>
                        <li>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis illum laboriosam odio qui sed
                            temporibus veritatis. Alias, ape
                        </li>
                        <li>Lorem ipsum dolor sit amet,
                        </li>
                        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis illum laboriosam odio qui sed
                            temporibus veritatis. Alias, aper
                        </li>
                    </ul>
                    <p class="article__text "><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias dolores et ex excepturi exercitationem expedita illum molestiae mollitia nihil nobis officia officiis perferendis perspiciatis, quam qui recusandae tenetur ullam voluptatibus!</span><span>Aliquid assumenda commodi consequatur deserunt dolores ducimus eligendi eos error ex itaque laudantium libero magnam molestiae nam optio perspiciatis placeat praesentium quae quasi, ratione rem similique tempore voluptatibus! Aliquam, ullam.</span> </p>
                    <div class="class__groups">
                        <p class="article__text"><b>Занятия проходят в трьох возрастных группах:</b></p>
                        <p class="article__text"><span class="class__green-text">1-2 </span> лет - группа «Янтарики» (максимум 8 человек в группе).</p>
                        <p class="article__text"><span class="class__green-text">2-4 </span> лет - группа «Янтарики» (максимум 8 человек в группе).</p>
                        <p class="article__text"><span class="class__green-text">4-6 </span> лет - группа «Янтарики» (максимум 8 человек в группе).</p>
                    </div>
                    <p class="class__subtitle class__subtitle-mobile"><img src="images/arrow_down_grey.svg" alt=""></p>
                </div>
            </div>
            <div class="class__content--item class__content--item-padding-zero class__subtitle-acordeon">
                <p class="class__subtitle">что брать с собой <img src="images/arrow_down_grey.svg" alt=""></p>
                <div class="class__text--wrapper">
                    <p class="article__text article__text--pb"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias dolores et ex excepturi exercitationem expedita illum molestiae mollitia nihil nobis officia officiis perferendis perspiciatis, quam qui recusandae tenetur ullam voluptatibus!</span><span>Aliquid assumenda commodi consequatur deserunt dolores ducimus eligendi eos error ex itaque laudantium libero magnam molestiae nam optio perspiciatis placeat praesentium quae quasi, ratione rem similique tempore voluptatibus! Aliquam, ullam.</span> </p>
                    <p class="class__subtitle class__subtitle-mobile"><img src="images/arrow_down_grey.svg" alt=""></p>
                </div>
            </div>
            <div class="class__content--item class__content--item-price class__content--item-padding-zero class__subtitle-acordeon">
                <p class="class__subtitle">стоимость занятий <img src="images/arrow_down_grey.svg" alt=""></p>
                <div class="class__text--wrapper">
                    <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                    <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                    <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                    <div class="class__abonement">
                        <p class="class__abonement--subtitle">Абонементы</p>
                        <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                        <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                        <p class="article__text"><span class="class__green-text">1</span> занятие - <span class="class__green-text">10</span> евро;</p>
                    </div>
                    <p class="class__subtitle class__subtitle-mobile"><img src="images/arrow_down_grey.svg" alt=""></p>
                </div>
            </div>
        </div>
        <a @click="openPopup('[[+pagetitle]]')" class="button button--green">записаться на занятие</a>
    </div>
    <div class="article__right">
        <div class="article__right--vidgets">
            <div class="class__scrollable--info">
                <h4 class="scrollable__info--title">преподаватели</h4>
                <div class="scrollable__info--controls">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                </div>
                <p class="scrollable__info--name">Тамара Цауркубуле</p>
                <div class="scrollable__info--text">
                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                </div>
            </div>
            <div class="class__scrollable--info">
                <h4 class="scrollable__info--title">отзывы о занятии</h4>
                <div class="scrollable__info--controls">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                </div>
                <p class="scrollable__info--name">Тамара Цауркубуле</p>
                <div class="scrollable__info--text">
                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                </div>
            </div>
            <div class="class__scrollable--info class__scrollable--info-yellow">
                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                <div class="scrollable__info--controls">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                    <svg class="scrollable__info--controll" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                </div>
                <p class="scrollable__info--name">Тамара Цауркубуле</p>
                <div class="scrollable__info--text">
                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                </div>
            </div>
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
        <h3>Другие занятия</h3>
        <div class="clases__tiles">
            <div class="clases__tile">
                <img src="images/clases1.png" alt="">
                <div class="clases__tile--bot">
                    <div class="clases__tile--content">
                        <p class="clases__tile--content-bold">Аква мама</p>
                        <p class="clases__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                        <div class="clases__tile--content-icons">
                            <div class="clases--icons">
                                <img src="images/baby.svg" alt=""><img src="images/schoolboy.svg" alt=""><img src="images/teen_girl.svg" alt=""><img src="images/women.svg" alt="">
                            </div>
                            <div class="clases--price">
                                <img src="images/evro.svg" alt=""><p>от 8 евро</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clases__tile--hover">
                    <a href="class.html" class="button button--tile">подробнее</a>
                    <button class="button button--tile clases__popup--button">записаться на мероприятие</button>
                </div>
            </div>
            <div class="clases__tile">
                <img src="images/clases2.png" alt="">
                <div class="clases__tile--bot">
                    <div class="clases__tile--content">
                        <p class="clases__tile--content-bold">Ранее музыкальное развитие</p>
                        <p class="clases__tile--content-lite">Работа с музыкальным материалом – это отличная развивающая методика, благодаря которой ребёнок обретает чувство ритма...</p>
                        <div class="clases__tile--content-icons">
                            <div class="clases--icons">
                                <img src="images/baby.svg" alt=""><img src="images/schoolboy.svg" alt=""><img src="images/teen_girl.svg" alt=""><img src="images/women.svg" alt="">
                            </div>
                            <div class="clases--price">
                                <img src="images/evro.svg" alt=""><p>от 8 евро</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clases__tile--hover">
                    <a href="class.html" class="button button--tile">подробнее</a>
                    <button class="button button--tile clases__popup--button">записаться на мероприятие</button>
                </div>
            </div>
            <div class="clases__tile">
                <img src="images/clases3.png" alt="">
                <div class="clases__tile--bot">
                    <div class="clases__tile--content">
                        <p class="clases__tile--content-bold">Клуб классных мамочек</p>
                        <p class="clases__tile--content-lite">Как воспитать в ребенке самостоятельность и независимость. Как создать дома такие условия для ребёнка, чтобы он гармонично и непринуждённо развивался.</p>
                        <div class="clases__tile--content-icons">
                            <div class="clases--icons">
                                <img src="images/baby.svg" alt=""><img src="images/schoolboy.svg" alt=""><img src="images/teen_girl.svg" alt=""><img src="images/women.svg" alt="">
                            </div>
                            <div class="clases--price">
                                <img src="images/evro.svg" alt=""><p>от 8 евро</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clases__tile--hover">
                    <a href="class.html" class="button button--tile">подробнее</a>
                    <button class="button button--tile clases__popup--button">записаться на мероприятие</button>
                </div>
            </div>
        </div>
    </div>
</section>

[[$footer]]

[[$popup.modall]]

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</main>
</body>
</html>