<footer>
    <div class="footer__columns">
        <div class="footer__col">
            <div class="footer__col--top">
                <h6>[[%hobbydom_footer_top_hobbydom_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h6>
                [[pdoMenu?
                &parents=`0`
                &resources=`[[%hobbydom_footer_top_about? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                &showHidden=`1`
                &tpl=`@INLINE <li[[+classes]]><a href="/[[++cultureKey]]/[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>`
                ]]
            </div>
            <div class="footer__col--mid hide-on-desktop">
                <a class="footer--icons" href="[[%hobbydom_instagram? &topic=`hobbydom` &namespace=`hobbydom` ]]">
                    <img src="images/insta_footer.svg" alt=""></a>
                <a class="footer--icons" href="[[%hobbydom_facebook? &topic=`hobbydom` &namespace=`hobbydom` ]]">
                    <img src="images/fb_footer.svg" alt=""></a>
                <p>Designed by iden.team</p>
            </div>
            <div class="footer__col--bot">
                <p>© Hobbydom 2019</p>
            </div>
        </div>
        <div class="footer__col hide-on-mobile">
            <div class="footer__col--top">
                <h6>[[%hobbydom_footer_top_fast_link? &topic=`hobbydom` &namespace=`hobbydom` ]]</h6>
                [[pdoMenu?
                &parents=`0`
                &resources=`[[%hobbydom_footer_top_fast_res? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                &showHidden=`1`
                &tpl=`@INLINE <li[[+classes]]><a href="/[[++cultureKey]]/[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>`
                ]]
            </div>
            <div class="footer__col--bot">
                [[%hobbydom_footer_policy? &topic=`hobbydom` &namespace=`hobbydom` ]]
            </div>
        </div>
        <div class="footer__col hide-on-mobile">
            <div class="footer__col--top">
                <h6>[[%hobbydom_clases_home_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h6>
                [[pdoMenu?
                    &parents=`[[++parent_classes]]`
                    &showHidden=`1`
                    &tpl=`@INLINE <li[[+classes]]><a href="/[[++cultureKey]]/[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>`
                    &limit=`8`
                    &level=`1`
                ]]
            </div>
            <div class="footer__col--bot">
                [[%hobbydom_footer_offers? &topic=`hobbydom` &namespace=`hobbydom` ]]
            </div>
        </div>
        <div class="footer__col hide-on-mobile">
            <div class="footer__col--top">
                <h6>[[%hobbydom_last_event? &topic=`hobbydom` &namespace=`hobbydom` ]]</h6>
                <ul>
                    <!--<li><a href="">Лекция для будущих мам</a></li>
                    <li><a href="">Мастер-класс «Кукла своими руками»</a></li>
                    <li><a href="">Первый весенний пикник</a></li>
                    <li><a href="">Окткрытое занятие «Робототехника»</a></li-->
                    <li>[[%hobbydom_event_search? &topic=`hobbydom` &namespace=`hobbydom` ]]</li>
                </ul>
            </div>
            <div class="footer__col--bot">
                <p class="footer__col--bot-light">Designed by <a target="_blank" href="https://iden.team/">iden.team</a></p>
            </div>
        </div>
        <div class="footer__col">
            <div class="footer__col--top">
                [[%hobbydom_footer_col_top? &topic=`hobbydom` &namespace=`hobbydom` ]]
                <small>
                    total time: [^t^]<br/>
                    query time: [^qt^]<br/>
                    queries: [^q^]
                </small>
            </div>
            <div class="footer__col--bot hide-on-mobile">
                <a class="footer--icons" href="[[%hobbydom_instagram? &topic=`hobbydom` &namespace=`hobbydom` ]]">
                    <img src="images/insta_footer.svg" alt=""></a>
                <a class="footer--icons" href="[[%hobbydom_facebook? &topic=`hobbydom` &namespace=`hobbydom` ]]">
                    <img src="images/fb_footer.svg" alt=""></a>
            </div>
            <div class="footer__col--bot hide-on-desktop">
                [[%hobbydom_footer_policy? &topic=`hobbydom` &namespace=`hobbydom` ]]
                [[%hobbydom_footer_offers? &topic=`hobbydom` &namespace=`hobbydom` ]]
            </div>
        </div>
    </div>
</footer>