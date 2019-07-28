<section class="subscribe">
    <div class="subscribe--inner">

        [[!callBack?
            &tpl=`tpl.contact.item`
            &hooks=`mChimpXSubscribe,email,callBackLog`
            &form=`tpl.subscribe.form`
            &validate=`phone:required,name:required`
            &emailTpl=`tpl.callBack.email`
            &registerCss=`0`
            &registerBootstrap=`0`
            &mcApiKey=`[[++mchimpx.mcApiKey]]`
            &mcListId=`[[++mchimpx.mcListId]]`
            &mcEmailField=`email`
        ]]
    </div>
</section>