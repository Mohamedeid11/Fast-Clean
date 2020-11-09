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

    if (isset($_POST['project_update'])) {

        $projectID_update = $_POST['projectID_update'];
        $project_name_en = $_POST['project_name_en'];
        $project_name_ar = $_POST['project_name_ar'];
        $project_desc_en = $_POST['project_desc_en'];
        $project_desc_ar = $_POST['project_desc_ar'];
        $client_update = $_POST['client_id_update'];


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
                $full_img_path = "../api/uploads/Projects/$projectID_update" . "/" . $image_name;
                if (file_exists($full_img_path)) {
                    @unlink($full_img_path);
                }

                if (!file_exists("../api/uploads/Projects/" . $projectID_update)) {
                    mkdir("../api/uploads/Projects/" . $projectID_update, 0777, true);
                }

                $image_name_update = $_FILES['image_update']['name'];
                $image_tmp_update = $_FILES['image_update']['tmp_name'];

                $image_path = "../api/uploads/Projects/$projectID_update" . "/" . $image_name_update;
                $image_database = "{$sit_url}/api/uploads/Projects/$projectID_update" . "/" . $image_name_update;


                if (move_uploaded_file($image_tmp_update, $image_path)) {

                    $update = $con->query("UPDATE `projects` SET `project_name_en`='$project_name_en' , `project_name_ar`='$project_name_ar' , `project_desc_en`='$project_desc_en' , `project_desc_ar`='$project_desc_ar',`client_id`='$client_update' ,`project_image`='$image_database'  WHERE `project_id`='$projectID_update'");
                }
                if ($update) {
                    echo get_success("Updated Successfully ");
                } else {
                    echo get_error("there's an error ");
                }
            }else {
                $update = $con->query("UPDATE `projects` SET `project_name_en`='$project_name_en' , `project_name_ar`='$project_name_ar' , `project_desc_en`='$project_desc_en' , `project_desc_ar`='$project_desc_ar',`client_id`='$client_update'  WHERE `project_id`='$projectID_update'");
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
                        <h4 class="page-title">Project  </h4>
                        <ol class="breadcrumb">
                            <li><a href="projects_view.php">Project  </a></li>
                            <li class="active"> Update Project  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['projectID']) {

                    $get_project_id = $_GET['projectID'];

                    $query_select = $con->query("SELECT * FROM `projects` WHERE `project_id` = '{$get_project_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $project_id = $row_select['project_id'];
                    $project_name_en = $row_select['project_name_en'];
                    $project_name_ar = $row_select['project_name_ar'];
                    $project_desc_en = $row_select['project_desc_en'];
                    $project_desc_ar = $row_select['project_desc_ar'];
                    $client_id = $row_select['client_id'];
                    $date = $row_select['date'];


                    $project_image = $row_select['project_image'];
                    $get_image_ext = explode('.' , $project_image);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="projectID_update" id="projectID_update" parsley-trigger="change" required value="<?php echo $project_id; ?>" class="form-control">

                                        <div class="form-group col-md-5">
                                            <label for="project_name"> Project Name English  </label>
                                            <input type="text" name="project_name_en" parsley-trigger="change" required placeholder="Name EN" class="form-control" id="project_name_en" value="<?php echo $project_name_en; ?>">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="project_name_ar"> Project Name Arabic  </label>
                                            <input type="text" name="project_name_ar" parsley-trigger="change"  placeholder="Name AR" class="form-control" id="project_name_ar" value="<?php echo $project_name_ar; ?>">
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="form-group col-md-5">
                                            <label for="project_desc_en"> English Description</label>
                                            <textarea class="form-control" rows="3" name="project_desc_en"  minlength="3" maxlength="1000" ><?php echo $project_desc_en; ?></textarea>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="project_desc_ar"> Arabic Description</label>
                                            <textarea class="form-control" rows="3" name="project_desc_ar"  minlength="3" maxlength="1000" ><?php echo $project_desc_ar; ?></textarea>
                                        </div>

                                        <div class="form-group   m-b-0">
                                            <label for="parent_category_id_update">Project  </label>
                                            <select class="form-control select2me" name="client_id_update" id="client_id_update" required parsley-trigger="change">
                                                <option value="" >Choose</option>
                                                <?php
                                                $query = $con->query("SELECT * FROM `clients` ORDER BY `client_id` ASC");
                                                while ($row = mysqli_fetch_assoc($query)) {
                                                    $get_client_id = $row['client_id'];
                                                    $client_name_en = $row['client_name_en'];
                                                    $client_name_ar = $row['client_name_ar'];
                                                    if ($get_client_id == $client_id) {
                                                        echo "<option value='{$get_client_id}' selected='selected'>{$client_name_en}-{$client_name_ar}</option>";
                                                    } else {
                                                        echo "<option value='{$get_client_id}'>{$client_name_en}-{$client_name_ar}</option>";
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="clearfix"></div>
                                        <label for="userName">Image  <a class="showImg">edit?</a> </label>
                                        <input type="hidden" name="image_ext_old" value="<?= $project_image; ?>" />

                                        <div class="gal-detail thumb getImage">
                                            <a href="<?= $project_image; ?>" class="image-popup" title="<?= $project_name_en; ?>">
                                                <img src="<?= $project_image; ?>" class="thumb-img" alt="<?= $project_name_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label">Project Image </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>

                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="project_update" id="updateMenu">تحديث</button>
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