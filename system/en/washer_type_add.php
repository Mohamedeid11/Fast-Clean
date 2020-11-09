<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['cat_and_sub'] != '1')) {
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

    <?php
    if (isset($_POST['submit'])) {
        $washer_type_name_en = mysqli_real_escape_string($con, trim($_POST['name_en']));
        $washer_type_name_ar = mysqli_real_escape_string($con, trim($_POST['name_ar']));
        $display = $_POST['display'];



        $errors = array();
        if (empty($washer_type_name_en)) {
            $errors[] = "Please enter Washer Type Name In English!";
        }
        if (empty($washer_type_name_ar)) {
            $errors[] = "Please enter Washer Type Name In Arabic!";
        }

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {

            $con->query("INSERT INTO `washer_type` (`washer_type_name_en`, `washer_type_name_ar`, `display`) VALUES ('$washer_type_name_en', '$washer_type_name_ar','$display')");

            echo get_success("Successfully Added");
        }
    }
    ?>

    <?php // if(isset($_POST['submit'])) { echo add_user(); }     ?>
<div class="container">
    </br>
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?= lang('washer_type')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="parent_category_view.php"><?= lang('washer_type')?> </a></li>
                            <li class="active"><?= lang('add_new_washer_type')?>  </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>


                                <div class="form-group col-md-3">
                                    <label for="parent_cat_name"> <?= lang('name_english')?> </label>
                                    <input type="text" name="name_en" parsley-trigger="change"  placeholder="<?= lang('name_english')?>" class="form-control" id="name_en">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="parent_cat_name_ar"> <?= lang('name_arabic')?></label>
                                    <input type="text" name="name_ar" parsley-trigger="change"  placeholder="<?= lang('name_arabic')?>" class="form-control" id="name_ar">
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="control-label col-md-3"> <?= lang('status')?> </label>
                                    <select class="form-control" name="display" required parsley-trigger="change">
                                        <option value="1" >Show</option>
                                        <option value="0">Hidden</option>
                                    </select>
                                </div>
                                <div class="clearfix"></div>
                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"> <?= lang('save')?> </button>
                                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?= lang('cancel')?> </button>
                                </div>
                            </form>
                        </div>
                    </div>
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
</div>
</div>
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>
<script type="text/javascript">
    $('.select2me').select2({
        placeholder: "Select",
        width: 'auto',
        allowClear: true
    });
</script>
<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item2").addClass("active");
    });
</script>

</body>
</html>