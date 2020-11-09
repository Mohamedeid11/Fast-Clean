<?php


if (isset($_POST['slider_id'])) {

    include("../connection.php");

    $slider_id = $_POST['slider_id'];

    $querya = $con->query("SELECT * FROM `gallery` WHERE `id`='$slider_id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $slider_image = $row_select['image'];

    $mostafa = explode('/', $slider_image);

    $image_name = $mostafa[7];

    $full_img_path = "../../api/uploads/gallery/{$slider_id}/{$image_name}";

    $folder_full_img_path = "../../api/uploads/gallery/{$slider_id}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);

    $query = $con->query("DELETE FROM `gallery` WHERE `id`='$slider_id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}


?>
