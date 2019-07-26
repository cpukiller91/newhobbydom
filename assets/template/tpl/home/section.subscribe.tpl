<section class="subscribe">
    <div class="subscribe--inner">
        <form name="f1" method="get" action="enter_data.php">
            <p>подписаться на рассылку</p>
            <p class="sign-up--inner-rules">Мы будем присылать только важную информацию о ваших занятиях и новых мероприятиях в Hobbydom. Никакой рекламы или спама.</p>
            <input required class="subscribe__textfield" name="name" type="text" placeholder="Имя*" />
            <input required class="subscribe__textfield" name="email" type="email" placeholder="E-mail*" />
            <div class="subscribe__checkbox-wrapper">
                <div class="subscribe__checkbox">
                    <input class="check-input" type="checkbox" id="accept" name="accept3" required="">
                    <label class="check-label" for="accept3">Я знаком с <a class="accept-link" href="https://hobbydom.hosteam.pro/politika-konfidencialnosti.html">соглашением</a> и согласен с ним</label>
                </div>
                <div class="subscribe__checkbox">
                    <input class="check-input" type="checkbox" id="accept" required="" name="accept4">
                    <label class="check-label" for="accept4">Я соглашаюсь на <a class="accept-link" href="https://hobbydom.hosteam.pro/publichnyj-dogovor-oferty.html">обработку персональных данных</a></label>
                </div>
            </div>
            <input class="button button--white" type="submit" name="enter" value="подписаться" />
        </form>
    </div>
</section>