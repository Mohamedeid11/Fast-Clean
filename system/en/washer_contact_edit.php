<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
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

    if (isset($_POST['washer_contact_update'])) {

        $washer_contactID_update = $_POST['washer_contactID_update'];
        $washer_id = $_POST['washer_id_update'];
        $phone = $_POST['phone'];
        $mobile = $_POST['mobile'];
        $facebook = $_POST['facebook'];
        $instagram = $_POST['instagram'];
        $snapchat = $_POST['snapchat'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $update = $con->query("UPDATE `washer_contact` SET `washer_id`='$washer_id' ,`phone`='$phone',`mobile`='$mobile' , `facebook`='$facebook',`instagram`='$instagram' ,`snapchat`='$snapchat' WHERE `id`='$washer_contactID_update'");

            echo get_success("Successfully Updated");
            echo "<meta http-equiv='refresh' content='0'>";
        }
    }

    ?>


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
                            <li class="active"><?=lang('update_washer_contact')?></li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['washerID']) {

                    $get_washer_contact_id = $_GET['washerID'];

                    $query_select = $con->query("SELECT * FROM `washer_contact` WHERE `id` = '{$get_washer_contact_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $washer_id = $row_select['washer_id'];
                    $phone = $row_select['phone'];
                    $mobile = $row_select['mobile'];
                    $facebook = $row_select['facebook'];
                    $instagram = $row_select['instagram'];
                    $snapchat = $row_select['snapchat'];


                    if ($query_select) {
                        ?>
                        <div class="container">
                            </br>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card-box">
                                        <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                            <input type="hidden" name="washer_contactID_update" id="washer_contactID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                            <div class="form-group   m-b-0">
                                                <label for="parent_category_id_update"><?=lang('washers')?>  </label>
                                                <select class="form-control select2me" name="washer_id_update" id="parent_category_id" required parsley-trigger="change">
                                                    <option selected='selected' value="" ><?=lang('choose')?></option>
                                                    <?php
                                                    $query = $con->query("SELECT * FROM `washers` ORDER BY `washer_id` ASC");
                                                    while ($row = mysqli_fetch_assoc($query)) {
                                                        $get_washer_id = $row['washer_id'];
                                                        $washer_name_en = $row['washer_name_en'];
                                                        $washer_name_ar = $row['washer_name_ar'];
                                                        echo "<option value='{$get_washer_id}'>{$washer_name_en}-{$washer_name_ar}</option>";
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc"><?=lang('phone_number')?></label>
                                                <input type="text" class="form-control" rows="3" name="phone"  minlength="3" maxlength="1000" value="<?= $phone ;?>">
                                            </div>
                                            <div class="form-group  col-md-5">
                                                <label for="sub_cat_desc">Whats App</label>
                                                <input type="text" class="form-control" rows="3" name="mobile"  minlength="3" maxlength="1000" value="<?= $mobile ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Face Book</label>
                                                <input type="text" class="form-control" rows="3" name="facebook"  minlength="3" maxlength="1000" value="<?= $facebook ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Instagram</label>
                                                <input type="text" class="form-control" rows="3" name="instagram"  minlength="3" maxlength="1000" value="<?= $instagram ;?>">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="sub_cat_desc">Snapchat</label>
                                                <input type="text" class="form-control" rows="3" name="Snapchat"  minlength="3" maxlength="1000" value="<?= $snapchat ;?>">
                                            </div>

                                            <div class="clearfix"></div>

                                            <br>
                                            <div class="form-group text-right m-b-0">
                                                <button class="btn btn-primary waves-effect waves-light" type="submit" name="washer_contact_update" id="updateMenu"><?=lang('update')?></button>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
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
    $('.select2m').select2({
        placeholder: "Select",
        width: 'auto',
        allowClear: true
    });
</script>

</body>
</html>