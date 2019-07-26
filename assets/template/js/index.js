import 'babel-polyfill';
import $ from 'jquery';
import Swiper from 'swiper/dist/js/swiper';
import _ from 'lodash';

import './../sass/styles.scss';
// Hobbydom eyes animation
(function($) {
    "use strict";

    var defaultOptions = {
        padding: 0,
        reset: false,
        radius: 'natural',
        position: 'center',
        trigger: window
    };

    var positions = {
        top: 90,
        bottom: -90,
        left: 80,
        right: 0,
        topRight: 45,
        topLeft: 80,
        bottomRight: -45,
        bottomLeft: -80
    };

    function Iris($iris) {
        this.$iris = $iris;
        $iris.css('position', 'absolute');

        this.width  = $iris.outerWidth();
        this.height = $iris.outerHeight();

        this.resetOffset = function() {
            var offset = $iris.offset();
            this.offset = {
                x: offset.left + (this.width / 2) - parseInt($iris.css("left")),
                y: offset.top + (this.height / 2) - parseInt($iris.css("top"))
            };
        };
    }

    function Eye($eye, $iris) {
        this.$eye = $eye;

        $eye.css('position', 'relative');

        this.width  = $eye.width();
        this.height = $eye.height();

        this.iris   = new Iris($iris);

        this.pos = {
            x: (this.width - this.iris.width) / 2,
            y: (this.height - this.iris.height) / 2
        };

        $iris.css("left", this.pos.x + "px").css("top", this.pos.y + "px");

        this.padding = 0;
    }

    Eye.prototype.follow = function(mouse) {
        mouse.x = mouse.x - this.pos.x;
        mouse.y = mouse.y - this.pos.y;

        this.iris.resetOffset();

        var degree = Math.atan(( mouse.y - this.iris.offset.y) / ( mouse.x - this.iris.offset.x)),
            direction = (this.iris.offset.x > mouse.x) ? -1 : 1,
            newX = Math.cos(degree) * ((this.width - this.iris.width) / 2 - this.padding) * direction,
            newY = Math.sin(degree) * ((this.height - this.iris.height) / 2 - this.padding) * direction,
            radius = Math.sqrt(Math.pow(newX, 2) + Math.pow(newY, 2)),
            distance = Math.sqrt(Math.pow(mouse.y - this.iris.offset.y, 2) + Math.pow(mouse.x - this.iris.offset.x, 2));

        if (radius > distance) {
            this.iris.$iris.css("left", ( mouse.x - this.iris.offset.x + this.pos.x) + "px").css("top", (mouse.y - this.iris.offset.y + this.pos.y) + "px");
        } else {
            this.iris.$iris.css("left", this.pos.x + newX + "px").css("top", this.pos.y + newY + "px");
        }
    };

    Eye.prototype.setPosition = function(position) {
        if (position.x !== undefined && position.y !== undefined) {
            this.iris.$iris.css("left", this.pos.x - position.x + "px").css("top", this.pos.y - position.y + "px");
        } else if (typeof position === "number") {
            var deg = position * Math.PI / -180;
            this.iris.$iris.css("left", this.pos.x + Math.cos(deg) * (this.width / 2 - this.iris.width / 2 - this.padding) + "px").css("top", this.pos.y + Math.sin(deg) * (this.height / 2 - this.iris.height / 2 - this.padding) + "px");
        } else if (position === "center") {
            this.iris.$iris.css("left", this.pos.x + "px").css("top", this.pos.y + "px");
        } else if (positions[position] !== undefined) {
            var deg2 = positions[position] * Math.PI / -180;
            this.iris.$iris.css("left", this.pos.x + Math.cos(deg2) * (this.width / 2 - this.iris.width / 2 - this.padding) + "px").css("top", this.pos.y + Math.sin(deg2) * (this.height / 2 - this.iris.height / 2 - this.padding) + "px");
        }
    };

    $.fn.xeyes = function(options) {
        options = $.extend(defaultOptions, options);
        var padding = parseInt(options.padding, 10);
        var $trigger = $(options.trigger);

        this.each(function(index, irisEl) {
            var $iris = $(irisEl),
                $eye = $iris.parent();

            var eye = new Eye($eye, $iris);
            eye.padding = padding;

            if (options.radius == 'circular' && eye.width > eye.height)
                eye.width = eye.height;
            else if (options.radius == 'circular')
                eye.height = eye.width;

            eye.setPosition(options.position);

            $trigger.mousemove(function(e) {
                eye.follow({ x: e.pageX, y: e.pageY });
            });

            if (options.reset) {
                $trigger.mouseleave(function(e) {
                    eye.setPosition(options.position);
                });
            }
        });
    };
})($);

