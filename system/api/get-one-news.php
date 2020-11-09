<?php

/*
 * Following code will list all the newss
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


// get all news from news table

if (isset($_GET['news_id']) && $_GET['lang'] != '') {

    $news_id = $_GET['news_id'];
    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `news` WHERE `id` = '$news_id'  ORDER BY `id`  DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // news node
        $response["news"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $news = array();
            $news["id"] = $row["id"];
            if ($lang == "ar") {
                $news["title_ar"] = $row["title_ar"];
                $news["news_desc_ar"] = $row["subject_ar"];
            } else {
                $news["title_en"] = $row["title_en"];
                $news["subject_en"] = $row["subject_en"];
            }
            $news["photo"] = $row["photo"];



            // push single news into final response array
            array_push($response["news"], $news);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["news"] = array();

        // temp user array
        $news = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no news found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>