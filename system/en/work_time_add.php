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
        $day = mysqli_real_escape_string($con, trim($_POST['day']));
        $time = mysqli_real_escape_string($con, trim($_POST['time']));


        $errors = array();


        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {
            $con->query(" INSERT INTO `work_time` (`washer_id`,`day`, `time`) VALUES ('$washer_id', '$day' , '$time')");
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
                            <h4 class="page-title"><?=lang('work_time')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="work_time_view.php"><?=lang('work_time')?></a></li>
                                <li class="active"><?=lang('add_new_work_time')?> </li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card-box">
                                <h4 class="m-t-0 header-title"><b><?=lang('add_new_work_time')?></b></h4>
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
                                        <label for="sub_cat_desc"><?=lang('day')?></label>
                                        <input type="text" class="form-control" rows="3" name="day"  minlength="3" maxlength="1000" placeholder="<?=lang('day')?>"></input>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_desc"><?=lang('tome')?></label>
                                        <input type="text" class="form-control" rows="3" name="time"  minlength="3" maxlength="1000" placeholder="<?=lang('time')?>"></input>
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
        $("#item4").addClass("active");
    });
</script>

</body>
</html>