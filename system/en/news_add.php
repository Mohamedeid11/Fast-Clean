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

        $title_en = mysqli_real_escape_string($con, trim($_POST['title_en']));
        $title_ar = mysqli_real_escape_string($con, trim($_POST['title_ar']));
        $subject_en = mysqli_real_escape_string($con, trim($_POST['subject_en']));
        $subject_ar = mysqli_real_escape_string($con, trim($_POST['subject_ar']));


        $photo = $_FILES['photo']['name'];
        $photo_tmp = $_FILES['photo']['tmp_name'];


        $errors = array();

        if (empty($title_en)) {
            $errors[] = "Please enter all fields !";
        }
        if (empty($title_ar)) {
            $errors[] = "Please enter all fields !";
        }
        if (empty($subject_en)) {
            $errors[] = "Please enter all fields !";
        }
        if (empty($subject_ar)) {
            $errors[] = "Please enter all fields !";
        }

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {

            $con->query("INSERT INTO `news` ( `title_en`, `title_ar`, `subject_en`, `subject_ar`, `photo`) VALUES ( '$title_en', '$title_ar', '$subject_en', '$subject_ar', ' $photo')");

            $id = mysqli_insert_id($con);
            if (!file_exists("../api/uploads/News/" . $id)) {
                mkdir("../api/uploads/News/" . $id, 0777, true);
            }
            $image_path = "../api/uploads/News/" . $id . "/" . $photo;
            $image_database = "{$sit_url}/api/uploads/News/" . $id . "/" . $photo;

            if (move_uploaded_file($photo_tmp, $image_path)) {
                $update = $con->query("UPDATE `news` SET  `photo`='$image_database' WHERE `id`='$id'");
            }
            

            echo get_success("Successfully Added");
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
                        <h4 class="page-title"> News  </h4>
                        <ol class="breadcrumb">
                            <li><a href="news_view.php">News </a></li>
                            <li class="active">Add News  </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b> Add News  </b></h4>
                            <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <div class="form-group col-md-5">
                                    <label for="sub_cat_name">English Title  </label>
                                    <input type="text" name="title_en" parsley-trigger="change" required placeholder="Title EN" class="form-control" id="title_en">
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="sub_cat_name_ar"> Arabic Title </label>
                                    <input type="text" name="title_ar" parsley-trigger="change"  placeholder="Title AR" class="form-control" id="title_ar">
                                </div>

                                <div class="clearfix"></div>

                                <div class="form-group col-md-5">
                                    <label for="sub_cat_desc"> English Subject</label>
                                    <textarea class="form-control" rows="3" name="subject_en"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="sub_cat_desc_ar"> Arabic Subject</label>
                                    <textarea class="form-control" rows="3" name="subject_ar"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                
                                <div class="clearfix"></div>
                                <div class="form-group m-b-0">
                                    <label class="control-label">News Image</label>
                                    <input type="file" name="photo" id="photo" class="filestyle" multiple data-buttonname="btn-primary">
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