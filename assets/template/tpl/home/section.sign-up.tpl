<!--<section class="sign-up">
    <div class="sign-up--inner">
        [[!callBack?
            &tpl=`tpl.contact.item`
            &hooks=`callBackLog`
            &form=`tpl.green.form`
            &validate=`phone:required,name:required`
            &emailTpl=`tpl.callBack.email`
            &registerCss=`0`
            &registerBootstrap=`0`
        ]]

    </div>
</section>-->
<signup-form></signup-form>

<signup-popup v-if="popupOpened"
              @close="onPopupClose"
              :class="{ success: popupFormSuccess }">
    <signup-form :types="types"
                 @success="onPopupFormSuccess"
    ></signup-form>
</signup-popup>