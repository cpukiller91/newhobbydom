<section class="subscribe">
    <div class="subscribe--inner">
        [[!callBack?
            &tpl=`tpl.contact.item`
            &hooks=`email,callBackLog`
            &form=`tpl.subscribe.form`
            &validate=`phone:required,name:required`
            &emailTpl=`tpl.callBack.email`
            &registerCss=`0`
            &registerBootstrap=`0`
        ]]
    </div>
</section>