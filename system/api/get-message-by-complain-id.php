<?php

/*
 * Following code will list all the products
 */
// array for JSON response
$response = array();

// include db connect class
include("db_connect.php");

// connecting to db
$db = new DB_CONNECT();

mysql_query("SET NAMES 'utf8'");

mysql_query("SET CHARACTER SET utf8");

mysql_query("SET SESSION collation_connection = 'utf8_general_ci'");


// get all products from products table

if (isset($_GET['complaint_id']) && $_GET['complaint_id'] != '') {

    $complaint_id = $_GET['complaint_id'];


    $result = mysql_query("SELECT * FROM `messages` WHERE `complaint_id`='$complaint_id' order by `id` ASC") or die(mysql_error());
    if (mysql_num_rows($result) > 0) {
        $response["product"] = array();

        while ($row = mysql_fetch_array($result)) {

            $messages = array();

            $messages["content"] = $row["content"];
            $messages["is_read"] = $row["is_read"];
            $messages["date"] = $row["date"];
            $messages["complaint_id"] = $row["complaint_id"];
            $messages["type"] = $row["type"];


            array_push($response["product"], $messages);
        }



        $response["success"] = 1;
        echo json_encode($response);
    } else {

        $response["product"] = array();

// temp user array
        $product = array();

// success
        $response["success"] = 1;

// echoing JSON response
        echo json_encode($response);
    }
} else {
// no products found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

// echo no users JSON
    echo json_encode($response);
}
?>