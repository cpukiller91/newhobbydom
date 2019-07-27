<section class="contacts-form">
    <div class="subscribe--inner">
        <form role="form" method="POST" action="[[~[[*id]]]]" class="">
            <div class="modal-body">
                <p>напишите нам</p>
                <input type="hidden" name="phone" value="+00000000000" data-mask="+0(000)000-00-00">
                <input required class="subscribe__textfield" name="name" type="text" placeholder="Имя*" />
                <input required class="subscribe__textfield" name="email" type="email" placeholder="E-mail*" />
                <input required class="subscribe__textfield" name="subject" type="text" placeholder="Тема письма" />
                <textarea  name="message" id="" cols="30" rows="10" placeholder="Текст письма"></textarea>
                <!--input class="button button--green" type="submit" name="enter" value="отправить" /-->
            </div>
            <div class="modal-footer">
                <button type="submit" class="callback-submit button button--green">[[%callback.submit]]</button><i></i>
                <button type="button" class="callback-close btn btn-success center-block hidden" data-dismiss="modal" aria-hidden="true">[[%callback.close]]</button>
            </div>
        </form>
    </div>
</section>


