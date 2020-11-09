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

    if (isset($_POST['about_project_update'])) {

        $projectID_update = $_POST['projectID_update'];
        $project_id = $_POST['project_id_update'];
        $in_desc_en = $_POST['in_desc_en'];
        $in_desc_ar = $_POST['in_desc_ar'];
        $out_desc_en = $_POST['out_desc_en'];
        $out_desc_ar = $_POST['out_desc_ar'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $update = $con->query("UPDATE `project_finishing` SET `project_id`='$project_id' ,`in_desc_en`='$in_desc_en' , `in_desc_ar`='$in_desc_ar',`out_desc_en`='$out_desc_en' , `out_desc_ar`='$out_desc_en' WHERE `id`='$projectID_update'");

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
                        <h4 class="page-title">Project Finishing  </h4>
                        <ol class="breadcrumb">
                            <li><a href="project_finishing_view.php">Project Finishing  </a></li>
                            <li class="active"> Update Project Finishing  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['projectID']) {

                    $get_project_id = $_GET['projectID'];

                    $query_select = $con->query("SELECT * FROM `project_finishing` WHERE `id` = '{$get_project_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $project_id = $row_select['project_id'];
                    $in_desc_en = $row_select['in_desc_en'];
                    $in_desc_ar = $row_select['in_desc_ar'];
                    $out_desc_en = $row_select['out_desc_en'];
                    $out_desc_ar = $row_select['out_desc_ar'];

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="projectID_update" id="projectID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

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

                                        <div class="row justify-content-start ">
                                            <label > Inside Finishing</label>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc"> English Description</label>
                                            <textarea class="form-control" rows="3" name="in_desc_en"  minlength="3" maxlength="1000" ><?= $in_desc_en?></textarea>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc_ar"> Arabic Description</label>
                                            <textarea class="form-control" rows="3" name="in_desc_ar"  minlength="3" maxlength="1000" ><?= $in_desc_ar?></textarea>
                                        </div>
                                        <div class="clearfix "></div>
                                        <hr>

                                        <div class="row justify-content-start ">
                                            <label > Outer Finishing</label>
                                        </div>

                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc"> English Description</label>
                                            <textarea class="form-control" rows="3" name="out_desc_en"  minlength="3" maxlength="1000" ><?= $out_desc_en?></textarea>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc_ar"> Arabic Description</label>
                                            <textarea class="form-control" rows="3" name="out_desc_ar"  minlength="3" maxlength="1000" ><?= $out_desc_ar?></textarea>
                                        </div>
                                        <div class="clearfix"></div>

                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="about_project_update" id="updateMenu">تحديث</button>
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