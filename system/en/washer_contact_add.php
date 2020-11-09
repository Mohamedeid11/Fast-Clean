<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['clients'] != '1')) {
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

        $washer_id = $_POST['washer_id'];
        $phone = mysqli_real_escape_string($con, trim($_POST['phone']));
        $whats_app = mysqli_real_escape_string($con, trim($_POST['whats_app']));
        $facebook = mysqli_real_escape_string($con, trim($_POST['facebook']));
        $instagram = mysqli_real_escape_string($con, trim($_POST['instagram']));
        $twitter = mysqli_real_escape_string($con, trim($_POST['twitter']));


        $errors = array();


        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {
            $con->query(" INSERT INTO `washer_contact` (`washer_id`,`phone`, `whats_app`, `facebook`,`instagram` ,`twitter`) VALUES ('$washer_id', '$phone' , '$whats_app' , '$facebook' ,'$instagram' , '$twitter')");
            echo get_success("Successfully Added");
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
                            <h4 class="page-title"><?=lang('washer_contact')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="washer_contact_view.php"><?=lang('washer_contact')?></a></li>
                                <li class="active"><?=lang('add_new_washer_contact')?> </li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card-box">
                                <h4 class="m-t-0 header-title"><b><?=lang('add_new_washer_address')?></b></h4>
                                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <div class="form-group m-b-0">
                                        <label class="control-label"><?=lang('washers')?> </label>
                                        <select class="form-control select2me" name="washer_id" id="washer_id" required>
                                            <option selected='selected' value="" ><?=lang('choose')?></option>
                                            <?php
                                            $query = $con->query("SELECT * FROM `washers` ORDER BY `washer_id` ASC");
                                            while ($row = mysqli_fetch_assoc($query)) {
                                                $washer_id = $row['washer_id'];
                                                $washer_name_en = $row['washer_name_en'];
                                                $washer_name_ar = $row['washer_name_ar'];
                                                echo "<option value='{$washer_id}'>{$washer_name_en}-{$washer_name_ar}</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc"><?=lang('phone_number')?></label>
                                        <input type="tel" class="form-control" rows="3" name="phone"  minlength="3" maxlength="1000" placeholder="<?=lang('phone_number')?>"></input>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc">Whats App</label>
                                        <input type="tel" class="form-control" rows="3" name="whats_app"  minlength="3" maxlength="1000" placeholder="Whats App"></input>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc">Face Book</label>
                                        <input type="text" class="form-control" rows="3" name="facebook"  minlength="3" maxlength="1000" placeholder="Face Book"></input>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc">Instagram</label>
                                        <input type="text" class="form-control" rows="3" name="instagram"  minlength="3" maxlength="1000" placeholder="Instagram"></input>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc">Twitter</label>
                                        <input type="text" class="form-control" rows="3" name="twitter"  minlength="3" maxlength="1000" placeholder="Twitter"></input>
                                    </div>

                                    <div class="clearfix"></div>

                                    <br />

                                    <br>
                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"> <?=lang('save')?> </button>
                                        <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?=lang('cancel')?> </button>
                                    </div>
                                </form>
                            </div>
                        </div>
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
<!-- END wrapper -->
<?php include("include/footer.php"); ?>

<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item7").addClass("active");
    });
</script>

</body>
</html>