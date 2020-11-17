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

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With');


// get all products from products table
// Start Functionality  
$postdata = file_get_contents("php://input");

if (isset($postdata) && !empty($postdata)) {
    $Req = json_decode($postdata, TRUE);
    $lang = $Req['lang'];
//    $remove_id = $Req['remove_id'];

    $note = $Req['note'];
    $washer_id = $Req['washer_id'];
    $vehicle_id = $Req['vehicle_id'];
    $subscription_id = $Req['subscription_id'];
    $service_id = $Req['service_id'];
    $subscription_type = $Req['subscription_type'];
    $order_date = $Req['order_date'];
    $order_time = $Req['order_time'];

//    $quantity = $Req['quantity'];
//    $get_service_price = get_service_price_from_id($service_id);
//    $services_price = 0;


    if ($service_id != '') {
        $services_id_all = explode(',', $service_id);
        foreach ($services_id_all as $service_id) {
            $get_services_price = get_service_price_from_id($service_id);
            $services_price += $get_services_price;
        }
    }
//    $quantity = 1 ;
//    $total = $get_service_price + $services_price ;

//    $total_price = $quantity * $total;
    $price = $services_price;

    $client_id = $Req['client_id'];

    $result = mysql_query("INSERT INTO cart(washer_id,vehicle_id,subscription_id,service_id,order_date,order_time,price,client_id,note,status,date) 
                                           VALUES('$washer_id','$vehicle_id','$subscription_id','$service_id','$order_date','$order_time','$price','$client_id',\"{$note}\" ,'0','" . date("Y-m-d") . "')");


    $response["product"] = array();

    // temp user array
    $product = array();
    $product["cart_id"] = mysql_insert_id();

    $product["total"] = $price;
    $product["client_id"] = $Req["client_id"];

    // push single product into final response array
    array_push($response["product"], $product);


    // check if row inserted or not
    if ($result) {
        // successfully inserted into database
        $response["success"] = 1;
        $response["message"] = "تم الإضافة بنجاح.";

        // echoing JSON response
        echo json_encode($response);
    } else {
        // failed to insert row
        if ($lang == "ar") {
            $response["message"] = "عفوا لقد حدث خطأ.";
        } else {
            $response["message"] = "Sorry, there was an error.";
        }
        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echoing JSON response
    echo json_encode($response);
}
?>