<?php


function parent_cat_count() {

    global $con;

    $query = $con->query("SELECT * FROM `parent_categories` ORDER BY `parent_category_id` ASC");

    $parent_cat_count = mysqli_num_rows($query);

    return $parent_cat_count;
}

if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `washers` SET `display`=1 WHERE `washer_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `washers` SET `display`=0 WHERE `washer_id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}


if (isset($_POST['washer_id'])) {

    include("../connection.php");

    $id = $_POST['washer_id'];

    $querya = $con->query("SELECT * FROM `washers` WHERE `washer_id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $query = $con->query("DELETE FROM `washers` WHERE `washer_id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}




function sub_cat_size_prices_update($temp) {
    global $con;
    $washer_id_update = $temp['washer_id_update'];
    $itr = $temp['itr'];
    for ($i = 0; $i <= $itr; $i++) {

        if ($temp['size_price_' . $i . ''] != '') {

            $query_size = $con->query("SELECT * FROM `services` where `service_id`='" . $temp['size_id_' . $i . ''] . "'");

            $size_count = mysqli_num_rows($query_size);
            if ($size_count == 0) {
                $con->query("INSERT INTO `services` VALUES (null,'" . $temp['size_' . $i . ''] . "','" . $temp['size_ar_' . $i . ''] . "','" . $temp['size_price_' . $i . ''] . "' , '" . $washer_id_update . "','" . date("Y-m-d H:i:s") . "')");
            } else {
                $con->query("UPDATE  `services` SET  `service_name_ar`='" . $temp['size_ar_' . $i . ''] . "' , `service_name_en`='" . $temp['size_' . $i . ''] . "' , `service_price`='" . $temp['size_price_' . $i . ''] . "'   WHERE `service_id`='" . $temp['size_id_' . $i . ''] . "' AND `washer_id`='$washer_id_update' ");

            }
        }
    }
}

// Add Sub Category Additions Name & Price For Each Size
function add_sub_cat_addition_prices($sub_cat_addition_name, $sub_cat_addition_name_ar, $sub_cat_addition_price,$sub_cat_addition_price_sar) {

    global $con;

    global $sub_category_id_cus;
    global $sub_category_size_id_cus;

    $sub_cat_addition_name = $_POST['addition'];
    $sub_cat_addition_name_ar = $_POST['addition_ar'];
    $sub_cat_addition_price = $_POST['addition_price'];
    $sub_cat_addition_price_sar= $_POST['addition_price_sar'];

    foreach ($sub_cat_addition_name as $key => $m) {
        $con->query("INSERT INTO `sub_categories_addition_prices` VALUES (null,'" . $m . "','" . $sub_cat_addition_name_ar[$key] . "','" . $sub_cat_addition_price[$key] . "','" . $sub_cat_addition_price_sar[$key] . "','" . date("Y-m-d H:i:s") . "')");
    }

    return mysqli_insert_id($con);
}
if (isset($_POST['del_service_id'])) {
    include("../connection.php");
    $size_id = $_POST['del_service_id'];
    $query_select = $con->query("SELECT * FROM `cart` WHERE `size_id`='" . $size_id . "' ORDER BY `cart_id`  ");
    $cart_count = mysqli_num_rows($query_select);

    if ($cart_count > 0) {
        echo 1;
    } else {
        echo 0;
    }
}
if (isset($_POST['delete_washer_service_id'])) {
    include("../connection.php");
    $service_id = $_POST['delete_washer_service_id'];
    $delete = $con->query("DELETE FROM `services` WHERE `service_id` ='$service_id'");

    if ($delete) {
        echo 1;
    } else {
        echo 0;
    }
}





