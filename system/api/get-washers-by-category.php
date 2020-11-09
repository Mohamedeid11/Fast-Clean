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

mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");


// get all products from products table

if (isset($_GET['category_id']) && $_GET['lang'] != '') {

    $category_id = $_GET['category_id'];
    $lang = $_GET['lang'];
    $client_id = $_GET['client_id'];

    $result = mysql_query("SELECT * FROM `washers` WHERE `category_id`='$category_id' and `display`=1 order by washer_id desc") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node
        $response["product"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $product = array();
            $product["washer_id"] = $row["washer_id"];
            if ($lang == "ar") {
                $product["washer_name"] = $row["washer_name_ar"];
                $product["washer_desc"] = $row["washer_desc_ar"];
            } else {
                $product["washer_name"] = $row["washer_name_en"];
                $product["washer_desc"] = $row["washer_desc_en"];
            }
            $product["washer_image"] = $row["washer_image"];
            $product["category_id"] = $row["category_id"];
            $washer_id = $row["washer_id"];
            $product["rates"] = resume_evaluate($washer_id);
            $product["viewed"] = resume_viewed($washer_id);

            // push single product into final response array
            array_push($response["product"], $product);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
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