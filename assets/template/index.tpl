<!DOCTYPE html>
<html lang="ru">
<head>
    [[$head.meta]]
</head>
<body class="main">
<main>
[[$header.home]]
[[$section.hobbydom]]
[[$section.classes]]
[[$section.sign-up]]
<!--<section class="sign-up__success">
    <div class="sign-up__success--inner">
        <div class="sign-up__success--block">
            <p class="sign-up__success--thanks">Спасибо, что записались!</p>
            <p>Наш менеджер свяжется с вами в близжайшее время.</p>
            <img src="images/hobbydom_logo.svg" alt="">
        </div>
    </div>
</section>-->
<!--[[$section.events]]-->
[[$section.b_girls]]
[[$section.news]]
[[$section.subscribe]]

<!--    <section class="subscribe__success">-->
<!--        <div class="sign-up__success&#45;&#45;inner">-->
<!--            <div class="sign-up__success&#45;&#45;block">-->
<!--                <p class="sign-up__success&#45;&#45;thanks">Спасибо, что подписались!</p>-->
<!--                <p>Готово ;)  Первое письмо уже летит к вам на почту.</p>-->
<!--                <img src="images/hobbydom_logo.svg" alt="">-->
<!--            </div>-->
<!--        </div>-->
<!--    </section>-->
[[$section.feedback]]
[[$section.map]]


[[$footer]]

[[$popup.modall]]
</main>

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</body>
</html>
<script>
    import SignupForm from "./js/signup-form/components/signupForm";
    export default {
        components: {SignupForm}
    }
</script>
<script>
    import SignupPopup from "./js/signup-form/components/signupPopup";
    export default {
        components: {SignupPopup}
    }
</script>
