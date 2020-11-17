<div class="content-page">
    <div class="content">
        <div class="container">

            <h3 style="display:block;text-align:center;margin-top: 15px;border-bottom: 1px solid #000;width: 40%;margin-right: auto;padding: 20px 0;margin-left: auto;margin-bottom: 60px;">
                <?=lang('welcome_to_fastclean')?>

            </h3>

            <div class="row pricing-plan">
                <div class="col-md-12">
                    <div class="row">

                        <?php if ($_SESSION['cat_and_sub'] == '1') { ?>
                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-slideshare"></i> <?= lang('slider')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="slider_add.php"><span><?= lang('add_new_slider')?></span></a></li>
                                        <li><a href="slider_view.php"><span><?= lang('view_all')?> </span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-building"></i><?= lang('category')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="category_add.php"><span><?= lang('add_new_category') ?></span></a></li>
                                        <li><a href="category_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('washers')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="washer_add.php"><span><?= lang('add_new_washer')?></span></a></li>
                                        <li><a href="washer_view.php"><span><?= lang('view_all_washer')?></span></a></li>
                                    </ul>
                                </div>
                            </div>


                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('vehicle_type')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="vehicle_type_add.php"><span><?= lang('add_new_vehicle')?> </span></a></li>
                                        <li><a href="vehicle_type_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('subscription')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="subscription_type_add.php"><span><?= lang('add_new_subscription')?> </span></a></li>
                                        <li><a href="subscription_type_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                        <?php } ?>



<!--                        --><?php //if ($_SESSION['orders'] == '1') { ?>
                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-cart-arrow-down"></i> <?= lang('orders')?></span>
                                    </div>
                                    <ul class="price-features">
<!--                                        <li><a href="order_add.php"><span>Add New Order </span></a></li>-->
                                        <li><a href="order_view.php"><span><?= lang('current_orders')?></span></a></li>
                                        <li><a href="last_orders.php"><span><?= lang('last_orders')?> </span></a></li>
                                        <li><a href="payment_methods_view.php"><span><?= lang('payment_methods')?></span></a></li>
                                    </ul>
                                </div>
                            </div>
<!--                        --><?php //} ?>
                        <?php if ($_SESSION['clients'] == '1') { ?>
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-credit-card"></i>--><?//= lang('payment_methods')?><!--</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="payment_methods_view.php"><span>--><?//= lang('payment_methods')?><!--</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
                        <?php } ?>

                        <?php if ($_SESSION['about'] == '1') { ?>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-file"></i> Services </span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="service_add.php"><span>Add New Service</span></a></li>-->
<!--                                        <li><a href="service_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->

<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-image"></i> Project Images </span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="project_images_add.php"><span>Add New Images</span></a></li>-->
<!--                                        <li><a href="project_images_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->

<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-file"></i> Project Finishing </span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="project_finishing_add.php"><span>Add Project Finish</span></a></li>-->
<!--                                        <li><a href="project_finishing_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-image"></i> Engineering Drawing </span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="engineering_drawing_add.php"><span>Add New </span></a></li>-->
<!--                                        <li><a href="engineering_drawing_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa  fa-map-marker "></i> Project Location</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="project_location_add.php"><span>Add Project Location </span></a></li>-->
<!--                                        <li><a href="project_location_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->

                        <?php } ?>

                        <?php if ($_SESSION['users'] == '1') { ?>

<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-newspaper-o"></i> News </span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="news_add.php"><span>Add News </span></a></li>-->
<!--                                        <li><a href="news_view.php"><span>View All </span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-users"></i> <?= lang('clients')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="client_add.php"><span><?= lang('add_new_clients')?></span></a></li>
                                        <li><a href="client_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i><?= lang('comments_rates')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="comments_view.php"><span><?= lang('comments_rates')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('about_us')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="about_edit.php?id=1"><span><?=lang('about_fastclean')?></span></a></li>
                                        <li><a href="contact_edit.php"><span><?= lang('contact_us')?></span></a></li>
                                        <li><a href="setting_edit.php"><span><?=lang('settings')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-user"></i> Users</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="user_add.php"><span>Add New User</span></a></li>-->
<!--                                        <li><a href="users_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
                        <?php } ?>
<!--                        --><?php //if ($_SESSION['reports'] == '1') { ?>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-file"></i> Reports</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="financial_report.php"><span>Financial Report By Date</span></a></li>-->
<!---->
<!--                                        <li><a href="select_financial_report.php"><span>Choose  Report Type</span></a></li>-->
<!--                                        <li><a href="print_deleted_report.php"><span>  Report Deleted Requests</span></a></li>-->
<!--                                        <li><a href="print_edited_report.php"><span>Report Edited Requests-->
<!--                                                </span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //} ?>

<!--                        --><?php //if ($_SESSION['statics'] == '1') { ?>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-dollar"></i> Statistics</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="statistics.php">View Statistics </a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //} ?>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <?php include("include/footer_text.php"); ?>
</div>
