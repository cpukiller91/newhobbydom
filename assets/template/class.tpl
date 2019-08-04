<!DOCTYPE html>
<html lang="ru">
<head>
[[$head.meta]]
</head> 
<body class="class__page">
<main>
[[$header]]
[[$article.header]]
<section class="article__content">
    <div class="article__left">
        <section class="article__header">
            <img src="/[[*class-image-detail]]" alt="" class="article__main-img">

            <div class="class__target-customers">
                [[*type-class]]
            </div>
        </section>
    </div>
    <div class="article__right">
        <div class="class__right--info">
            <div class="class__right--row">
                <div><img src="images/local_pin_blue.svg" alt=""><p>Slokas iela 69, LV-2015</p></div>
                <div><img src="images/local_pin_blue.svg" alt=""><p>Шоссе Талсу 31-К9, LV-2016</p></div>
            </div>
            <div class="class__right--row class__right--row-icons">
                [[ClassIcons?&tv=`[[*class-user-option]]` &allTitle=`1` &prefix=`_blue`]]
            </div>
            <div class="class__right--row">
                <div>
                    <img src="images/evro_blue.svg" alt=""><p>от [[*price]] евро</p><img src="images/clock_blue.svg" alt=""><p>[[*time]] минут</p>
                </div>
            </div>
            <div class="class__right--row">
                [[*class-free:is=`1`:then=`
                    <div>
                        <img src="images/gift_blue.svg" alt=""><p class="class__info--green">Певрое занятие бесплатное!</p>
                    </div>
                `]]

            </div>
            <a @click="openPopup('[[+pagetitle]]')" class="button button--green">[[%hobbydom_clases_popup_button? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
        </div>
    </div>
</section>
<section class="article__content article__content--second">
    <div class="article__left">
        [[*content]]
        <a @click="openPopup('[[+pagetitle]]')" class="button button--green">[[%hobbydom_clases_popup_button? &topic=`hobbydom` &namespace=`hobbydom` ]]</a>
    </div>
    <div class="article__right">
        <div class="article__right--vidgets">
            <div class="slider3">
                <div class="slide_viewer">
                    <div class="slide_group3">
                        <div class="slide3">
                            <div class="class__scrollable--info">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll3" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll3" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Тамара</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="slide3">
                            <div class="class__scrollable--info">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll3" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll3" id="Layer_2" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Цауркубуле</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slider2">
                <div class="slide_viewer">
                    <div class="slide_group2">
                        <div class="slide2">
                            <div class="class__scrollable--info">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll2" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll2" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Тамара</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="slide2">
                            <div class="class__scrollable--info">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll2" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll2" id="Layer_2" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Цауркубуле Цауркубуле Цауркубуле</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider">
                <div class="slide_viewer">
                    <div class="slide_group">
                        <div class="slide">
                            <div class="class__scrollable--info class__scrollable--info-yellow">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll1" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll1" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Тамара</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="class__scrollable--info class__scrollable--info-yellow">
                                <h4 class="scrollable__info--title">отзывы о клубе</h4>
                                <div class="scrollable__info--controls">
                                    <a>
                                        <svg class="scrollable__info--controll previous_btn-scroll1" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_left_incircle_blue</title><path class="cls-1" d="M119.64,153.64a5.5,5.5,0,0,0,7.8.2,5.43,5.43,0,0,0,.2-7.7L83,100.26l44.68-44.68a5.54,5.54,0,0,0,0-7.7,5.67,5.67,0,0,0-4.1-1.7,5.4,5.4,0,0,0-3.9,1.7L71.16,96.16a5.68,5.68,0,0,0,0,7.8Z"/><path class="cls-2" d="M100.37,193.37A92.6,92.6,0,0,1,34.89,35.3a92.6,92.6,0,0,1,131,131A92,92,0,0,1,100.37,193.37Zm0-176.5a83.9,83.9,0,1,0,83.9,83.9A84,84,0,0,0,100.37,16.87Z"/></svg>
                                    </a>
                                    <img class="scrollable__info--img" src="images/teacher.png" alt="">
                                    <a>
                                        <svg class="scrollable__info--controll next_btn_scroll1" id="Layer_2" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200"><title>arrow_right_incircle_blue</title><path class="cls-1" d="M81.09,47.9a5.5,5.5,0,0,0-7.8-.2,5.43,5.43,0,0,0-.2,7.7l44.68,45.88L73.1,146a5.54,5.54,0,0,0,0,7.7,5.67,5.67,0,0,0,4.1,1.7,5.4,5.4,0,0,0,3.9-1.7l48.48-48.28a5.68,5.68,0,0,0,0-7.8Z"/><path class="cls-2" d="M100.37,8.18a92.6,92.6,0,0,1,65.48,158.07,92.6,92.6,0,0,1-131-131A92,92,0,0,1,100.37,8.18Zm0,176.5a83.9,83.9,0,1,0-83.9-83.9A84,84,0,0,0,100.37,184.67Z"/></svg>
                                    </a>
                                </div>
                                <p class="scrollable__info--name">Цауркубуле</p>
                                <div class="scrollable__info--text">
                                    <p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda, deserunt eius eveniet fuga libero, magnam minima molestiae nesciunt non optio quibusdam quos repellendus reprehenderit repudiandae, sed soluta tempora voluptas.</span><span>Ad aperiam at corporis dolores eveniet explicabo facilis illo, necessitatibus odit quasi reiciendis repellat repudiandae voluptate. Consectetur, eaque, enim. Architecto doloremque eligendi facilis modi neque nihil odio pariatur. Necessitatibus, quidem!</span><span>Aliquam asperiores dolore et excepturi quos! Cum doloremque fuga modi necessitatibus quas quidem repellendus, tenetur. Ab, aliquid cumque earum enim eveniet itaque laudantium pariatur perferendis porro repudiandae tempore, veritatis voluptatibus?</span><span>Amet dicta impedit nisi quo repudiandae sed totam. Ab aliquam animi architecto consectetur, consequatur distinctio ex, id libero molestiae necessitatibus nisi omnis quae quam sunt, vel vitae voluptas? Ducimus, voluptates.</span><span>Aspernatur consequuntur cupiditate delectus dicta, doloribus ea error excepturi explicabo ipsum iusto laboriosam laborum libero magni maiores modi necessitatibus nobis non nostrum numquam omnis optio, quia reprehenderit, sit temporibus ut?</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="article__events">
                <h3>наши мероприятия</h3>
                <div class="article__events--content">
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                    <div class="article__event">
                        <div class="article__event--date">
                            <span class="event--date">29</span>
                            <span class="event--month">сентября</span>
                            <span class="event--time">12:00</span>
                        </div>
                        <div class="article__event--descr">
                            <p>Лекция на тему: «Как воспитывать ребенка»</p>
                        </div>
                    </div>
                </div>
                <a href="" class="button button--yellow">все мероприятия</a>
            </div>-->
            <!--<div class="article__shedule">
                <img src="images/calendar_pink.svg" alt=""><a>Расписания всех занятий и мероприятий</a>
            </div>-->
        </div>
    </div>
</section>
<section class="clases">
    <div class="clases__inner">
        <h3>[[%hobbydom_clases_other_title? &topic=`hobbydom` &namespace=`hobbydom` ]]</h3>
        <div class="clases__tiles">
            [[pdoResources?
                &tpl=`tpl.clases.tile`
                &parents=`[[++parent_classes]]`
                &includeTVs=`class-user-option,class-image,price`
                &resources=`-[[*id]]`
                &limit=`3`
            ]]
        </div>
    </div>
</section>

[[$footer]]

[[$popup.modall]]
</main>

<script type="text/javascript" src="https://newhobbydom.hosteam.pro/assets/template/js/bundle.js"></script>
</body>
</html>