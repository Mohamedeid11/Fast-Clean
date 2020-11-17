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

    $result = mysql_query("SELECT * FROM `orders` WHERE `client_id`='$client_id' AND ( (`order_status`=1 and  `order_follow`=3) or `order_status`=2 ) ORDER BY `order_id` DESC") or die(mysql_error());

    // check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node

        $response["product"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $searchComma = ',';
            $cart_id_all_yala = $row["cart_id"];
            $order_id = $row["order_id"];
            $order_status = $row["order_status"];
            $order_follow = $row["order_follow"];
            $order_date = $row["date"];
            $client_address_id = $row["client_address_id"];
            $discount_percentage = $row["discount_percentage"];

            $get_region_id = get_region_id($client_id, $client_address_id);

            $cart_id_all = explode(',', $cart_id_all_yala);

            $res_arr_values = array();

            foreach ($cart_id_all as $one) {
                $result_2 = mysql_query("SELECT * FROM `cart` WHERE `cart_id`=$one  ORDER BY `cart_id` LIMIT 1");

                $row_select = mysql_fetch_array($result_2);
                $results["cart_id"] = $row_select['cart_id'];
                $washer_id = $row_select["washer_id"];
                $vehicle_id = $row_select["vehicle_id"];
                $subscription_id = $row_select["subscription_id"];
                $results["washer_id"] = $row_select["washer_id"];

                if ($lang == "ar") {
                    $results["washer_name"] = get_washer_name_ar_from_id($washer_id);
                    $results["vehicle_name"] = get_vehicle_name_ar_from_id($vehicle_id);
                    $results["subscription_name"] = get_subscription_name_ar_from_id($subscription_id);
                } else {
                    $results["washer_name"] = get_washer_name_en_from_id($washer_id);
                    $results["vehicle_name"] = get_vehicle_name_en_from_id($vehicle_id);
                    $results["subscription_name"] = get_subscription_name_en_from_id($subscription_id);
                }
                $results["washer_image"] = get_washer_image_from_id($washer_id);


                $results["service_id"] = $row["service_id"];
                $service_id = $row["service_id"];
                if ($lang == "ar") {
                    $results["service_name"] = get_service_name_ar_from_id($service_id);
                } else {
                    $results["service_name"] = get_service_name_en_from_id($service_id);
                }
                $results["services_price"] = get_service_price_from_id($service_id);

                $price = $row_select['price'];
                $results["price"] = number_format((float) ($price), 3, '.', '');
                $total_amount = totalPrice($order_id);

//                array_push($response["product"], $res_arr_values);
            }
            $response_2 = array(

                "client_id" => $_GET["client_id"],
                "order_date" => $order_date,
                "order_status" => $order_status,
                "order_follow" => $order_follow,
                "order_id" => $order_id,
                "discount_percentage" => $discount_percentage,
                "total_price" => number_format((float) ($total_amount), 3, '.', '')
            );
            array_push($response["product"], $response_2);
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
    if ($lang == "ar") {
        $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";
    } else {
        $response["message"] = "Missing data Please review your data";
    }
    // echo no users JSON
    echo json_encode($response);
}
?>