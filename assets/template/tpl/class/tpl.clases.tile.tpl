<div class="clases__tile">
    <img src="/[[+tv.class-image]]" alt="[[+pagetitle]]">
    <div class="clases__tile--bot">
        <div class="clases__tile--content">
            <p class="clases__tile--content-bold">[[+pagetitle]]</p>
            <p class="clases__tile--content-lite">[[+introtext]]</p>
            <div class="clases__tile--content-icons">

                <div class="clases--icons">
                    [[ClassIcons?&tv=`[[+tv.class-user-option]]` &allTitle=`0`]]
                </div>
                <div class="clases--price">
                    <img src="images/evro.svg" alt=""><p>[[%hobbydom_clases_price_ot? &topic=`hobbydom` &namespace=`hobbydom` ]][[+tv.price]][[%hobbydom_clases_price_evro? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>

                </div>
            </div>
        </div>
    </div>
    <div class="clases__tile--hover">
        <a class="clases__tile--hover-close"></a>
        <a href="/[[~[[+id]]]]" class="button button--tile">[[%hobbydom_clases_popup_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
        <button class="button button--tile clases__popup--button " @click="openPopup('[[+pagetitle]]')">[[%hobbydom_clases_popup_button? &topic=`hobbydom` &namespace=`hobbydom` ]]</button>
    </div>
</div>