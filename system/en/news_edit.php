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

    if (isset($_POST['news_update'])) {

        $newsID_update = $_POST['newsID_update'];
        $title_en = $_POST['title_en'];
        $title_ar = $_POST['title_ar'];
        $subject_en = $_POST['subject_en'];
        $subject_ar = $_POST['subject_ar'];


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
                $full_img_path = "../api/uploads/News/$newsID_update" . "/" . $image_name;
                if (file_exists($full_img_path)) {
                    @unlink($full_img_path);
                }

                if (!file_exists("../api/uploads/News/" . $newsID_update)) {
                    mkdir("../api/uploads/News/" . $newsID_update, 0777, true);
                }

                $image_name_update = $_FILES['image_update']['name'];
                $image_tmp_update = $_FILES['image_update']['tmp_name'];

                $image_path = "../api/uploads/News/$newsID_update" . "/" . $image_name_update;
                $image_database = "{$sit_url}/api/uploads/News/$newsID_update" . "/" . $image_name_update;


                if (move_uploaded_file($image_tmp_update, $image_path)) {
                    $update = $con->query("UPDATE `news` SET `title_en`='$title_en' , `title_ar`='$title_ar' , `subject_en`='$subject_en' , `subject_ar`='$subject_ar' ,`photo`='$image_database'  WHERE `id`='$newsID_update'");
                }
                if ($update) {
                    echo get_success("Updated Successfully ");
                } else {
                    echo get_error("there's an error ");
                }
            }else {
                $update = $con->query("UPDATE `news` SET `title_en`='$title_en' ,`title_ar`='$title_ar' , `subject_en`='$subject_en' , `subject_ar`='$subject_ar' WHERE `id`='$newsID_update'");
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
                        <h4 class="page-title">News  </h4>
                        <ol class="breadcrumb">
                            <li><a href="news_view.php">News  </a></li>
                            <li class="active"> Update News  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['newsID']) {

                    $get_project_id = $_GET['newsID'];

                    $query_select = $con->query("SELECT * FROM `news` WHERE `id` = '{$get_project_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['id'];
                    $title_en = $row_select['title_en'];
                    $title_ar = $row_select['title_ar'];
                    $subject_en = $row_select['subject_en'];
                    $subject_ar = $row_select['subject_ar'];
                    $date = $row_select['date'];


                    $photo = $row_select['photo'];
                    $get_image_ext = explode('.' , $photo);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="newsID_update" id="newsID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_name">English Title  </label>
                                            <input type="text" name="title_en" parsley-trigger="change" required placeholder="Title EN" class="form-control" id="title_en" value="<?= $title_en ;?>">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_name_ar"> Arabic Title </label>
                                            <input type="text" name="title_ar" parsley-trigger="change"  placeholder="Title AR" class="form-control" id="title_ar" value="<?= $title_en ;?>">
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc"> English Subject</label>
                                            <textarea class="form-control" rows="3" name="subject_en"  minlength="3" maxlength="1000" ><?= $subject_en?></textarea>
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="sub_cat_desc_ar"> Arabic Subject</label>
                                            <textarea class="form-control" rows="3" name="subject_ar"  minlength="3" maxlength="1000" ><?= $subject_en?></textarea>
                                        </div>

                                        <div class="clearfix"></div>
                                        <label for="userName">Image  <a class="showImg">edit?</a> </label>
                                        <input type="hidden" name="image_ext_old" value="<?= $photo; ?>" />

                                        <div class="gal-detail thumb getImage">
                                            <a href="<?= $photo; ?>" class="image-popup" title="<?= $title_en; ?>">
                                                <img src="<?= $photo; ?>" class="thumb-img" alt="<?= $title_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label">News Image </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>

                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="news_update" id="updateMenu">تحديث</button>
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