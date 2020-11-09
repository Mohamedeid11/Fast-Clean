<?php


if (isset($_POST['client_id'])) {

    include("../connection.php");

    $client_id = $_POST['client_id'];

    $querya = $con->query("SELECT * FROM `clients` WHERE `client_id`='$client_id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $slider_image = $row_select['image'];

    $mostafa = explode('/', $slider_image);

    $image_name = $mostafa[7];

    $full_img_path = "../../api/uploads/Clients/{$client_id}/{$image_name}";

    $folder_full_img_path = "../../api/uploads/Clients/{$client_id}";

    if (file_exists($full_img_path)) {
        @unlink($full_img_path);
    }

    rmdir($folder_full_img_path);

    $query = $con->query("DELETE FROM `clients` WHERE `client_id`='$client_id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}
function clientName($client_id) {
    global $con;
    $query_select = $con->query("SELECT * FROM `clients` WHERE `client_id`='" . $client_id . "' ORDER BY `client_id` LIMIT 1 ");
    $row_select = mysqli_fetch_array($query_select);
    $client_name = $row_select['client_name_en'];
    return $client_name;
}

function clientPhone($client_id) {
    global $con;
    $query_select = $con->query("SELECT * FROM `clients` WHERE `client_id`='" . $client_id . "' ORDER BY `client_id` LIMIT 1 ");
    $row_select = mysqli_fetch_array($query_select);
    $client_phone = $row_select['client_phone'];
    return $client_phone;
}

?>
