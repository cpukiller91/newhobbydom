<section class="news">
    <div class="news__inner">
        <h3>[[%hobbydom_news_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="news__tiles">
            [[pdoResources?
                &tpl=`tpl.news.item`
                &parents=`[[%hobbydom_parent_news? &topic=`hobbydom` &namespace=`hobbydom` ]]`
                &includeTVs=`article-prev`
            ]]
        </div>
        <a class="button button--pink" href="/[[~[[%hobbydom_parent_news? &topic=`hobbydom` &namespace=`hobbydom` ]]]]">[[%hobbydom_all_news? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
    </div>
</section>