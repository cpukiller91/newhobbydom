<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body>
<main>
[[$header]]
<section class="about-us__content">
    <div class="about-us__header">
        <h1>[[*pagetitle]]</h1>
    </div>
    <div class="about-us__left">
        <div class="about-us__slider">
            <div class="about-us__slider--left">
                <div class="slider">
                    <div class="slide_viewer">
                        <div class="slide_group">
                            <div class="slide">
                                <div class="article__slider">
                                    <iframe width="709" height="416" src="https://www.youtube.com/embed/wLX8mfhs0Mg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    <div class="article__slider--info">
                                        <div class="article__slider--text">
                                            <div>
                                                <span class="article__slider--page">1 / 2</span>
                                                <!--p>Краткое описание учителя, его достижения и методы обучения.</p-->
                                            </div>
                                        </div>
                                        <div class="article__slider--controls">
                                            <div class="article__slider--left">
                                                <svg class=" previous_btn-scroll1" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><defs></defs><title>arrow_left_pink</title><path class="cls-1 cls-2" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-1" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                            </div>
                                            <div class="article__slider--right">
                                                <svg class="next_btn_scroll1" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><defs></defs><title>arrow_left_pink</title><path class="cls-1 cls-2" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-1" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            [[ms2Gallery?
                                &tplOuter=`tpl.about-us.outer`
                                &tplEmpty=`tpl.ms2Gallery.empty1`
                                &tplRow=`about.slider.gallery`
                            ]]
                        </div>
                    </div>
                </div>
            </div>
            <div class="about-us__slider--right">
                [[*content]]

            </div>
        </div>
    </div>
</section>
<div class="pattern-img">
    <img src="images/pattern.png" alt="">
</div>
<section class="about-us__content">
    <div class="about-us__left">
        <div class="about-us__category">
            <h5>руководитель клуба</h5>
            [[pdoResources?
                &tpl=`about.worker.item`
                &parents=`34`
                &includeTVs=`about-avatar,about-email,about-phone1`
                &includeContent=`1`
            ]]

        </div>

        <div class="about-us__category">
            <h5>наши администраторы</h5>
            [[pdoResources?
                &tpl=`about.worker.item`
                &parents=`35`
                &includeTVs=`about-avatar,about-phone1,about-email`
                &includeContent=`1`
            ]]
        </div>

        <div class="about-us__category">
            <h5>НАШИ ПЕДАГОГИ</h5>

                [[pdoResources?
                &tpl=`about.worker.item`
                &parents=`45`
                &includeTVs=`about-avatar,about-email,about-phone1,class-list`
                &includeContent=`1`
                ]]

        </div>

        <div class="about-us__end-page">
            <img src="images/loader.svg" alt="">
            <!--p>Больше преподователей</p-->
            <h6>наши партнеры</h6>
            <div>
                [[pdoResources?
                    &tpl=`about.partner.item`
                    &parents=`48`
                    &includeTVs=`about-partner,partner-url`

                ]]
            </div>
        </div>

    </div>
</section>
[[$footer]]

[[$popup.modall]]
</main>

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</body>
</html>