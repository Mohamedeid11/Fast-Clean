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
<!DOCTYPE html>
<html>
<?php include("include/heads.php"); ?>
<style>.red {
        /* color: #FFFFFF; */
        background-color: #cb5a5e;
    }</style>
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

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {

            $imageCount = count($_FILES['image']['name']);
            $project_id = $_POST['project_id'];
            for($i=0 ;$i<$imageCount ;$i++) {
                $image = $_FILES['image']['name'][$i];
                $image_tmp = $_FILES['image']['tmp_name'][$i];

                $con->query("INSERT INTO `project_images` ( `project_id`, `image`) VALUES ( '$project_id', '$image')");

                $id = mysqli_insert_id($con);
                if (!file_exists("../api/uploads/project_images/" . $id)) {
                    mkdir("../api/uploads/project_images/" . $id, 0777, true);
                }
                $image_path = "../api/uploads/project_images/" . $id . "/" . $image;
                $image_database = "{$sit_url}/api/uploads/project_images/" . $id . "/" . $image;

                if (move_uploaded_file($image_tmp, $image_path)) {
                    $update = $con->query("UPDATE `project_images` SET  `image`='$image_database' WHERE `id`='$id'");
                }

                echo get_success("Successfully Added");
            }
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
                        <h4 class="page-title"> Project Images  </h4>
                        <ol class="breadcrumb">
                            <li><a href="project_images_view.php">Project Images </a></li>
                            <li class="active">Add Project Images  </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b> Add Project Images  </b></h4>
                            <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>

                                <div class="form-group m-b-0">
                                    <label class="control-label">Select The Project </label>
                                    <select class="form-control select2me" name="project_id" id="project_id" required>
                                        <?php
                                        $query = $con->query("SELECT * FROM `projects` ORDER BY `project_id` ASC");
                                        while ($row = mysqli_fetch_assoc($query)) {
                                            $project_id = $row['project_id'];
                                            $project_name_en = $row['project_name_en'];
                                            $project_name_ar = $row['project_name_ar'];
                                            echo "<option value='{$project_id}'>{$project_name_en}-{$project_name_ar}</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="clearfix"></div>
                                <div class="form-group m-b-0">
                                    <label class="control-label">Project Images</label>
                                    <input type="file" name="image[]" id="image"  class="filestyle" multiple data-buttonname="btn-primary" multiple="">
                                </div>
                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"> Add </button>
                                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> Cancel </button>
                                </div>
                            </form>
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
        $("#branch_id").change(function () {
            var branch_id = $(this).val();
            var dataString = 'parent_categories_by_branch_id=' + branch_id;
            $.ajax({
                type: "POST",
                url: "functions/sub_cat_functions.php",
                data: dataString,
                dataType: 'text',
                cache: false,
                success: function (html) {
                    $("#parent_category_id").html(html);
                }
            });

        });
    </script>
    <script>

        $("#spicy_show").change(function () {
            var spicy_show = $(this).val();
            if (spicy_show == 1) {
                $("#spicy_type").show();
            } else {
                $('#spicy_type').css('display', 'none');
            }
        });
    </script>
    <script>
        $('.add').click(function () {
            $('.block:last').before('<div class="block"><input name="addition[]" type="text" parsley-trigger="change" required placeholder="Add" class="form-control thisField"><input name="addition_price[]" type="text" parsley-trigger="change" required placeholder="Price" class="form-control thisField"><button class="btn add-remove remove-me remove" type="button">-</button></div>');
        });
        $('.optionBox').on('click', '.remove', function () {
            $(this).parent().remove();
        });
        $('.add_two').click(function () {
            $('.block_two:last').before('<div class="block_two"><input name="size[]" type="text" parsley-trigger="change" required placeholder="Size EN " class="form-control thisField"><input name="size_ar[]" type="text" parsley-trigger="change" required placeholder="Size AR " class="form-control thisField"><input name="size_price[]" type="number" min="0" step="0.01" parsley-trigger="change" required placeholder="price" class="form-control thisField"><button class="btn add-remove remove-me remove_two" type="button">-</button></div>');
        });
        $('.optionBox_two').on('click', '.remove_two', function () {
            $(this).parent().remove();
        });
    </script>

    <script>
        $(document).ready(function () {
            $("#cssmenu ul>li").removeClass("active");
            $("#item3").addClass("active");
        });
    </script>
    <script type="text/javascript">
        $('.select2me').select2({
            placeholder: "Select",
            width: 'auto',
            allowClear: true
        });
    </script>
</body>
</html>