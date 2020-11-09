<?php

if (isset($_POST['id'])) {

    include("../connection.php");

    $id = $_POST['id'];

    $querya = $con->query("SELECT * FROM `project_images` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $project_id = $row_select['project_id'];
    $project_image = $row_select['image'];

    $mostafa = explode('/', $project_image);

    $image_name = $mostafa[7];

    $full_img_path = "../../api/uploads/project_images/{$id}/{$image_name}";

    $folder_full_img_path = "../../api/uploads/project_images/{$id}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);

    $query = $con->query("DELETE FROM `project_images` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}




?>
