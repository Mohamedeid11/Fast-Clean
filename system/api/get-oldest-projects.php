<?php

/*
 * Following code will list all the projects
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


// get all projects from projects table

if (isset($_GET['client_id']) && $_GET['lang'] != '') {

    $client_id = $_GET['client_id'];
    $lang = $_GET['lang'];


    $result = mysql_query("SELECT * FROM `projects` WHERE `client_id`='$client_id'  order by project_id LIMIT 10") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // projects node
        $response["project"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $project = array();
            $project["project_id"] = $row["project_id"];
            if ($lang == "ar") {
                $project["project_name"] = $row["project_name_ar"];
                $project["project_desc"] = $row["project_desc_ar"];
            } else {
                $project["project_name"] = $row["project_name_en"];
                $project["project_desc"] = $row["project_desc_en"];
            }
            $project["project_image"] = $row["project_image"];
            $project["client_id"] = $row["client_id"];
            $project_id = $row["project_id"];
            $project["evaluate"] = resume_evaluate($project_id);

//            $result_zero = mysql_query("SELECT * FROM `client_fav` WHERE `sub_category_id`='$sub_category_id' AND `client_id`='$client_id'") or die(mysql_error());
//            if (mysql_fetch_array($result_zero) >= 1) {
//                $project["sub_category_fav"] = 1;
//            } else {
//                $project["sub_category_fav"] = 0;
//            }



            // push single project into final response array
            array_push($response["project"], $project);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["project"] = array();

        // temp user array
        $project = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no projects found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>