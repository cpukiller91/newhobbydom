<!--section class="popup" id="popup__success">
    <div class="popup__inner">
        <a class="popup__close"></a>
        <div class="popup__content">
            <p>
                Вы успешно записались на занятие!
            </p>
        </div>
    </div>
</section-->
<div class="popup__form">
    <div class="popup__search--wrapper">
        <button id="popup__form--close" class="popup__search--close-class"></button>
        <section class="sign-up">
            <div class="sign-up--inner sign-up--inner__class">
                <!--                <form name="f1" method="get" action="enter_data.php">-->
                <!--                    <p>записаться занятие</p>-->
                <!--                    <p class="sign-up&#45;&#45;inner-rules">Лучше один раз попробовать, чем много раз читать отзывы:)  В Hobbydom любое первое занятие для вас — бесплатное. Просто заполните форму ниже и мы свяжемся с вами для обсуждения всех деталей.</p>-->
                <!--                    <input required class="sign-up__textfield" name="name" type="text" placeholder="Имя*" />-->
                <!--                    <input required class="sign-up__textfield" name="email" type="email" placeholder="E-mail*" />-->
                <!--                    <input required class="sign-up__textfield" id="phone_number3000"  name="phone" type="tel"  placeholder="Телефон" />-->
                <!--                    <div class="sign-up__checkbox-wrapper-popup">-->
                <!--                        <div class="sign-up__checkbox">-->
                <!--                            <input class="check-input" type="checkbox" id="acept111" name="accept3" required="">-->
                <!--                            <label class="check-label" for="acept111">Записать себя</label>-->
                <!--                        </div>-->
                <!--                        <div class="sign-up__checkbox">-->
                <!--                            <input class="check-input" type="checkbox" id="acept112" required="" name="accept4">-->
                <!--                            <label class="check-label" for="acept112">Записать ребенка</a></label>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                    <div class="sign-up__checkbox-wrapper">-->
                <!--                        <div class="sign-up__checkbox">-->
                <!--                            <input class="check-input" type="checkbox" id="acept1" name="accept3" required="">-->
                <!--                            <label class="check-label" for="acept1">Я знаком с <a class="accept-link" href="https://hobbydom.hosteam.pro/politika-konfidencialnosti.html">соглашением</a> и согласен с ним</label>-->
                <!--                        </div>-->
                <!--                        <div class="sign-up__checkbox">-->
                <!--                            <input class="check-input" type="checkbox" id="acept2" required="" name="accept4">-->
                <!--                            <label class="check-label" for="acept2">Я соглашаюсь на <a class="accept-link" href="https://hobbydom.hosteam.pro/publichnyj-dogovor-oferty.html">обработку персональных данных</a></label>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                    <input class="button button&#45;&#45;white" type="submit" name="enter" value="записаться" />-->
                <!--                </form>-->
                <form name="f1" method="get" action="enter_data.php">
                    <p>записаться на занятие</p>
                    <p class="sign-up--inner-rules">Лучше один раз попробовать, чем много раз читать отзывы:) <br class="hide-on-mobile">В Hobbydom любое первое занятие для вас — бесплатное. Просто заполните форму ниже и мы свяжемся с вами для обсуждения всех деталей.</p>
                    <input required class="sign-up__textfield" name="name" type="text" placeholder="Имя*" />
                    <input required class="sign-up__textfield" name="email" type="email" placeholder="E-mail*" />
                    <input required class="sign-up__textfield" id="phone_number1000"  name="phone" type="tel"  placeholder="Телефон" />
                    <a class="sign-up__textfield sign-up__checkboxes" id="sign-up__checkboxes1000" style="z-index: 100;">
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 200 200"><path d="M90.5 9a9.57 9.57 0 0 0-13.57-.35A9.45 9.45 0 0 0 76.59 22l77.76 79.85-77.76 77.75a9.63 9.63 0 0 0 0 13.4 9.86 9.86 0 0 0 7.13 3 9.39 9.39 0 0 0 6.78-3l84.37-84a9.88 9.88 0 0 0 0-13.57z" fill="#fff"/></svg>
                        </i>
                        <p class="sign-up__checkboxes--button" data-label="0">Выбрать занятие для себя</p>
                        <div class="chose-clases">

                            <div class="chose-clases--columns">
                                <h3 class="chose-clases--header">Вы можете выбрать несколько занятий</h3>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept11" name="accept11">
                                    <label class="check-label" for="accept11">Аква мама</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept12" name="accept12">
                                    <label class="check-label" for="accept12">Отцы и дети</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept13" name="accept13">
                                    <label class="check-label" for="accept13">Роботехника</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept14" name="accept14">
                                    <label class="check-label" for="accept14">Ранее музыкальнок развитие</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept15" name="accept15">
                                    <label class="check-label" for="accept15">Клуб классных мамочек</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept16" name="accept16">
                                    <label class="check-label" for="accept16">Гибкость и сила</label>
                                </div>
                                <div class="sign-up__checkbox">
                                    <input class="check-input check-input-chose-class" type="checkbox" id="accept17" name="accept17">
                                    <label class="check-label" for="accept17">Аква мама</label>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a class="add-child" id="add-child1000">
                        Записать ребенка
                    </a>
                    <div class="sign-up__checkbox-wrapper">
                        <div class="sign-up__checkbox">
                            <input class="check-input" type="checkbox" id="acept1" name="accept3" required="">
                            <label class="check-label" for="acept1">Я знаком с <a class="accept-link" href="https://hobbydom.hosteam.pro/politika-konfidencialnosti.html">соглашением</a> и согласен с ним</label>
                        </div>
                        <div class="sign-up__checkbox">
                            <input class="check-input" type="checkbox" id="acept2" required="" name="accept4">
                            <label class="check-label" for="acept2">Я соглашаюсь на <a class="accept-link" href="https://hobbydom.hosteam.pro/publichnyj-dogovor-oferty.html">обработку персональных данных</a></label>
                        </div>
                    </div>
                    <input class="button button--white button-disabled" type="submit" name="enter" value="записаться" />
                </form>
            </div>
            <!--            <section class="sign-up__success">-->
            <!--                <div class="sign-up__success&#45;&#45;inner">-->
            <!--                    <div class="sign-up__success&#45;&#45;block">-->
            <!--                        <p class="sign-up__success&#45;&#45;thanks">Спасибо, что записались!</p>-->
            <!--                        <p>Наш менеджер свяжется с вами в близжайшее время.</p>-->
            <!--                        <img src="images/hobbydom_logo.svg" alt="">-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </section>-->
        </section>
    </div>
