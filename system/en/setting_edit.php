<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['about'] != '1')) {
    header("Location: error.php");
    exit();
}
?>
<!DOCTYPE html>
<html>

<?php include("include/heads.php"); ?>
<body class="fixed-left">

<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <?php
    // error_reporting(0);

    if (isset($_POST['setting_update'])) {

        $id = $_POST['id'];

        $accept_orders = $_POST['accept_orders'];
        $discount = $_POST['discount'];
        $vat_percentage = $_POST['vat_percentage'];
        $android_version = $_POST['android_version'];
        $ios_version = $_POST['ios_version'];
        $ios_link=$_POST['ios_link'];
        $android_link=$_POST['android_link'];
        $footer_caption=$_POST['footer_caption'];
        $footer_caption_en=$_POST['footer_caption_en'];


        if ($discount == 1) {
            $discount_percentage = $_POST['discount_percentage'];
        } else {
            $discount_percentage = '';
        }

        $update = $con->query("UPDATE `setting` SET `footer_caption_en`='$footer_caption_en',`footer_caption`='$footer_caption',`android_version`='$android_version',  `ios_version`='$ios_version',`ios_link`='$ios_link',`android_link`='$android_link',`vat`='$vat_percentage',`discount_percentage`='$discount_percentage',`discount`='$discount',`accept_orders`='$accept_orders' WHERE `id`='$id'");
        if ($update) {
            echo get_success("Successfully Updated");
        } else {
            echo get_error("Here's a error!");
        }
    }
    ?>

    <div class="container">
        </br>
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?= lang('setting')?></h4>
                        <ol class="breadcrumb">
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                $query_select = $con->query("SELECT * FROM `setting` order by id desc");

                $row_select = mysqli_fetch_array($query_select);

                $id = $row_select['id'];
                $accept_orders = $row_select['accept_orders'];
                $discount = $row_select['discount'];
                $discount_percentage = $row_select['discount_percentage'];
                $vat_percentage = $row_select['vat'];
                $footer_caption=$row_select['footer_caption'];
                $footer_caption_en=$row_select['footer_caption_en'];

                $android_version= $row_select['android_version'];

                $ios_version= $row_select['ios_version'];

                $ios_link=$row_select['ios_link'];
                $android_link=$row_select['android_link'];

                if ($query_select) {
                ?>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <input type="hidden" name="id" id="id" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">
                                <div class="form-group">
                                    <label class="control-label"><?=lang('accept_orders')?></label>
                                    <select class="form-control" name="accept_orders" required parsley-trigger="change">

                                        <option value="">Choose</option>
                                        <option value="1" <?php
                                        if ($accept_orders == '1') {
                                            echo 'selected';
                                        }
                                        ?>>yes</option>
                                        <option value="0"  <?php
                                        if ($accept_orders == '0') {
                                            echo 'selected';
                                        }
                                        ?>>no</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label><?=lang('vat')?></label>
                                    <input type="number" min="0" value="<?php echo $vat_percentage; ?>" step="1" name="vat_percentage" parsley-trigger="change"  placeholder="VAT" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label><?=lang('english_footer_caption')?> </label>
                                    <input type="text" value="<?php echo $footer_caption_en; ?>" name="footer_caption_en" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label><?=lang('arabic_footer_caption')?></label>
                                    <input type="text" value="<?php echo $footer_caption; ?>" name="footer_caption" parsley-trigger="change"  placeholder="footer caption" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label><?=lang('android_version')?></label>
                                    <input type="number" min="0" value="<?php echo $android_version; ?>" step="0.1" name="android_version" parsley-trigger="change"  placeholder="Android Version" class="form-control">
                                </div>


                                <div class="form-group">
                                    <label><?=lang('ios_version')?></label>
                                    <input type="number" min="0" value="<?php echo $ios_version; ?>" step="0.1" name="ios_version" parsley-trigger="change"  placeholder="IOS Version" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><?=lang('ios_link')?> </label>
                                    <input type="text" value="<?php echo $ios_link; ?>"  name="ios_link" parsley-trigger="change"  placeholder="IOS Link" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label><?=lang('android_link')?> </label>
                                    <input type="text"  value="<?php echo $android_link; ?>" name="android_link" parsley-trigger="change"  placeholder="Android Link" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label class="control-label"><?=lang('discount')?></label>
                                    <select class="form-control" name="discount" id="discount"  parsley-trigger="change">
                                        <option value=""><?=lang('choose')?></option>

                                        <option value="1" <?php
                                        if ($discount == '1') {
                                            echo 'selected';
                                        }
                                        ?>>yes</option>
                                        <option value="0"  <?php
                                        if ($discount == '0') {
                                            echo 'selected';
                                        }
                                        ?>>no</option>
                                    </select>
                                </div>
                                <div class="form-group" id="discount_percentage_div" <?php if ($discount != 1) { ?> style="display: none;" <?php } ?>>
                                    <label for="discount_percentage"><?=lang('discount_percentage')?></label>
                                    <input type="number" min="0" value="<?php echo $discount_percentage; ?>" step="1" name="discount_percentage" parsley-trigger="change"  placeholder="discount percentage " class="form-control" id="discount_percentage">
                                </div>


                        </div>
                        <br>
                        <div class="form-group text-right m-b-0">
                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="setting_update" id="updateSetting"><?= lang('update')?></button>
                        </div>
                        </form>

                    </div>
                </div>
                </div>
            </div>
            <?php
            }
            ?>

        </div>
    </div>
    <?php include("include/footer_text.php"); ?>

</div>

<!-- End Right content here -->

<!-- Right Sidebar -->
<div class="side-bar right-bar nicescroll">
    <?php include("include/rightbar.php"); ?>
</div>
<!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>
<script>
    $("#discount").change(function () {
        var discount = $(this).val();
        if (discount == 1) {
            $("#discount_percentage_div").show();
        } else {
            $('#discount_percentage_div').css('display', 'none');
        }
    });
</script>
<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item303").addClass("active");
    });
</script>

</body>
</html>