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

    $result = mysql_query("SELECT * FROM `drinks`  ORDER BY `id` DESC") or die(mysql_error());

    $response["product"] = array();
    $drinks_response = array();
    $potatos_response = array();

    while ($row = mysql_fetch_array($result)) {
        // temp user array
        $drinks = array();
        $drinks["drink_id"] = $row["id"];
        if ($lang == "ar") {
            $drinks["title"] = $row["title_ar"];
        } else {
            $drinks["title"] = $row["title_en"];
        }
        $drinks["addition_price"] = number_format((float) ($row["price"]), 3, '.', '');

        array_push($drinks_response, $drinks);
    }
    $result_1 = mysql_query("SELECT * FROM `potatos`  ORDER BY `id` DESC") or die(mysql_error());
    while ($row_1 = mysql_fetch_array($result_1)) {
        $potatos = array();
        $potatos["potato_id"] = $row_1["id"];
        if ($lang == "ar") {
            $potatos["title"] = $row_1["title_ar"];
        } else {
            $potatos["title"] = $row_1["title_en"];
        }
        $potatos["addition_price"] = number_format((float) ($row_1["price"]), 3, '.', '');

        array_push($potatos_response, $potatos);
    }
    $response_2 = array("potatos" => $potatos_response, "drinks" => $drinks_response);
    array_push($response["product"], $response_2);
    // success
    $response["success"] = 1;

    // echoing JSON response
    echo json_encode($response);
} else {
    // no products found
    $response["success"] = 0;
    if ($lang == "ar") {
        $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";
    } else {
        $response["message"] = "Missing data Please review your data";
    }
    // echo no users JSON
    echo json_encode($response);
}
?>