</div>
<div class="popup__search">

    <div class="popup__search--wrapper">
        <button id="popup__search--close"></button>
        <div class="popup__search--content">
            <div class="popup__searchfield">
                <h5 class="popup__search--header">поиск</h5>
                <input type="text" placeholder="введите слово">
                <div class="search__not-found">
                    <p>К сожалению по вашемо запросу ничего не найдено.</p>
                    <p>Свяжитесь с нами и мы обязательно поможем найти вам то, что вы ищете</p>
                    <a href="tel:+(371)6800008">+(371)6800008</a>,
                    <a href="tel:+(371)2900008">+(371)2900008</a>.
                </div>

            </div>
            <div class="popup__search-results">
                <div class="search__loader">
                    <div class="loader loader-green">
                        <div class="loader-content">
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                            <div class="dot"></div>
                        </div>
                    </div>
                </div>
                <div class="search__results">
                    <div class="clases__tile">
                        <img src="images/clases1.png" alt="">
                        <div class="clases__tile--bot">
                            <div class="clases__tile--content">
                                <p class="clases__tile--content-bold">Аква мама</p>
                                <p class="clases__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <div class="clases__tile--content-icons">
                                    <p>занятия</p>
                                </div>
                            </div>
                        </div>
                        <div class="clases__tile--hover">
                            <a href="class.html" class="button button--tile">подробнее</a>
                            <button class="button button--tile clases__popup--button">записаться на мероприятие</button>
                        </div>
                    </div>
                    <div class="clases__tile">
                        <img src="images/clases1.png" alt="">
                        <div class="clases__tile--bot">
                            <div class="clases__tile--content">
                                <p class="clases__tile--content-bold">Аква мама</p>
                                <p class="clases__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <div class="clases__tile--content-icons">
                                    <p>занятия</p>
                                </div>
                            </div>
                        </div>
                        <div class="clases__tile--hover">
                            <a href="class.html" class="button button--tile">подробнее</a>
                            <button class="button button--tile clases__popup--button">записаться на мероприятие</button>
                        </div>
                    </div>
                    <div class="news__tile">
                        <img src="images/news-tile-2.jpg" alt="">
                        <div class="news__tile--bot">
                            <div class="news__tile--content">
                                <p class="news__tile--content-bold">HobyDom предлагает новые
                                    и увлекательные занятия</p>
                                <p class="news__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <p class="news__tile--content-articles">статьи</p>
                            </div>
                        </div>
                    </div>
                    <div class="news__tile">
                        <img src="images/news-tile-2.jpg" alt="">
                        <div class="news__tile--bot">
                            <div class="news__tile--content">
                                <p class="news__tile--content-bold">HobyDom предлагает новые
                                    и увлекательные занятия</p>
                                <p class="news__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <p class="news__tile--content-articles">статьи</p>
                            </div>
                        </div>
                    </div>
                    <div class="events__tile">
                        <img src="images/news-tile-2.jpg" alt="">
                        <div class="events__tile--bot">
                            <div class="events__tile--content">
                                <p class="events__tile--content-bold">HobyDom предлагает новые
                                    и увлекательные занятия</p>
                                <p class="events__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <p class="events__tile--content-articles">мероприятия</p>
                            </div>
                        </div>
                    </div>
                    <div class="events__tile">
                        <img src="images/news-tile-2.jpg" alt="">
                        <div class="events__tile--bot">
                            <div class="events__tile--content">
                                <p class="events__tile--content-bold">HobyDom предлагает новые
                                    и увлекательные занятия</p>
                                <p class="events__tile--content-lite">Это самая приятная, безопасная и в то же время наиболее эффективная физическая нагрузка для будущей мамы!</p>
                                <p class="events__tile--content-articles">мероприятия</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="popup-substrate"></div>