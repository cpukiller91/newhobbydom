<section class="contacts-form form-class">
    <div class="subscribe--inner">
        <form role="form" method="POST" action="[[~[[*id]]]]" class="">
            <div class="modal-body">
                <p>[[%hobbydom_contact_form_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</p>
                <input type="hidden" name="phone" value="+00000000000" data-mask="+0(000)000-00-00">
                <input required class="subscribe__textfield" name="name" type="text" placeholder="[[%hobbydom_contact_form_name? &topic=`hobbydom` &namespace=`hobbydom` ]]*" />
                <input required class="subscribe__textfield" name="email" type="email" placeholder="[[%hobbydom_contact_form_email? &topic=`hobbydom` &namespace=`hobbydom` ]]*" />
                <input required class="subscribe__textfield" name="subject" type="text" placeholder="[[%hobbydom_contact_form_subject? &topic=`hobbydom` &namespace=`hobbydom` ]]" />
                <textarea  name="message" id="" cols="30" rows="10" placeholder="[[%hobbydom_contact_form_message? &topic=`hobbydom` &namespace=`hobbydom` ]]"></textarea>
            </div>
            <div class="modal-footer">
                <button type="submit" class="callback-submit button button--green">[[%hobbydom_contact_form_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</button><i></i>
            </div>
        </form>
    </div>
</section>
<section class="contacts__success success" style="display: none;">
    <div class="sign-up__success--inner">
        <div class="sign-up__success--block">
            <p class="sign-up__success--thanks">спасибо за обращение!</p>
            <p></p>
            <img src="images/hobbydom_logo.svg" alt="">
        </div>
    </div>
</section>