$(".iris").xeyes();
$(".iris").xeyes();

// search form
document.querySelectorAll('#search-button , #popup__search--close').forEach(function(element) {
    element.onclick = searchPopup;
});

function searchPopup() {
    document.querySelector('.popup__search').classList.toggle('popup__search--visible');
}

// color of label in form
function indexOfForm() {
    document.querySelectorAll('.check-input-chose-class').forEach(function(element) {
        element.onclick = choseClassColorLabel;
    });
}
indexOfForm();

function choseClassColorLabel() {
    this.nextElementSibling.classList.toggle('green-text');
    let buttonText = this.nextElementSibling.innerText;
    let dataLabel = this.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('sign-up__checkboxes--button')[0].dataset;

    if(dataLabel.label == 0) {
        this.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('sign-up__checkboxes--button')[0].innerText = '';
        console.log('cleared')
        dataLabel.label = 1;
    }


    if(dataLabel.label == 1) {
        this.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('sign-up__checkboxes--button')[0].innerText += buttonText + ', ' + ' ';
        console.log(dataLabel.label + 'second');
    }
}


// Top swiper
var mySwiper = new Swiper('.swiper-container-top', {
    navigation: {
        nextEl: '.swiper-button-next-top',
        prevEl: '.swiper-button-prev-top',
    },
    autoplay: {
        delay: 3000,
    },
    loop: true,
});

// Bottom swiper
var mySwiper2 = new Swiper('.swiper-container__feedback', {
    navigation: {
        nextEl: '.swiper-button-next__feedback',
        prevEl: '.swiper-button-prev__feedback',
    },
    autoplay: {
        delay: 5000,
    },
    loop: true,
});


//if the phone number form is empty



// sticky nav
var yourNavigation = $(".nav__wrapper");
var yourNavigationMobile = $(".nav__wrapper--mobile");
var stickyDiv = "sticky";
var yourHeader = $('.nav__top--wrapper , .b__cookies').height();

$(window).scroll(function() {
    if( $(this).scrollTop() > yourHeader ) {
        yourNavigation.addClass(stickyDiv);
    } else {
        yourNavigation.removeClass(stickyDiv);
    };
});
// sticky nav mobile
$(window).scroll(function() {
    if( $(this).scrollTop() > yourHeader ) {
        yourNavigationMobile.addClass(stickyDiv);
    } else {
        yourNavigationMobile.removeClass(stickyDiv);
    };
});

// remoove cookies when clicked + recalculate sticky start position
$(function() {
    $(".cookies-input").click(function() {
        $(".b__cookies").addClass("b__cookies--disable");
        yourHeader = $('.nav__top').height();
    });
});



// privat policy popup toggle
$(function() {
    $(".privat-policy").click(function() {
        $("#privat-policy-popup").toggleClass("popup__visible");
        $(".popup-substrate").toggleClass("popup__visible");
        $("body").toggleClass("fixed--body");
    });
    $(".popup-substrate, .popup__close").click(function() {
        $("#form-popup , #privat-policy-popup").removeClass("popup__visible");
        $(".popup-substrate").removeClass("popup__visible");
        $("body").removeClass("fixed--body");
    });
});
// form popup toggle
$(function() {
    $(".clases__popup--button , .events__popup--button").click(function() {
        $("#form-popup").toggleClass("popup__visible");
        $(".popup-substrate").toggleClass("popup__visible");
        $("body").toggleClass("fixed--body");
    });
    $(".popup-substrate, .popup__close").click(function() {
        $("#form-popup").removeClass("popup__visible");
        $(".popup-substrate").removeClass("popup__visible");
        $("body").removeClass("fixed--body");
    });

});
// mobile hamburger changed to clise icon
$(function() {
    $(".mobile__hamburger--wrapper").click(function() {
        $("body").toggleClass("fixed--body");
        $(".nav__wrapper--mobile").toggleClass("mobile__menu--visible");
    });
});

