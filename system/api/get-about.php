<?php

/*
 * Following code will list all the products
 */
// array for JSON response
$response = array();
header('Content-type: text/html');

// include db connect class
include("db_connect.php");

// connecting to db
$db = new DB_CONNECT();

mysql_query("SET NAMES 'utf8'");

mysql_query("SET CHARACTER SET utf8");

mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");


// get all products from products table

if (isset($_GET['lang']) && $_GET['lang'] != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `about`") or die(mysql_error());

// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node
        $response["about"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $about = array();

            $about["id"] = $row["id"];
            $about["image"] = $row["image"];
            if ($lang == "ar") {
                $about["project_name"] = $row["title"];
                $about["content"] = $row["content"];
            } else {
                $about["project_name"] = $row["title_en"];
                $about["content"] = $row["content_en"];
            }
            // push single product into final response array
            array_push($response["about"], $about);
        }
        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["about"] = array();

        // temp user array
        $about = array();

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