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

if (isset($_GET['client_email'])) {

    $client_email = $_GET['client_email'];
    $contact = mysql_query("SELECT * FROM `contact`") or die(mysql_error());
    $row = mysql_fetch_array($contact);
    $email = $row["email"];

    $result = mysql_query("SELECT * FROM `clients` WHERE `client_email`='$client_email' ORDER BY `client_id` DESC limit 1") or die(mysql_error());

    // check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // products node
        $response["product"] = array();
        $row_select = mysql_fetch_array($result);


        $client_id = $row_select["client_id"];
        $client_name = $row_select["client_name"];
        $client_password = $row_select["client_password"];
        $client_email = $row_select["client_email"];
        $client_phone = $row_select["client_phone"];
        $date = $row['date'];

        $to = $client_email;
        $subject = ': كلمة المرور';
        $message = 'كلمة المرور:' . $client_password;
        $headers = 'From:مطعم السفرة الذهبية ' . "\r\n" .
                'Reply-To:' . $email . "\r\n" .
                'X-Mailer: PHP/' . phpversion();

        mail($client_email, $subject, $message, $headers);

        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        // no products found
        $response["success"] = 0;
        $response["message"] = "هذا الإيميل غير مسجل من قبل";

        // echo no clients JSON
        echo json_encode($response);
    }
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no clients JSON
    echo json_encode($response);
}
?>