<?php


if (isset($_POST['id'])) {

    include("../connection.php");

    $id = $_POST['id'];

    $querya = $con->query("SELECT * FROM `about_project` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $slider_image = $row_select['image'];


    $query = $con->query("DELETE FROM `about_project` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}


?>
