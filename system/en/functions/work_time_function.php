<?php


if (isset($_POST['id'])) {

    include("../connection.php");

    $id = $_POST['id'];

    $querya = $con->query("SELECT * FROM `work_time` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $query = $con->query("DELETE FROM `work_time` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}


?>
