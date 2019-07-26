<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body class="contacts">
[[$header]]
<section class="contacts__content">
    <div class="contacts__header">
        <h1>контакты</h1>
    </div>
    <div class="contacts__left">
        <div class="contacts__row">
            <div class="contacts__tile contacts__tile--img"><img src="images/contacts_map.jpg" alt=""></div>
            <div class="contacts__tile contacts__tile--img"><img src="images/contacts_img.jpg" alt=""></div>
            <div class="contacts__tile">
                <h4>Hobbydom 1</h4>
                <div class="contacts__tile--row">
                    <img src="images/locstion_pin.svg" alt=""><p>Юрмала, Шоссе Талсу 31-К9, LV-2016</p>
                </div>
                <div class="contacts__tile--row contacts__tile--row-phone">
                    <img src="images/phone_1.svg" alt="">
                    <div>
                        <div>
                            <a href="tel:+(371)6800008">+(371)6800008,</a>
                            <a href="tel:+(371)2900008">+(371)2900008,</a>
                        </div>
                        <div>
                            <a href="tel:+(371)2900008">+(371)2900008,</a>
                            <a href="tel:+(371)2900008">+(371)2900008</a>
                        </div>
                    </div>
                </div>
                <div class="contacts__tile--row">
                    <img src="images/working_time.svg" alt=""><p>Пн-Пт 9:00 - 19:00, Сб-Вс Выходные</p>
                </div>
                <div class="contacts__tile--row">
                    <img src="images/email.svg" alt=""><a href="mailto:info@hobbydom.lv">info@hobbydom.lv</a>
                </div>
                <div class="contacts__tile--row contacts__tile--row-link">
                    <img src="images/map.svg" alt=""><a href="#">Cмотреть на карте</a>
                </div>
                <div class="contacts__tile--row contacts__tile--row-link">
                    <img src="images/calendar.svg" alt=""><a href="shedule.html">Расписание занятий и мероприятий клуба</a>
                </div>
            </div>
        </div>
        <div class="contacts__row">
            <div class="contacts__tile contacts__tile--img"><img src="images/contacts_map.jpg" alt=""></div>
            <div class="contacts__tile contacts__tile--img"><img src="images/contacts_img.jpg" alt=""></div>
            <div class="contacts__tile">
                <h4>Hobbydom 1</h4>
                <div class="contacts__tile--row">
                    <img src="images/locstion_pin.svg" alt=""><p>Юрмала, Шоссе Талсу 31-К9, LV-2016</p>
                </div>
                <div class="contacts__tile--row contacts__tile--row-phone">
                    <img src="images/phone_1.svg" alt="">
                    <div>
                        <div>
                            <a href="tel:+(371)6800008">+(371)6800008,</a>
                        </div>
                    </div>
                </div>
                <div class="contacts__tile--row">
                    <img src="images/working_time.svg" alt=""><p>Пн-Пт 9:00 - 19:00, Сб-Вс Выходные</p>
                </div>
                <div class="contacts__tile--row">
                    <img src="images/email.svg" alt=""><a href="mailto:info@hobbydom.lv">info@hobbydom.lv</a>
                </div>
                <div class="contacts__tile--row contacts__tile--row-link">
                    <img src="images/map.svg" alt=""><a href="#">Cмотреть на карте</a>
                </div>
                <div class="contacts__tile--row contacts__tile--row-link">
                    <img src="images/calendar.svg" alt=""><a href="shedule.html">Расписание занятий и мероприятий клуба</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="contacts-form">
    <div class="subscribe--inner">
        <form name="f1" method="get" action="enter_data.php">
            <p>напишите нам</p>
            <input required class="subscribe__textfield" name="name" type="text" placeholder="Имя*" />
            <input required class="subscribe__textfield" name="email" type="email" placeholder="E-mail*" />
            <input required class="subscribe__textfield" name="email" type="text" placeholder="Тема письма" />
            <textarea  name="textarea" id="" cols="30" rows="10" placeholder="Текст письма"></textarea>
            <input class="button button--green" type="submit" name="enter" value="отправить" />
        </form>
    </div>
</section>
[[$footer]]

[[$popup.modall]]

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</body>
</html>