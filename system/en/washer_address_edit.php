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

    if (isset($_POST['washer_address_update'])) {

        $washer_addressID_update = $_POST['washer_addressID_update'];
        $washer_id = $_POST['washer_id_update'];
        $address_en = $_POST['address_en'];
        $address_ar = $_POST['address_ar'];
        $location_lat = $_POST['lat'];
        $location_long = $_POST['long'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $update = $con->query("UPDATE `washer_address` SET `washer_id`='$washer_id' ,`address_en`='$address_en',`address_ar`='$address_ar' , `lat`='$location_lat',`long`='$location_long' WHERE `id`='$washer_addressID_update'");

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
                        <h4 class="page-title"><?=lang('washer_address')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="washer_address_view.php"><?=lang('washer_address')?></a></li>
                            <li class="active"><?=lang('update_washer_address')?></li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['washerID']) {

                    $get_washer_address_id = $_GET['washerID'];

                    $query_select = $con->query("SELECT * FROM `washer_address` WHERE `id` = '{$get_washer_address_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $washer_id = $row_select['washer_id'];
                    $address_en = $row_select['address_en'];
                    $address_ar = $row_select['address_ar'];
                    $location_lat = $row_select['lat'];
                    $location_long = $row_select['long'];


                    if ($query_select) {
                        ?>
                <div class="container">
                    </br>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="washer_addressID_update" id="washer_addressID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                        <div class="form-group   m-b-0">
                                            <label for="parent_category_id_update">Project  </label>
                                            <select class="form-control select2me" name="washer_id_update" id="parent_category_id" required parsley-trigger="change">
                                                <option value="" >Choose</option>
                                                <?php
                                                $query = $con->query("SELECT * FROM `washers` ORDER BY `washer_id` ASC");
                                                while ($row = mysqli_fetch_assoc($query)) {
                                                    $get_washer_id = $row['washer_id'];
                                                    $washer_name_en = $row['washer_name_en'];
                                                    $washer_name_ar = $row['washer_name_ar'];
                                                    if ($washer_id == $get_washer_id) {
                                                        echo "<option value='{$get_washer_id}' selected='selected'>{$washer_name_en}-{$washer_name_ar}</option>";
                                                    } else {
                                                        echo "<option value='{$get_washer_id}'>{$washer_name_en}-{$washer_name_ar}</option>";
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group  col-md-5">
                                            <label for="sub_cat_desc"><?=lang('address_en')?></label>
                                            <input type="text" class="form-control" rows="3" name="address_en"  minlength="3" maxlength="1000" value="<?= $address_en ;?>">
                                        </div>
                                        <div class="form-group  col-md-5">
                                            <label for="sub_cat_desc"><?=lang('address_ar')?></label>
                                            <input type="text" class="form-control" rows="3" name="address_ar"  minlength="3" maxlength="1000" value="<?= $address_ar ;?>">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc"><?=lang('washer_lat')?></label>
                                            <input type="text" class="form-control" rows="3" name="lat"  minlength="3" maxlength="1000" value="<?= $location_lat ;?>">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc"><?=lang('washer_long')?></label>
                                            <input type="text" class="form-control" rows="3" name="long"  minlength="3" maxlength="1000" value="<?= $location_long ;?>">
                                        </div>

                                        <div class="clearfix"></div>

                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="washer_address_update" id="updateMenu">تحديث</button>
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