// toggle mobile language pocker
$(function() {
    $(".mobile__language-picker").click(function() {
        $(".mobile__language-picker").toggleClass("mobile__language-picker--active");
    });
});

// toggle filters
$(function() {
    $(".classes--age").click(function() {
        $(".classes__filter-1").toggleClass("classes__filter--active");
        $(".classes--age").toggleClass("classes__filters--button--active");
    });
    $(".classes--direction").click(function() {
        $(".classes__filter-2").toggleClass("classes__filter--active");
        $(".classes--direction").toggleClass("classes__filters--button--active");
    });
    $(".classes__filter").click(function(e) {
        e.stopPropagation();
    });
});
// let title = document.querySelectorAll('.class__subtitle');
// let array = [1,2,3];
// console.log(title);
// console.log(array);
// console.log($('.class__text--wrapper'));
//
// for(let i = 0; i < title.length; i++) {
//     title[i].onclick = function (e) {
//
//         // console.log(this.nextElementSibling);
//
//         let rolledElement = [this.nextElementSibling]
//         // let rolledElement = this.nextElementSibling;
//         console.log(rolledElement);
//
//         console.log(rolledElement[0].classList.contains('class__text--wrapper'));
//
//         if(rolledElement[0].classList.contains('class__text--wrapper')){
//
//             $('.class__text--wrapper').slideDown('normal').removeClass('active');
//         }
//         else{
//             $('.class__text--wrapper').slideUp('normal').addClass('active');
//         }
//     }
// }





window.onload = function () {
    if (window.innerWidth < 768) {
        $(".class__content--item .class__subtitle").click(function(){
            if ( $(this).parent().find('.class__text--wrapper').hasClass('active') )
            {
                $(this).parent().find('.class__text--wrapper').slideDown('normal').removeClass('active');
                $(this).parent().addClass('class__content--item-active');
            }
            else
            {
                $(this).parent().find('.class__text--wrapper').slideUp('normal').addClass('active');
                $(this).parent().removeClass('class__content--item-active');
                // console.log($(this).parent().find('.class__text--wrapper'))
            }
        });
        let classInfo = document.querySelectorAll('.class__text--wrapper');
        for (let i = 0; i < classInfo.length; i++) {
            classInfo[i].classList.value += ' active';
            console.log(classInfo[i].classList)
        }
    }
}

