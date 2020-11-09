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

    $query = $con->query("UPDATE `subscription_type` SET `display`=1 WHERE `id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `subscription_type` SET `display`=0 WHERE `id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}


if (isset($_POST['subscription_id'])) {

    include("../connection.php");

    $id = $_POST['subscription_id'];

    $querya = $con->query("SELECT * FROM `subscription_type` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $query = $con->query("DELETE FROM `subscription_type` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}





