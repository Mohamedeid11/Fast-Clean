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

if (isset($_POST['washer_update'])) {
    $temp = $_POST;

    $washer_id_update = $temp['washer_id_update'];
    $washer_name_en = $temp['washer_name_en'];
    $washer_name_ar = $temp['washer_name_ar'];
    $washer_desc_en = $temp['washer_desc_en'];
    $washer_desc_ar = $temp['washer_desc_ar'];
    $washer_type_id_update = $temp['washer_type_id_update'];
    $display = $temp['display'];




    if (isset($_FILES['image_update']['name']) && !empty($_FILES['image_update']['name'])) {

        $image_ext_old = $_POST['image_ext_old'];
        $mostafa = explode('/', $image_ext_old);
        $image_name = $mostafa[7];
        $full_img_path = "../api/uploads/Washers/$washer_id_update" . "/" . $image_name;
        if (file_exists($full_img_path)) {
            @unlink($full_img_path);
        }

        if (!file_exists("../api/uploads/Washers/" . $washer_id_update)) {
            mkdir("../api/uploads/Washers/" . $washer_id_update, 0777, true);
        }

        $image_name_update = $_FILES['image_update']['name'];
        $image_tmp_update = $_FILES['image_update']['tmp_name'];

        $image_path = "../api/uploads/Washers/$washer_id_update" . "/" . $image_name_update;
        $image_database = "{$sit_url}/api/uploads/Washers/$washer_id_update" . "/" . $image_name_update;


        if (move_uploaded_file($image_tmp_update, $image_path)) {

            $update = $con->query("UPDATE `washers` SET `washer_name_en`='$washer_name_en' , `washer_name_ar`='$washer_name_ar' , `washer_desc_en`='$washer_desc_en' , `washer_desc_ar`='$washer_desc_ar',`washer_type_id`='$washer_type_id_update' ,`washer_image`='$image_database'  WHERE `washer_id`='$washer_id_update'");
        }
        if ($update) {
            echo get_success("Updated Successfully ");
        } else {
            echo get_error("there's an error ");
        }
    }else {
        $update = $con->query("UPDATE `washers` SET `washer_name_en`='$washer_name_en' , `washer_name_ar`='$washer_name_ar' , `washer_desc_en`='$washer_desc_en' , `washer_desc_ar`='$washer_desc_ar',`washer_type_id`='$washer_type_id_update'  WHERE `washer_id`='$washer_id_update'");
    }
    $itr = $temp['itr'];
    for ($i = 0; $i <= $itr; $i++) {

        if ($temp['service_price_' . $i . ''] != '') {

            $query_service = $con->query("SELECT * FROM `services` where `service_id`='" . $temp['service_id_' . $i . ''] . "'");

            $service_count = mysqli_num_rows($query_service);
            if ($service_count == 0) {
                $con->query("INSERT INTO `services` VALUES ('" . $temp['service_name_en_' . $i . ''] . "','" . $temp['service_name_ar_' . $i . ''] . "','" . $temp['service_price_' . $i . ''] . "' , '" . $washer_id_update . "','" . date("Y-m-d H:i:s") . "')");
            } else {
                $con->query("UPDATE  `services` SET  `service_name_ar`='" . $temp['service_name_ar_' . $i . ''] . "' , `service_name_en`='" . $temp['service_name_en_' . $i . ''] . "' , `service_price`='" . $temp['service_price_' . $i . ''] . "'   WHERE `service_id`='" . $temp['service_id_' . $i . ''] . "' AND `washer_id`='$washer_id_update' ");

            }
        }
    }

//    $washer_services_prices_update = sub_cat_size_prices_update($temp);
    echo get_success("Successfully Updated");
    echo "<meta http-equiv='refresh' content='0'>";
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
                        <h4 class="page-title"><?=lang('washers')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="sub_category_view.php"><?=lang('washers')?></a></li>
                            <li class="active"><?=lang('update_washer')?></li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>
                <?php
                if ($_GET['washer_typeID']) {

                    $get_washer_id = $_GET['washer_typeID'];

                    $query_select = $con->query("SELECT * FROM `washers` WHERE `washer_id` = '{$get_washer_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $washer_id = $row_select['washer_id'];
                    $washer_type_id = $row_select['washer_type_id'];
                    $washer_name_en = $row_select['washer_name_en'];
                    $washer_name_ar = $row_select['washer_name_ar'];
                    $washer_desc_en = $row_select['washer_desc_en'];
                    $washer_desc_ar = $row_select['washer_desc_ar'];
                    $display = $row_select['display'];


                    $washer_image = $row_select['washer_image'];
                    $get_image_ext = explode('.', $washer_image);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="washer_id_update" id="washer_id_update" parsley-trigger="change"  value="<?= $washer_id; ?>" class="form-control">

                                        <div class="form-group col-md-3">
                                            <label for="parent_category_id_update"><?=lang('category')?></label>
                                            <select class="form-control select2me" name="washer_type_id_update" id="washer_type_id_update" required parsley-trigger="change">
                                                <option value="" ><?=lang('choose')?></option>
                                                <?php
                                                $query = $con->query("SELECT * FROM `washer_type`   ORDER BY `id` ASC");
                                                while ($row = mysqli_fetch_assoc($query)) {
                                                    $id = $row['id'];
                                                    $washer_type_name_en = $row['washer_type_name_en'];
                                                    $washer_type_name_ar = $row['washer_type_name_ar'];
                                                    if ($washer_type_id == $id) {
                                                        echo "<option value='{$id}' selected='selected'>{$washer_type_name_en}-{$washer_type_name_ar}</option>";
                                                    } else {
                                                        echo "<option value='{$id}'>{$washer_type_name_en}-{$washer_type_name_ar}</option>";
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="sub_cat_name"><?=lang('washer_name_english')?></label>
                                            <input type="text" name="washer_name_en" id="washer_name_en" parsley-trigger="change"  value="<?=$washer_name_en; ?>" class="form-control">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="sub_cat_name_ar"> <?=lang('washer_name_arabic')?></label>
                                            <input type="text" name="washer_name_ar" id="washer_name_ar" parsley-trigger="change"  value="<?= $washer_name_ar ?>" class="form-control">
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="form-group col-md-3">
                                            <label for="sub_cat_desc"><?=lang('washer_desc_english')?></label>
                                            <textarea class="form-control" rows="3" name="washer_desc_en"  minlength="3" maxlength="1000" ><?= $washer_desc_en ?></textarea>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="sub_category_desc_ar"><?=lang('washer_desc_arabic')?></label>
                                            <textarea class="form-control" rows="3" name="washer_desc_ar"  minlength="3" maxlength="1000" ><?php echo $washer_desc_ar; ?></textarea>
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="form-group col-md-3">
                                            <label class="control-label">  <?=lang('status')?></label>
                                            <select class="form-control" name="display" required parsley-trigger="change">
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
                                            </select>hidden
                                        </div>


                                        <div class="clearfix"></div>

                                        <input type="hidden" name="image_ext_old" value="<?php echo $washer_image; ?>" />
                                        <div class="form-group m-b-0">
                                            <label for="userName"><?= lang('image')?>  <a class="showImg"><?= lang('edit')?>?</a> </label>

                                            <div class="gal-detail thumb getImage">
                                                <a href="<?php echo $washer_image; ?>" class="image-popup" title="<?= $washer_name_en ?>">
                                                    <img src="<?php echo $washer_image; ?>" class="thumb-img" alt="<?= $washer_name_en; ?>">
                                                </a>
                                            </div>

                                            <div class="form-group m-b-0">
                                                <label class="control-label"><?= lang('image')?> </label>
                                                <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                            </div>
                                            <?php
                                            $itr;
                                            $count_washer_services = $con->query("SELECT * FROM `services` where washer_id='$washer_id' ORDER BY `service_id` ASC");
                                            $count = mysqli_num_rows($count_washer_services);
                                            if ($count > 0) {
                                                $itr = $count;
                                            } else {
                                                $itr = 1;
                                            }
                                            echo "<input type='hidden' name='itr' id='itr' value='{$itr}'>";
                                            ?>

                                        </div>
                                        <br />
                                        <div class="form-group optionBox_two" style="position: relative;">
                                            <label class="control-label"><?= lang('services')?></label>

                                            <?php
                                            $query = $con->query("SELECT * FROM `services` where washer_id='$washer_id' ORDER BY `service_id` ASC");
                                            $index = 0;
                                            while ($row = mysqli_fetch_assoc($query)) {
                                                $service_id = $row['service_id'];
                                                $washer_id = $row['washer_id'];
                                                $service_name_en = $row['service_name_en'];
                                                $service_name_ar = $row['service_name_ar'];
                                                $service_price = $row['service_price'];

                                                echo "<div class='block_two ' id='cont_{$index}'>
                                                        <input name='service_id_{$index}' id='service_id_{$index}' type='hidden'  value='{$service_id}'>
                                                        <input name='service_name_en_{$index}' id='service_name_en_{$index}' type='text' parsley-trigger='change' required placeholder='Size EN ' value='{$service_name_en}' class='form-control thisField'>
                                                        <input name='service_name_ar_{$index}' id='service_name_ar_{$index}' type='text' parsley-trigger='change' required placeholder='Size AR ' value='{$service_name_ar}' class='form-control thisField'>
                                                        <input name='service_price_{$index}' id='service_price_{$index}' type='number' step='0.01' min='0' parsley-trigger='change' required placeholder='price' value='{$service_price}' class='form-control thisField'>
                                                        <button class='btn add-remove remove-me remove_two' data-id='{$service_id}'  data-itra='{$index}' type='button'>-</button>
                                                    <br></div>";
                                                $index++;
                                            }
                                            ?>
                                            <br>


                                            <div class="block_two">
                                                <span class="btn add-more add_two" data-itra="1">+</span>
                                            </div>
                                        </div>


                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="washer_update" id="washer_update"><?= lang('save')?></button>
                                        </div>
                                    </form>
                                </div>
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
        var branch_id= $(this).val();
        var dataString = 'parent_categories_by_branch_id=' + branch_id;
        $.ajax({
            type: "POST",
            url: "functions/washer_function.php",
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
    $('.add').click(function () {
        $('.block:last').before('' +
            '<div class="block">' +
            '<input name="addition[]" type="text" parsley-trigger="change" required placeholder="add" class="form-control thisField">' +
            '<input name="addition_price[]" type="text" parsley-trigger="change" required placeholder="price" class="form-control thisField">' +
            '<button class="btn add-remove remove-me remove" type="button">-</button></div>');
    });
    $('.optionBox').on('click', '.remove', function () {
        $(this).parent().remove();
    });
    var field = 1;
    $('.add_two').click(function () {
        var subj_itra = $(this).attr('data-itra');
        var itr = $('#itr').val();
        var itr = Number(itr) + 1;
        $('#itr').val(itr);
        field++;

        $('.block_two:last').before('' +
            '<div class="block_two" id="cont_' + itr + '">' +
            '<input name="service_name_en_' + itr + '" id="name_en_' + itr + '" type="text" parsley-trigger="change" required placeholder="Name In English " class="form-control thisField">' +
            '<input name="service_name_ar_' + itr + '" id="name_ar_' + itr + '" type="text" parsley-trigger="change" required placeholder="Name In Arabic" class="form-control thisField">' +
            '<input id="service_price_' + itr + '" name="service_price_' + itr + '" type="number" step="0.01" min="0" parsley-trigger="change" required placeholder="price" class="form-control thisField">' +
            '<button class="btn add-remove remove-me remove_two" data-itra="' + itr + '" type="button">-</button></div>');


    });
    $('.optionBox_two').on('click', '.remove_two', function () {
               $(this).parent().remove();

        var itra = $(this).attr('data-itra');
        var service_id = $(this).attr('data-id');
        var dataString = 'del_service_id=' + service_id;
        var dataString2 = 'delete_washer_service_id=' + service_id;
        $.ajax({
            type: "POST",
            url: "functions/washer_function.php",
            data: dataString,
            dataType: 'text',
            cache: false,
            success: function (data) {
                if (data == 1) {
                    alert("Sorry, you can not delete size")
                } else {
                    $.ajax({
                        type: "POST",
                        url: "functions/washer_function.php",
                        data: dataString2,
                        dataType: 'text',
                        cache: false,
                        success: function (data) {
                            if (data == 1) {
                                $('#cont_' + itra + '').remove();
                            }
                        }
                    });

                }
            }
        });
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