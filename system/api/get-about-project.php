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

if (isset($_GET['project_id']) && $_GET['lang'] != '') {

    $project_id = $_GET['project_id'];
    $lang = $_GET['lang'];


    $result = mysql_query("SELECT * FROM `about_project` WHERE `project_id`='$project_id'  order by id desc") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // projects node
        $response["project"] = array();

        while ($row = mysql_fetch_array($result)) {
                // temp user array
                $project = array();

                $project["id"] = $row["id"];
                if ($lang == "ar") {
                    $project["project_name"] = get_project_name_ar_from_id($project_id);
                    $project["desc"] = $row["desc_ar"];

                } else {
                    $project["project_name"] = get_project_name_en_from_id($project_id);
                    $project["desc"] = $row["desc_en"];
                }
                $project["project_id"] = $row["project_id"];

                $project["evaluate"] = resume_evaluate($project_id);

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