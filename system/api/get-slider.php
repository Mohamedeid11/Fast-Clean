<?php

/*
 * Following code will list all the projectss
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


// get all projectss from projectss table



    $result = mysql_query(" SELECT * FROM `slider`") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // projectss node
        $response["slider"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $slider = array();
            $slider["id"] = $row["id"];
            $slider["link"] = $row["link"];
            $slider["image"] = $row["image"];
            $slider_id = $row["id"];
//            $slider["evaluate"] = resume_evaluate($slider_id);


            // push single slider into final response array
            array_push($response["slider"], $slider);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    }

?>