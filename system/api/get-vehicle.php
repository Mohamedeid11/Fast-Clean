<?php

/*
 * Following code will list all the vehicles
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


// get all vehicles from vehicles table

if (isset($_GET['lang']) != '') {

    $category_id = $_GET['category_id'];
    $lang = $_GET['lang'];
    $client_id = $_GET['client_id'];

    $result = mysql_query("SELECT * FROM `vehicle_type` WHERE  `display`=1 order by id desc") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // vehicles node
        $response["vehicle"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $vehicle = array();
            $vehicle["id"] = $row["id"];
            if ($lang == "ar") {
                $vehicle["vehicle_name"] = $row["vehicle_name_ar"];
            } else {
                $vehicle["vehicle_name"] = $row["vehicle_name_en"];
            }

            // push single vehicle into final response array
            array_push($response["vehicle"], $vehicle);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["vehicle"] = array();

        // temp user array
        $vehicle = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no vehicles found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>