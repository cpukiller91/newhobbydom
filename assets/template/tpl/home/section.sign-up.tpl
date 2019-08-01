<section class="sign-up">
    <div class="sign-up--inner">
        <form name="f1" method="get" action="enter_data.php">
            <p>записаться на бесплатное занятие</p>
            <p class="sign-up--inner-rules">Лучше один раз попробовать, чем много раз читать отзывы:) <br class="hide-on-mobile">В Hobbydom любое первое занятие для вас — бесплатное. Просто заполните форму ниже и мы свяжемся с вами для обсуждения всех деталей.</p>
            <input required class="sign-up__textfield" name="name" type="text" placeholder="Имя*" />
            <input required class="sign-up__textfield" name="email" type="email" placeholder="E-mail*" />
            <input required class="sign-up__textfield" id="phone_number1000"  name="phone" type="tel"  placeholder="Телефон" />
            <div class="sign-up__textfield sign-up__checkboxes
           sign-up__checkboxes-hidden {* отвечает за свертывание и развертывание дива с мелкими чекбоксами*}
            sign-up__checkboxes-visible  {* отвечает за видимось кнопки которая свертывает и развертывает див с мелкими чекбоксами*}"
                 id="sign-up__checkboxes1000" style="z-index: 100;">


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
            </div>
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
</section>