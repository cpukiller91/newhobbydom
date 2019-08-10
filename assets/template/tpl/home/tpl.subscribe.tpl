<form name="f1" role="form" method="POST" action="[[~[[*id]]]]" class="">
    <div class="modal-body">
        <p>[[%hobbydom_subscribe_form_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
        <input type="hidden" name="phone" value="+00000000000" data-mask="+0(000)000-00-00">
        <p class="sign-up--inner-rules">[[%hobbydom_subscribe_form_inner_rules? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
        <input required class="subscribe__textfield" name="name" type="text" placeholder="[[%hobbydom_contact_form_name? &topic=`hobbydom` &namespace=`hobbydom` ]]*" />
        <input required class="subscribe__textfield" name="email" type="email" placeholder="[[%hobbydom_contact_form_email? &topic=`hobbydom` &namespace=`hobbydom` ]]*" />
        [[%hobbydom_subscribe__checkbox_wrapper? &topic=`hobbydom` &namespace=`hobbydom` ]]
    </div>
    <div class="modal-footer">
        <button type="submit" class="callback-submit button button--white">ПОДПИСАТЬСЯ</button><i></i>
    </div>
</form>