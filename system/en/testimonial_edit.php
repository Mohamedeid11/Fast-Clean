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



    if (isset($_POST['slider_update'])) {

        $sliderID_update = $_POST['sliderID_update'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            if (isset($_FILES['image_update']['name']) && !empty($_FILES['image_update']['name'])) {

                $image_ext_old = $_POST['image_ext_old'];
                $mostafa = explode('/', $image_ext_old);
                $image_name = $mostafa[7];
                $full_img_path = "../api/uploads/testimonial/$sliderID_update" . "/" . $image_name;
                if (file_exists($full_img_path)) {
                    @unlink($full_img_path);
                }

                if (!file_exists("../api/uploads/testimonial/" . $sliderID_update)) {
                    mkdir("../api/uploads/testimonial/" . $sliderID_update, 0777, true);
                }

                $image_name_update = $_FILES['image_update']['name'];
                $image_tmp_update = $_FILES['image_update']['tmp_name'];

                $image_path = "../api/uploads/testimonial/$sliderID_update" . "/" . $image_name_update;
                $image_database = "{$sit_url}/api/uploads/testimonial/$sliderID_update" . "/" . $image_name_update;


                if (move_uploaded_file($image_tmp_update, $image_path)) {
                    $update = $con->query("UPDATE `testimonial` SET `image`='$image_database'  WHERE `id`='$sliderID_update'");
                }
                if ($update) {
                    echo get_success("Updated Successfully ");
                } else {
                    echo get_error("there's an error ");
                }
            }
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
                        <h4 class="page-title"> Clients </h4>
                        <ol class="breadcrumb">
                            <li><a href="testimonial_view.php">Client  </a></li>
                            <li class="active"> Update Client  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['sliderID']) {

                    $get_slider_id = $_GET['sliderID'];

                    $query_select = $con->query("SELECT * FROM `testimonial` WHERE `id` = '{$get_slider_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $image = $row_select['image'];

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="sliderID_update" id="sliderID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                        <div class="form-group m-b-0">
                                            <div class="gal-detail thumb getImage">
                                                <a href="<?= $image; ?>" class="image-popup" title="image">
                                                    <img src="<?= $image; ?>" class="thumb-img" alt="image">
                                                </a>
                                            </div>

                                            <div class="form-group m-b-0">
                                                <label class="control-label"> Gallery Image </label>
                                                <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                            </div>

                                        </div>
                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="slider_update" id="updateMenu">تحديث</button>
                                        </div>
                                    </form>

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
