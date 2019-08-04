<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<div style="display: none" class="childrenClone">
    <input class="sign-up__textfield" name="Chilname[]" type="text" placeholder="Имя ребенка" />
    <input class="sign-up__textfield" name="Chilage[]" type="number"  placeholder="Возраст" />
    <a class="sign-up__textfield sign-up__checkboxes sign-up__checkboxes-hidden " style="z-index: 100;">
        <i>
            <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 200 200"><path d="M90.5 9a9.57 9.57 0 0 0-13.57-.35A9.45 9.45 0 0 0 76.59 22l77.76 79.85-77.76 77.75a9.63 9.63 0 0 0 0 13.4 9.86 9.86 0 0 0 7.13 3 9.39 9.39 0 0 0 6.78-3l84.37-84a9.88 9.88 0 0 0 0-13.57z" fill="#fff"/></svg>
        </i>
        <p class="sign-up__checkboxes--button" data-label="0">Выбрать занятие для ребенка</p>
        <div class="chose-clases">

            <div class="chose-clases--columns">
                <h3 class="chose-clases--header">Вы можете выбрать несколько занятий</h3>
                [[pdoMenu?
                &tplOuter=`@INLINE [[+wrapper]]`
                &tpl=`tpl.green.checkbox`
                &parents=`4`
                ]]
            </div>
        </div>
    </a>
</div>
<form name="f1" method="get" action="/">
    <p>записаться на бесплатное занятие</p>
    <p class="sign-up--inner-rules">Лучше один раз попробовать, чем много раз читать отзывы:) <br class="hide-on-mobile">В Hobbydom любое первое занятие для вас — бесплатное. Просто заполните форму ниже и мы свяжемся с вами для обсуждения всех деталей.</p>
    <input required class="sign-up__textfield" name="Parentname" type="text" placeholder="Имя*" />
    <input required class="sign-up__textfield" name="Parentemail" type="email" placeholder="E-mail*" />
    <input class="sign-up__textfield" id="phone_number1000"  name="Parentphone" type="tel"  placeholder="Телефон" />
    <!--
            sign-up__checkboxes-hidden {* отвечает за свертывание и развертывание дива с мелкими чекбоксами*}
            sign-up__checkboxes-visible  {* отвечает за видимось кнопки которая свертывает и развертывает див с мелкими чекбоксами*}
    -->

    <div class="sign-up__textfield sign-up__checkboxes sign-up__checkboxes-hidden" id="sign-up__checkboxes1000" style="z-index: 100;">

        <i>
            <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 200 200"><path d="M90.5 9a9.57 9.57 0 0 0-13.57-.35A9.45 9.45 0 0 0 76.59 22l77.76 79.85-77.76 77.75a9.63 9.63 0 0 0 0 13.4 9.86 9.86 0 0 0 7.13 3 9.39 9.39 0 0 0 6.78-3l84.37-84a9.88 9.88 0 0 0 0-13.57z" fill="#fff"/></svg>
        </i>
        <p class="sign-up__checkboxes--button" data-label="0" id="self-class">Выбрать занятие для себя</p>
        <div class="chose-clases ">

            <div class="chose-clases--columns">
                <h3 class="chose-clases--header">Вы можете выбрать несколько занятий</h3>

                [[pdoMenu?
                    &tplOuter=`@INLINE [[+wrapper]]`
                    &tpl=`tpl.green.checkbox`
                    &parents=`4`
                ]]

            </div>
        </div>
    </div>
    <div class="containerClone">

    </div>
    <a class="add-child" id="add-child1000">
        Записать ребенка
    </a>

    <div class="sign-up__checkbox-wrapper">
        <div class="sign-up__checkbox">
            <input class="check-input" type="checkbox" id="acept1" name="accept3" required="">
            <label class="check-label" for="acept1">Я знаком с <a class="accept-link" href="https://hobbydom.hosteam.pro/politika-konfidencialnosti.html">соглашением</a> и согласен с ним</label>
        </div>
        <div class="sign-up__checkbox">
            <input class="check-input" type="checkbox" id="acept2" required="" name="accept4">
            <label class="check-label" for="acept2">Я соглашаюсь на <a class="accept-link" href="https://hobbydom.hosteam.pro/publichnyj-dogovor-oferty.html">обработку персональных данных</a></label>
        </div>
    </div>
    <input class="button button--white button-disabled" type="submit" name="enter" value="записаться" />
</form>

<script>

    $( document ).ready(function(){
        $('form[name=f1]').on("DOMSubtreeModified", function() {
            $(".sign-up__checkboxes-hidden").on('click' , function() {
                $(this).toggleClass("sign-up__checkboxes-visible");
                //$(this).toggleClass("sign-up__checkboxes-visible");
                if($(this).hasClass('sign-up__checkboxes-visible') === true){
                    $(this).attr('hide','hhhh');
                    console.log('hide');
                }else{
                    $(this).attr('show','sssss');
                    console.log('show');
                }
                return false;
                //console.log( "window loaded" + $(this).hasClass('sign-up__checkboxes-visible'));
            });
        });

        $(".add-child").click(function() {

            $(".containerClone").append($(".childrenClone").html());

        });

        // $("#sign-up__checkboxes1000").click(function() {
        //     $(this).toggleClass("sign-up__checkboxes-visible");
        // });

        $("input[required]").change(function() {
            if($("input[name='name']").val()!="" && $("input[name='email']").val()!=""){
                $(".button-disabled").removeClass("button-disabled");
            }
            return false;
        });
        $("input[name='phone']").change(function() {
            $("#sign-up__checkboxes1000").show();
            return false;
        });

        // $(".sign-up__checkboxes-hidden").on('click' , function() {
        //     $(this).toggleClass("sign-up__checkboxes-visible");
        // });
    });

    $( window ).on( "load", function() {
        //console.log( "window loaded" );
    });
</script>