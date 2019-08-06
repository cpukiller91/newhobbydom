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
                &includeTVs=`about-avatar`
                &includeContent=`1`
            ]]

        </div>
        <div class="about-us__category">
            <h5>наши администраторы</h5>
            [[pdoResources?
                &tpl=`about.worker.item`
                &parents=`35`
                &includeTVs=`about-avatar`
                &includeContent=`1`
            ]]
        </div>
        <div class="about-us__end-page">
            <img src="images/loader.svg" alt="">
            <p>Больше преподователей</p>
            <h6>наши партнеры</h6>
            <div>
                [[pdoResources?
                    &tpl=`about.partner.item`
                    &parents=`48`
                    &includeTVs=`about-partner`

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