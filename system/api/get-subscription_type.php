<?php

/*
 * Following code will list all the subscriptions
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


// get all subscriptions from subscriptions table

if (isset($_GET['lang']) != '') {

    $category_id = $_GET['category_id'];
    $lang = $_GET['lang'];
    $client_id = $_GET['client_id'];

    $result = mysql_query("SELECT * FROM `subscription_type` WHERE  `display`=1 order by id desc") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // subscriptions node
        $response["subscription"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $subscription = array();
            $subscription["id"] = $row["id"];
            if ($lang == "ar") {
                $subscription["subscription_name"] = $row["subscription_name_ar"];
            } else {
                $subscription["subscription_name"] = $row["subscription_name_en"];
            }

            // push single subscription into final response array
            array_push($response["subscription"], $subscription);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["subscription"] = array();

        // temp user array
        $subscription = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no subscriptions found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>