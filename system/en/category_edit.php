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

<?php
// error_reporting(0);

if (isset($_POST['category_update'])) {

    $category_id_update = $_POST['category_id_update'];

    $category_name_en = $_POST['name_en'];
    $category_name_ar = $_POST['name_ar'];
    $display = $_POST['display'];


    $errors = array();

    if (!empty($errors)) {
        foreach ($errors as $error) {
            //echo $error, '<br />';
            echo get_error($error);
        }
    } else {

        $update = $con->query("UPDATE `category` SET  `category_name_en`='$category_name_en',`category_name_ar`='$category_name_ar',`display`='$display' WHERE `id`='$category_id_update'");
        echo get_success("Successfully updated");
        echo "<meta http-equiv='refresh' content='0'>";
    }
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
    <div class="container">
        </br>
        <div class="content-page">
            <div class="content">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?= lang('category')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="category_view.php"><?= lang('category')?></a></li>
                                <li class="active"><?= lang('category')?></li>
                            </ol>
                        </div>
                    </div>

                    <div class="updateData">

                        <?php
                        if (isset($_GET['categoryID'])) {
                            $category_id = $_GET['categoryID'];
                            $query_select = $con->query("SELECT * FROM `category` WHERE `id` = '{$category_id}' LIMIT 1");
                            $row_select = mysqli_fetch_array($query_select);

                            $id = $row_select['id'];
                            $category_name_en = $row_select['category_name_en'];
                            $category_name_ar = $row_select['category_name_ar'];
                            $display = $row_select['display'];

                            if ($query_select) {
                                ?>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card-box">
                                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                                <input type="hidden" name="category_id_update" id="category_id_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                                <div class="form-group m-b-3">
                                                    <label for="parent_cat_name"> <?=lang('category_name_en')?> </label>
                                                    <input type="text" name="name_en" id="name_en" parsley-trigger="change"  value="<?php echo $category_name_en; ?>" class="form-control">
                                                </div>
                                                <div class="form-group m-b-3">
                                                    <label for="parent_cat_name_ar"> <?=lang('category_name_ar')?> </label>
                                                    <input type="text" name="name_ar" id="name_ar" parsley-trigger="change"  value="<?php echo $category_name_ar; ?>" class="form-control">
                                                </div>

                                                <div class="form-group m-b-3">
                                                    <label class="control-label"> <?=lang('status')?></label>
                                                    <select class="form-control" name="display"  parsley-trigger="change">
                                                        <option value="1" <?php
                                                        if ($display == '1') {
                                                            echo 'selected';
                                                        }
                                                        ?>>show</option>
                                                        <option value="0"  <?php
                                                        if ($display == '0') {
                                                            echo 'selected';
                                                        }
                                                        ?>>hidden</option>
                                                    </select>
                                                </div>
                                                <div class="form-group text-right m-b-0">
                                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="category_update" id="category_update"><?=lang('save')?></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        $('.image-popup').magnificPopup({
                                            type: 'image',
                                            closeOnContentClick: true,
                                            mainClass: 'mfp-fade',
                                            gallery: {
                                                enabled: true,
                                                navigateByImgClick: true,
                                                preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
                                            }
                                        });
                                    });
                                </script>
                                <?php
                            }
                        }
                        ?>

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
            $("#item3").addClass("active");
        });
    </script>

</body>
</html>