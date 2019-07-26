<section class="sign-up">
    <div class="sign-up--inner">

        <signup-form></signup-form>

        <signup-popup v-if="popupOpened"
                      @close="onPopupClose"
                      :class="{ success: popupFormSuccess }">
            <signup-form :types="types"
                         @success="onPopupFormSuccess"
            ></signup-form>
        </signup-popup>

    </div>
</section>