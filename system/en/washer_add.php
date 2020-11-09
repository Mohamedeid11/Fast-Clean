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

        $category_id = $_POST['category_id'];
        $washer_name_en = mysqli_real_escape_string($con, trim($_POST['washer_name_en']));
        $washer_name_ar = mysqli_real_escape_string($con, trim($_POST['washer_name_ar']));
        $washer_desc_en = mysqli_real_escape_string($con, trim($_POST['washer_desc_en']));
        $washer_desc_ar = mysqli_real_escape_string($con, trim($_POST['washer_desc_ar']));
        $display = $_POST['display'];



        $washer_image = $_FILES['washer_image']['name'];
        $washer_tmp = $_FILES['washer_image']['tmp_name'];


        $service_name_en = $_POST['name_en'];
        $service_name_ar = $_POST['name_ar'];
        $service_price = $_POST['service_price'];

        $errors = array();
        if (empty($washer_name_en)) {
            $errors[] = "Please enter Washer Type Name In English!";
        }
        if (empty($washer_name_ar)) {
            $errors[] = "Please enter Washer Type Name In English!";
        }
        if (empty($washer_desc_en)) {
            $errors[] = "Please enter Washer Type Name In English!";
        }
        if (empty($washer_desc_ar)) {
            $errors[] = "Please enter Washer Type Name In English!";
        }
        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {

            $con->query("INSERT INTO `washers` (`category_id`, `washer_name_en`, `washer_name_ar`, `washer_desc_en`, `washer_desc_ar`,  `display`) VALUES ('$category_id', '$washer_name_en', '$washer_name_ar', '$washer_desc_en', '$washer_desc_ar', '  $display')");

            $id = mysqli_insert_id($con);
            if (!file_exists("../api/uploads/Washers/" . $id)) {
                mkdir("../api/uploads/Washers/" . $id, 0777, true);
            }
            $image_path = "../api/uploads/Washers/" . $id . "/" . $washer_image;
            $image_database = "{$sit_url}/api/uploads/Washers/" . $id . "/" . $washer_image;

            if (move_uploaded_file($washer_tmp, $image_path)) {
                $update = $con->query("UPDATE `washers` SET  `washer_image`='$image_database' WHERE `washer_id`='$id'");
            }

            $service_count = count($_POST['service_price']);
            for ($i=0 ;$i<$service_count ;$i++) {
                $service_name_en = $_POST['name_en'][$i];
                $service_name_ar = $_POST['name_ar'][$i];
                $service_price = $_POST['service_price'][$i];

                $con->query(" INSERT INTO `services` (`washer_id`, `service_name_en`, `service_name_ar`, `service_price`) VALUES ('$id', '$service_name_en', '$service_name_ar', '$service_price')");
            }
//            $add_sub_cat_size_prices = add_sub_cat_size_prices($sub_cat_size_name, $sub_cat_size_name_ar, $sub_cat_size_price);

            echo get_success("Successfully Added");
        }
    }
    ?>
    <div class="container">
        </br>
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('washers')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="washer_view.php"><?=lang('washers')?></a></li>
                            <li class="active"><?=lang('add_new_washer')?></li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b><?=lang('add_new_washer')?></b></h4>
                            <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <div class="form-group col-md-3">
                                    <label class="control-label"><?=lang('category')?></label>
                                    <select class="form-control select2me" name="category_id" id="category_id" required>
                                        <option selected='selected' value="" ><?=lang('choose')?></option>
                                        <?php
                                        $query = $con->query("SELECT * FROM `category` ORDER BY `id` ASC");
                                        while ($row = mysqli_fetch_assoc($query)) {
                                            $id = $row['id'];
                                            $category_name_en = $row['category_name_en'];
                                            $category_name_ar = $row['category_name_ar'];
                                            echo "<option value='{$id}'>{$category_name_en} - {$category_name_ar}</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="sub_cat_name"><b><?=lang('washer_name_english')?></label>
                                    <input type="text" name="washer_name_en" parsley-trigger="change" required placeholder="<?=lang('washer_name_english')?>" class="form-control" id="washer_name_en">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="sub_cat_name_ar"><?=lang('washer_name_arabic')?></label>
                                    <input type="text" name="washer_name_ar" parsley-trigger="change"  placeholder="<?=lang('washer_name_arabic')?>" class="form-control" id="washer_name_ar">
                                </div>
                                <div class="clearfix"></div>

                                <div class="form-group col-md-3">
                                    <label for="sub_cat_desc"><?=lang('washer_desc_english')?></label>
                                    <textarea class="form-control" rows="3" name="washer_desc_en"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="sub_cat_desc_ar"><?=lang('washer_desc_arabic')?></label>
                                    <textarea class="form-control" rows="3" name="washer_desc_ar"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                <div class="clearfix"></div>

                                <div class="form-group col-md-3">
                                    <label class="control-label">  <?=lang('status')?></label>
                                    <select class="form-control" name="display" required parsley-trigger="change">
                                        <option value="1" >Show</option>
                                        <option value="0">Hidden</option>
                                    </select>
                                </div>
                                <div class="form-group m-b-0">
                                    <label class="control-label"><?=lang('image')?></label>
                                    <input type="file" name="washer_image" id="washer_image" class="filestyle" multiple data-buttonname="btn-primary">
                                </div>
                                <br />
                                <div class="form-group optionBox_two" style="position: relative;">
                                    <label class="control-label"><?=lang('services')?></label>
                                    <div class="block_two">
                                        <input name="name_en[]" type="text" parsley-trigger="change" required placeholder="<?=lang('name_english')?> " class="form-control thisField">
                                        <input name="name_ar[]" type="text" parsley-trigger="change" required placeholder="<?=lang('name_arabic')?>" class="form-control thisField">
                                        <input name="service_price[]" type="number" min="0" step="0.01" parsley-trigger="change" required placeholder="<?=lang('price')?>" class="form-control thisField">
                                        <button class="btn add-remove remove-me remove_two" type="button">-</button>
                                    </div>
                                    <br>
                                    <div class="block_two">
                                        <span class="btn add-more add_two">+</span>
                                    </div>
                                </div>
                                <br />

                                <br />
                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"><?=lang('save')?></button>
                                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?=lang('cancel')?></button>
                                </div>
                            </form>
                        </div>
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
            $('.block_two:last').before('' +
                '<div class="block_two">' +
                '<input name="name_en[]" type="text" parsley-trigger="change" required placeholder="Name In English " class="form-control thisField">' +
                '<input name="name_ar[]" type="text" parsley-trigger="change" required placeholder="Name In Arabic " class="form-control thisField">' +
                '<input name="service_price[]" type="number" min="0" step="0.01" parsley-trigger="change" required placeholder="price" class="form-control thisField">' +
                '<button class="btn add-remove remove-me remove_two" type="button">-</button></div>');
        });
        $('.optionBox_two').on('click', '.remove_two', function () {
            $(this).parent().remove();
        });
    </script>

    <script>
        $(document).ready(function () {
            $("#cssmenu ul>li").removeClass("active");
            $("#item4").addClass("active");
        });
    </script>
</body>
</html>