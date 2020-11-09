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

    if (isset($_POST['images_update'])) {

        $imagesID_update = $_POST['imagesID_update'];
        $project_id = $_POST['project_id_update'];
        $image = $_POST['image'];



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
                $full_img_path = "../api/uploads/project_images/$imagesID_update" . "/" . $image_name;
                if (file_exists($full_img_path)) {
                    @unlink($full_img_path);
                }

                if (!file_exists("../api/uploads/project_images/" . $imagesID_update)) {
                    mkdir("../api/uploads/project_images/" . $imagesID_update, 0777, true);
                }

                $image_name_update = $_FILES['image_update']['name'];
                $image_tmp_update = $_FILES['image_update']['tmp_name'];

                $image_path = "../api/uploads/project_images/$imagesID_update" . "/" . $image_name_update;
                $image_database = "{$sit_url}/api/uploads/project_images/$imagesID_update" . "/" . $image_name_update;


                if (move_uploaded_file($image_tmp_update, $image_path)) {
                    $update = $con->query("UPDATE `project_images` SET `project_id`='$project_id',`image`='$image_database'  WHERE `id`='$imagesID_update'");
                }
                if ($update) {
                    echo get_success("Updated Successfully ");
                } else {
                    echo get_error("there's an error ");
                }
            }else {
                $update = $con->query("UPDATE `project_images` SET `project_id`='$project_id' WHERE `id`='$imagesID_update'");
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
                        <h4 class="page-title">Project Image  </h4>
                        <ol class="breadcrumb">
                            <li><a href="project_images_view.php">Project Image  </a></li>
                            <li class="active"> Update Project Image  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['imagesID']) {

                    $get_project_id = $_GET['imagesID'];

                    $query_select = $con->query("SELECT * FROM `project_images` WHERE `id` = '{$get_project_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $project_id = $row_select['project_id'];
                    $date = $row_select['date'];


                    $image = $row_select['image'];
                    $get_image_ext = explode('.' , $image);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="imagesID_update" id="imagesID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                        <div class="form-group   m-b-0">
                                            <label for="parent_category_id_update">Project  </label>
                                            <select class="form-control select2me" name="project_id_update" id="parent_category_id" required parsley-trigger="change">
                                                <option value="" >Choose</option>
                                                <?php
                                                $query = $con->query("SELECT * FROM `projects` ORDER BY `project_id` ASC");
                                                while ($row = mysqli_fetch_assoc($query)) {
                                                    $get_project_id = $row['project_id'];
                                                    $project_name_en = $row['project_name_en'];
                                                    $project_name_ar = $row['project_name_ar'];
                                                    if ($project_id == $get_project_id) {
                                                        echo "<option value='{$get_project_id}' selected='selected'>{$project_name_en}-{$project_name_ar}</option>";
                                                    } else {
                                                        echo "<option value='{$get_project_id}'>{$project_name_en}-{$project_name_ar}</option>";
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <br>
                                        <div class="gal-detail thumb getImage">
                                            <a href="<?= $image; ?>" class="image-popup" title="<?= $project_name_en; ?>">
                                                <img src="<?= $image; ?>" class="thumb-img" alt="<?= $project_name_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label">News Image </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>

                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="images_update" id="updateMenu">تحديث</button>
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