window.onload = function() {
    var counterOne = 1000;
    var counterTwo = 999;
    var checkboxesCounter = 100;
    var zIndexCounter = 100;
    document.querySelector(`#phone_number${counterOne}`).oninput = function () {
        if (this.value.length > 0) {
            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
            document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
        } else {
            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
            document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
        }

    };
    document.querySelector(`#sign-up__checkboxes${1000}`).onclick = function() {
        document.querySelector(`#sign-up__checkboxes${1000}`).classList.toggle('sign-up__checkboxes-visible')
    };
    $(function($){
        $(document).mouseup(function (e){ // close when clicked outside of form
            var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
            if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
            }
        });
    });
    document.querySelector(`#add-child${counterOne}`).onclick = function() {

        function nextChildCalc() {
            ++counterOne;
            var nextChild = `<input required class="sign-up__textfield" name="name" type="text" placeholder="Имя ребенка">
                            <input required class="sign-up__textfield" id="phone_number${counterOne}"  name="age" type="tel"  placeholder="Возраст" >
                            <a class="sign-up__textfield sign-up__checkboxes" id="sign-up__checkboxes${counterOne}" style="z-index: ${--zIndexCounter}">
                                <i>
                                    <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 200 200"><path d="M90.5 9a9.57 9.57 0 0 0-13.57-.35A9.45 9.45 0 0 0 76.59 22l77.76 79.85-77.76 77.75a9.63 9.63 0 0 0 0 13.4 9.86 9.86 0 0 0 7.13 3 9.39 9.39 0 0 0 6.78-3l84.37-84a9.88 9.88 0 0 0 0-13.57z" fill="#fff"></svg>
                                </i>
                                Выбрать занятие для себя
                                <div class="chose-clases">
                                    <div class="chose-clases--columns">
                                        <h3 class="chose-clases--header">Вы можете выбрать несколько занятий</h3>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3" >
                                            <label class="check-label" for="accept${checkboxesCounter++}">Аква мама</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Отцы и дети</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Роботехника</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Ранее музыкальнок развитие</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Клуб классных мамочек</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Гибкость и сила</label>
                                        </div>
                                        <div class="sign-up__checkbox">
                                            <input class="check-input" type="checkbox" id="accept${checkboxesCounter}" name="accept3">
                                            <label class="check-label" for="accept${checkboxesCounter++}">Аква мама</label>
                                        </div>
                                    </div>
                                </div>
                            </a>
            <a class="add-child add-more-child" id="add-child${counterOne}">
                                Записать еще одного ребенка
                            </a>`;
            return nextChild;
        }
        indexOfForm();
        document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
        document.querySelector(`#add-child${counterTwo}`).remove();



        document.querySelector(`#phone_number${counterOne}`).oninput = function () {
            if (this.value.length > 0) {
                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
            } else {
                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
            }

        };
        document.querySelector(`#sign-up__checkboxes${1001}`).onclick = function() {
            document.querySelector(`#sign-up__checkboxes${1001}`).classList.toggle('sign-up__checkboxes-visible')
        };
        $(function($){
            $(document).mouseup(function (e){ // close when clicked outside of form
                var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                    && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                    div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                }
            });
        });
        document.querySelector(`#add-child${counterOne}`).onclick = function() {
            indexOfForm();
            document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
            document.querySelector(`#add-child${counterTwo}`).remove();



            document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                if (this.value.length > 0) {
                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                    document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                } else {
                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                    document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                }

            };
            document.querySelector(`#sign-up__checkboxes${1002}`).onclick = function() {
                document.querySelector(`#sign-up__checkboxes${1002}`).classList.toggle('sign-up__checkboxes-visible')
            };
            $(function($){
                $(document).mouseup(function (e){ // close when clicked outside of form
                    var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                    if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                        && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                        div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                    }
                });
            });
            document.querySelector(`#add-child${counterOne}`).onclick = function() {
                indexOfForm();
                document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                document.querySelector(`#add-child${counterTwo}`).remove();




                document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                    if (this.value.length > 0) {
                        document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                        document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                    } else {
                        document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                        document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                    }

                };
                document.querySelector(`#sign-up__checkboxes${1003}`).onclick = function() {
                    document.querySelector(`#sign-up__checkboxes${1003}`).classList.toggle('sign-up__checkboxes-visible')
                };
                $(function($){
                    $(document).mouseup(function (e){ // close when clicked outside of form
                        var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                        if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                            && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                            div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                        }
                    });
                });
                document.querySelector(`#add-child${counterOne}`).onclick = function() {
                    indexOfForm();
                    document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                    document.querySelector(`#add-child${counterTwo}`).remove();




                    document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                        if (this.value.length > 0) {
                            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                            document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                        } else {
                            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                            document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                        }

                    };
                    document.querySelector(`#sign-up__checkboxes${1004}`).onclick = function() {
                        document.querySelector(`#sign-up__checkboxes${1004}`).classList.toggle('sign-up__checkboxes-visible')
                    };
                    $(function($){
                        $(document).mouseup(function (e){ // close when clicked outside of form
                            var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                            if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                            }
                        });
                    });
                    document.querySelector(`#add-child${counterOne}`).onclick = function() {
                        indexOfForm();
                        document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                        document.querySelector(`#add-child${counterTwo}`).remove();




                        document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                            if (this.value.length > 0) {
                                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                            } else {
                                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                            }

                        };
                        document.querySelector(`#sign-up__checkboxes${1005}`).onclick = function() {
                            document.querySelector(`#sign-up__checkboxes${1005}`).classList.toggle('sign-up__checkboxes-visible')
                        };
                        $(function($){
                            $(document).mouseup(function (e){ // close when clicked outside of form
                                var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                    && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                    div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                }
                            });
                        });
                        document.querySelector(`#add-child${counterOne}`).onclick = function() {
                            indexOfForm();
                            document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                            document.querySelector(`#add-child${counterTwo}`).remove();




                            document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                                if (this.value.length > 0) {
                                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                    document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                                } else {
                                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                    document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                                }

                            };
                            document.querySelector(`#sign-up__checkboxes${1006}`).onclick = function() {
                                document.querySelector(`#sign-up__checkboxes${1006}`).classList.toggle('sign-up__checkboxes-visible')
                            };
                            $(function($){
                                $(document).mouseup(function (e){ // close when clicked outside of form
                                    var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                    if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                        && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                        div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                    }
                                });
                            });
                            document.querySelector(`#add-child${counterOne}`).onclick = function() {
                                indexOfForm();
                                document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                                document.querySelector(`#add-child${counterTwo}`).remove();




                                document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                                    if (this.value.length > 0) {
                                        document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                        document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                                    } else {
                                        document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                        document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                                    }

                                };
                                document.querySelector(`#sign-up__checkboxes${1007}`).onclick = function() {
                                    document.querySelector(`#sign-up__checkboxes${1007}`).classList.toggle('sign-up__checkboxes-visible')
                                };
                                $(function($){
                                    $(document).mouseup(function (e){ // close when clicked outside of form
                                        var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                        if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                            && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                            div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                        }
                                    });
                                });
                                document.querySelector(`#add-child${counterOne}`).onclick = function() {
                                    indexOfForm();
                                    document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                                    document.querySelector(`#add-child${counterTwo}`).remove();





                                    document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                                        if (this.value.length > 0) {
                                            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                            document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                                        } else {
                                            document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                            document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                                        }

                                    };
                                    document.querySelector(`#sign-up__checkboxes${1008}`).onclick = function() {
                                        document.querySelector(`#sign-up__checkboxes${1008}`).classList.toggle('sign-up__checkboxes-visible')
                                    };
                                    $(function($){
                                        $(document).mouseup(function (e){ // close when clicked outside of form
                                            var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                            if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                                && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                                div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                            }
                                        });
                                    });
                                    document.querySelector(`#add-child${counterOne}`).onclick = function() {
                                        indexOfForm();
                                        document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                                        document.querySelector(`#add-child${counterTwo}`).remove();





                                        document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                                            if (this.value.length > 0) {
                                                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                                document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                                            } else {
                                                document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                                document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                                            }

                                        };
                                        document.querySelector(`#sign-up__checkboxes${1009}`).onclick = function() {
                                            document.querySelector(`#sign-up__checkboxes${1009}`).classList.toggle('sign-up__checkboxes-visible')
                                        };
                                        $(function($){
                                            $(document).mouseup(function (e){ // close when clicked outside of form
                                                var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                                if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                                    && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                                    div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                                }
                                            });
                                        });
                                        document.querySelector(`#add-child${counterOne}`).onclick = function() {
                                            indexOfForm();
                                            document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                                            document.querySelector(`#add-child${counterTwo}`).remove();





                                            document.querySelector(`#phone_number${counterOne}`).oninput = function () {
                                                if (this.value.length > 0) {
                                                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.add(`sign-up__checkboxes-hidden`);
                                                    document.querySelector(`#add-child${counterOne}`).classList.add(`add-child-visible`);
                                                } else {
                                                    document.querySelector(`#sign-up__checkboxes${counterOne}`).classList.remove(`sign-up__checkboxes-hidden`);
                                                    document.querySelector(`#add-child${counterOne}`).classList.remove(`add-child-visible`);
                                                }

                                            };
                                            document.querySelector(`#sign-up__checkboxes${1010}`).onclick = function() {
                                                document.querySelector(`#sign-up__checkboxes${1010}`).classList.toggle('sign-up__checkboxes-visible')
                                            };
                                            $(function($){
                                                $(document).mouseup(function (e){ // close when clicked outside of form
                                                    var div = $(".sign-up__checkboxes-visible"); // ??? ????????? ID ????????
                                                    if (!div.is(e.target) // ???? ???? ??? ?? ?? ?????? ?????
                                                        && div.has(e.target).length === 0) { // ? ?? ?? ??? ???????? ?????????
                                                        div.removeClass('sign-up__checkboxes-visible'); // ???????? ???
                                                    }
                                                });
                                            });
                                            document.querySelector(`#add-child${counterOne}`).onclick = function() {
                                                indexOfForm();
                                                document.querySelector(`#sign-up__checkboxes${++counterTwo}`).insertAdjacentHTML('afterend', nextChildCalc());
                                                document.querySelector(`#add-child${counterTwo}`).remove();





                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    }


};



