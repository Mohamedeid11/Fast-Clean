<?php
$response = array();

//header('Content-type: text/html');
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

// include db connect class
include("db_connect.php");
// connecting to db
$db = new DB_CONNECT();
mysql_query("SET NAMES 'utf8'");
mysql_query("SET CHARACTER SET utf8");
mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");
if (isset($_GET['washer_id']) && $_GET['lang'] != '') {

    $lang = $_GET['lang'];
    $washer_id = $_GET['washer_id'];
    $client_id = $_GET['client_id'];
    $response["success"] = 1;
    $response["washer"]=get_washer($washer_id , $lang , $client_id);
    $response["washer_service"]=get_washer_service($washer_id , $lang);
    $response["washer_images"]=get_washer_images($washer_id);
    $response["washer_address"]=get_washer_address($washer_id , $lang);
    $response["washer_contact"]=get_washer_contact($washer_id);
    $response["washer_work_time"]=get_washer_work_time($washer_id , $lang);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";
}

// echoing JSON response
echo json_encode($response);

?>