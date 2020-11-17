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
if (isset($_GET['client_id']) && $_GET['lang'] != '') {

    $client_id = $_GET['client_id'];
    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `cart` WHERE `client_id`='$client_id' AND `status`=0") or die(mysql_error());

// check for empty result
    if (mysql_num_rows($result) > 0) {
// looping through all results
// products node
        $response["product"] = array();


        $total = array();
        $total['total_amount'] = get_client_cart_total_amount($client_id);
        $total_amount = get_client_cart_total_amount($client_id);
        $total['check_discount'] = check_discount();
        $check_discount = check_discount();
        if ($check_discount == 1) {
            $total['discount_percentage'] = (int) get_discount_percentage();
            $discount_percentage = get_discount_percentage();
            $total['total_amount_after_disc'] = $total_amount - (($discount_percentage / 100) * $total_amount);
            $total['total_amount_after_disc'] = strval($total['total_amount_after_disc']);
            $total_amount_after_disc = strval($total['total_amount_after_disc']);
            $vat = strval(check_vat());

            $vat_added = ($vat / 100) * $total_amount_after_disc;


            $total['vat'] = strval(check_vat());

            $total['vat_value'] = $vat_added;

            $discount_value = strval(($discount_percentage / 100) * $total_amount);

            $total['discount_value'] = $discount_value;

            $summary = $total_amount_after_disc + $vat_added;
            $total['summary'] = $summary;
        } else {
            $total['discount_percentage'] = 0;

            $total['total_amount_after_disc'] = $total_amount;

            $total['total_amount_after_disc'] = strval($total['total_amount_after_disc']);
            $total_amount_after_disc = strval($total['total_amount_after_disc']);
            $vat = strval(check_vat());
            $vat_added = ($vat / 100) * $total_amount_after_disc;
            $total['vat'] = strval(check_vat());

            $total['vat_value'] = $vat_added;

            $discount_value =  $total_amount;


            $total['discount_value'] = $discount_value;

            $summary = $total_amount_after_disc + $vat_added;

            $total['summary'] = $summary;
        }


        while ($row = mysql_fetch_array($result)) {

// temp user array
            $product = array();
            $product["cart_id"] = $row["cart_id"];
            $product["washer_id"] = $row["washer_id"];
            $washer_id = $row["washer_id"];
            $vehicle_id = $row["vehicle_id"];
            $subscription_id = $row["subscription_id"];
            $remove_id = $row["remove_id"];

            if ($lang == "ar") {
                $product["washer_name"] = get_washer_name_ar_from_id($washer_id);
                $product["vehicle_name"] = get_vehicle_name_ar_from_id($vehicle_id);
                $product["subscription_name"] = get_subscription_name_ar_from_id($subscription_id);
            } else {
                $product["washer_name"] = get_washer_name_en_from_id($washer_id);
                $product["vehicle_name"] = get_vehicle_name_en_from_id($vehicle_id);
                $product["subscription_name"] = get_subscription_name_en_from_id($subscription_id);
            }
            $product["washer_image"] = get_washer_image_from_id($washer_id);

            $product["service_id"] = $row["service_id"];
            $service_id = $row["service_id"];
            if ($lang == "ar") {
                $product["service_name"] = get_service_name_ar_from_id($service_id);
            } else {
                $product["service_name"] = get_service_name_en_from_id($service_id);
            }
            $product["services_price"] = get_service_price_from_id($service_id);


            $product["price"] = $row["price"];
            $product["client_id"] = $_GET["client_id"];


// push single product into final response array

            array_push($response["product"], $product);
        }

        array_push($response["product"], $total);


// success
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
    if ($lang == "ar") {
        $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";
    } else {
        $response["message"] = "Missing data Please review your data";
    }
// echo no users JSON
    echo json_encode($response);
}
?>