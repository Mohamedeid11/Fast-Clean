<div id="cssmenu">
    <ul>
        <li id="item1" class="active"><a href="index.php"><span><?=lang('home')?></span></a></li>
        <?php if ($_SESSION['cat_and_sub'] == '1') { ?>

            <li id="item2" class="has-sub">
                <a href="#"><span><?= lang('slider')?></span></a>
                <ul class="has-sub">
                    <li><a href="slider_add.php"><span><?= lang('add_new_slider')?>  </span></a></li>
                    <li><a href="slider_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

            <li id="item3" class="has-sub">
                <a href="#"><span><?= lang('category')?></span></a>
                <ul class="has-sub">
                    <li><a href="category_add.php"><span><?= lang('add_new_category') ?></span></a></li>
                    <li><a href="category_view.php"><span><?= lang('view_all') ?></span></a></li>
                </ul>
            </li>
            
            <li id="item4" class="has-sub">
                <a href="#"><span><?= lang('washers')?></span></a>
                <ul class="has-sub">
                    <li><a href="washer_add.php"><span><?= lang('add_new_washer')?> </span></a></li>
                    <li><a href="washer_view.php"><span><?= lang('view_all_washer')?> </span></a></li>
<!--                    <li> <a href="washer_service_view.php"><span>--><?//= lang('view_all_washer_services')?><!--</span></a></li>-->
<!--                    <li><a href="washer_images_view.php"><span> --><?//= lang('view_all_washer_images')?><!--</span></a></li>-->
<!--                    <li><a href="washer_address_view.php"><span> --><?//= lang('view_all_washer_address')?><!-- </span></a></li>-->
<!--                    <li><a href="washer_contact_view.php"><span>--><?//= lang('view_all_washer_contacts')?><!-- </span></a></li>-->
<!--                    <li><a href="work_time_view.php"><span> --><?//= lang('view_all_work_time')?><!-- </span></a></li>-->
                </ul>
            </li>

<!--            <li id="item5" class="has-sub">-->
<!--                <a href="washer_service_view.php"><span>--><?//= lang('washer_services')?><!--</span></a>-->
<!--            </li>-->
        <?php } ?>


        <?php if ($_SESSION['statics'] == '1') { ?>
<!--            <li id="item6" class="has-sub">-->
<!--                <a href="#"><span>--><?//= lang('washer_images')?><!--</span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="washer_images_add.php"><span>--><?//= lang('add_new_washer_image')?><!-- </span></a></li>-->
<!--                    <li><a href="washer_images_view.php"><span> --><?//= lang('view_all')?><!--</span></a></li>-->
<!--                </ul>-->
<!--            </li>-->
<!--            <li id="item7" class="has-sub">-->
<!--                <a href="#"><span> --><?//= lang('washer_address')?><!--</span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="washer_address_add.php"><span>--><?//= lang('add_new_washer_address')?><!-- </span></a></li>-->
<!--                    <li><a href="washer_address_view.php"><span> --><?//= lang('view_all')?><!-- </span></a></li>-->
<!--                </ul>-->
<!--            </li>-->
        <?php } ?>

        
        <?php if ($_SESSION['comments'] == '1') { ?>
<!--            <li id="item8" class="has-sub">-->
<!--                <a href="#"><span>--><?//= lang('washer_contact')?><!--</span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="washer_contact_add.php"><span>--><?//= lang('add_new_washer_contact')?><!--  </span></a></li>-->
<!--                    <li><a href="washer_contact_view.php"><span>--><?//= lang('view_all')?><!-- </span></a></li>-->
<!--                </ul>-->
<!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['clients'] == '1') { ?>


<!--            <li id="item9" class="has-sub">-->
<!--                <a href="#"><span>--><?//= lang('work_time')?><!--</span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="work_time_add.php"><span>--><?//= lang('add_new_work_time')?><!-- </span></a></li>-->
<!--                    <li><a href="work_time_view.php"><span> --><?//= lang('view_all')?><!-- </span></a></li>-->
<!--                </ul>-->
<!--            </li>-->

            <li id="item10" class="has-sub">
                <a href="#"><span><?= lang('vehicle_type')?></span></a>
                <ul class="has-sub">
                    <li><a href="vehicle_type_add.php"><span><?= lang('add_new_vehicle')?> </span></a></li>
                    <li><a href="vehicle_type_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

            <li id="item11" class="has-sub">
                <a href="#"><span><?= lang('subscription')?></span></a>
                <ul class="has-sub">
                    <li><a href="subscription_type_add.php"><span><?= lang('add_new_subscription')?></span></a></li>
                    <li><a href="subscription_type_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

        <?php } ?>

        <?php if ($_SESSION['problems'] == '1') { ?>

            <li id="item12" class="has-sub">
                <a href="payment_methods_view.php"><span><?= lang('payment_methods')?></span></a>
                <ul class="has-sub">
<!--                    <li><a href="subscription_type_add.php"><span>--><?//= lang('add_new_subscription')?><!--</span></a></li>-->
<!--                    <li><a href="subscription_type_view.php"><span> --><?//= lang('view_all')?><!-- </span></a></li>-->
                </ul>
            </li>

            <li id="item13" class="has-sub">
                <a href="#"><span><?= lang('orders')?></span></a>
                <ul class="has-sub">
                    <li><a href="order_view.php"><span><?= lang('current_orders')?></span></a></li>
                    <li><a href="last_orders.php"><span> <?= lang('last_orders')?> </span></a></li>
                </ul>
            </li>

<!--            <li id="item103" class="has-sub"-->
<!--            ><a href="#"><span>--><?//= lang('news')?><!-- </span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="news_add.php"><span>--><?//= lang('add_new_news')?><!--</span></a></li>-->
<!--                    <li><a href="news_view.php"><span>--><?//= lang('view_all')?><!--</span></a></li>-->
<!--                </ul>-->
<!--            </li>-->

            <!--            <li id="item13" class="has-sub">-->
            <!--                <a href="complaints_view.php"><span>Complaints</span></a>-->
            <!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['about'] == '1') { ?>

            <li id="item12" class="has-sub">
                <a href="#"><span><?= lang('clients')?></span></a>
                <ul class="has-sub">
                    <li><a href="client_add.php"><span><?= lang('add_new_clients')?></span></a></li>
                    <li><a href="client_view.php"><span><?= lang('view_all')?></span></a></li>
                </ul>
            </li>

            <li id="item302" class="has-sub">
                <a href="comments_view.php"><span><?= lang('comments_rates')?></span></a>
            </li>

            <li id="item300" class="has-sub">
                <a href="about_edit.php?id=1"><span><?= lang('about_us')?></span></a>
            </li>

            <li id="item301" class="has-sub">
                <a href="contact_edit.php"><span><?= lang('contact_us')?></span></a>
            </li>

        <?php } ?>



        <?php if ($_SESSION['comments'] == '1') { ?>

<!--            <li id="item101" class="has-sub"><a href="subcat_comments_view.php"><span>Comments </span></a></li>-->
        <?php } ?>

        <?php if ($_SESSION['messages'] == '1') { ?>

<!--            <li id="item103" class="has-sub"-->
<!--                ><a href="#"><span>Messages </span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="messages_view.php"><span>View All messages</span></a></li>-->
<!--                </ul>-->
<!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['users'] == '1') { ?>

            <li id="item303" ><a href="setting_edit.php"><span><?= lang('settings')?></span></a></li>
            
            <li id="item12" class="has-sub">
                <a href="#"><span><?= lang('language') ?></span></a>
                <ul class="has-sub">
                    <li><a class="dropdown-item text-<?= lang('align') ?>" href="?change_lang=ar">العربية</a></li>
                    <li><a class="dropdown-item text-<?= lang('align') ?>" href="?change_lang=en">Einglish</a></li>
                </ul>
            </li>

        <?php } ?>


        <li><a href="logout.php"><span><?= lang('logout')?> </span></a></li>

    </ul>
</div>