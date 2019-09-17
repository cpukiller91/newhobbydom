<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body class="clases-page">
<main>
[[$header]]
<section class="clases__header">

</section>

<section class="news">
    <div class="news__inner">
        <h3>[[%hobbydom_news_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="news__tiles">
            [[pdoResources?
                &tpl=`tpl.news.item`
                &parents=`[[%hobbydom_parent_news? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                &includeTVs=`article-prev,article-tag`
            ]]
        </div>
        <!--div class="search__loader">
            <div class="loader loader-gray">
                <div class="loader-content">
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                </div>
            </div>
        </div>
        <div class="paginataion">
            <div class="pagintaion__left">
                <a href=""><img src="images/arrow_left_grey.svg" alt=""><p>назад</p></a>

            </div>
            <div class="pagintaion__right">
                <a href=""><p>далее</p><img src="images/arrow_right_grey.svg" alt=""></a>

            </div>
        </div-->
    </div>
</section>


[[$footer]]

[[$popup.modall]]
</main>


</body>
</html>
