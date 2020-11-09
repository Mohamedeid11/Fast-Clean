<?php

if (isset($_POST['comment_id'])) {

    include("../connection.php");

    $id = $_POST['comment_id'];

    $querya = $con->query("SELECT * FROM `comments` WHERE `comment_id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $query = $con->query("DELETE FROM `comments` WHERE `comment_id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}





