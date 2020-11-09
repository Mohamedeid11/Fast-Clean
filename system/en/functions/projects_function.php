<?php

if (isset($_POST['id'])) {

    include("../connection.php");

    $id = $_POST['id'];

    $querya = $con->query("SELECT * FROM `projects` WHERE `project_id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $slider_image = $row_select['project_image'];

    $mostafa = explode('/', $slider_image);

    $image_name = $mostafa[7];

    $full_img_path = "../../api/uploads/Projects/{$id}/{$image_name}";

    $folder_full_img_path = "../../api/uploads/Projects/{$id}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);

    $query = $con->query("DELETE FROM `projects` WHERE `project_id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}




?>
