<section class="feedback form-class">
    <div class="feedback__content">
        <h3>[[%hobbydom_feedback_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="swiper-container swiper-container__feedback">

            <div class="swiper-wrapper swiper-wrapperr__feedback">
                [[pdoResources?
                    &tpl=`tpl.feedback.item`
                    &parents=`[[%hobbydom_parent_feedback? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                    &includeTVs=`feedback_img_boy,feedback_img_prev`
                    &hideContainers=`1`
                ]]
            </div>

            <!-- Add Arrows -->
            <div class="swiper-button swiper-button-next swiper-button-next__feedback">
                <img src="images/arrow_right.svg" alt="">
            </div>
            <div class="swiper-button swiper-button-prev swiper-button-prev__feedback">
                <img src="images/arrow_left.svg" alt="">
            </div>
        </div>

    </div>
    <img class="feedback__pattern" src="images/pattern.png" alt="">
</section>
<section class="subscribe__success success" style="display: none;">
    <div class="sign-up__success&#45;&#45;inner">
        <div class="sign-up__success&#45;&#45;block">
            <p class="sign-up__success&#45;&#45;thanks">Спасибо, что подписались!</p>
            <p>Готово ;)  Первое письмо уже летит к вам на почту.</p>
            <img src="images/hobbydom_logo.svg" alt="">
        </div>
    </div>
</section>