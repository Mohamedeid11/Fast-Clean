<?php

if (isset($_POST['id'])) {

    include("../connection.php");

    $id = $_POST['id'];

    $querya = $con->query("SELECT * FROM `news` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $slider_image = $row_select['photo'];

    $mostafa = explode('/', $slider_image);

    $image_name = $mostafa[7];

    $full_img_path = "../../api/uploads/News/{$id}/{$image_name}";

    $folder_full_img_path = "../../api/uploads/News/{$id}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);

    $query = $con->query("DELETE FROM `news` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}




?>
