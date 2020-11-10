<?php

/*
 * Following code will list all the contact
 */
// array for JSON response
$response = array();
header('Content-type: text/html');

// include db connect class
include("db_connect.php");

// connecting to db
$db = new DB_CONNECT();

mysql_query("SET NAMES 'utf8'");

mysql_query("SET CHARACTER SET utf8");

mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");


// get all contact from contact table

if (isset($_GET['lang']) && $_GET['lang'] != '') {

    $lang = $_GET['lang'];


	$result = mysql_query("SELECT * FROM `contact`") or die(mysql_error());
 
	// check for empty result
	if (mysql_num_rows($result) > 0) {
		// looping through all results
		// contact node
		$response["contact"] = array();
	 
		while ($row = mysql_fetch_array($result)) {
			
			// temp user array
			$contact = array();
			
			$contact["id"] = $row["id"];
			if($lang=="ar"){
			    $contact["address"] = $row["address_ar"];
			}else{
			    $contact["address"] = $row["address_en"];
			}
                $contact["phone"] = $row["phone"];
                $contact["email"] = $row["email"];
                $contact["email"] = $row["email"];
                $contact["twitter"] = $row["twitter"];
                $contact["facebook"] = $row["facebook"];
                $contact["whats_app"] = $row["whats_app"];
                $contact["instagram"] = $row["instagram"];
                $contact["website"] = $row["website"];

			// push single contact into final response array
			array_push($response["contact"], $contact);
			
		}
		// success
		$response["success"] = 1;
	 
		// echoing JSON response
		echo json_encode($response);
	
	} else {
			
		$response["contact"] = array();
			
		// temp user array
		$contact = array();

		// success
		$response["success"] = 1;
	 
		// echoing JSON response
		echo json_encode($response);

	}
} else {
   $result = mysql_query("SELECT * FROM `contact`") or die(mysql_error());
 
	// check for empty result
	if (mysql_num_rows($result) > 0) {
		// looping through all results
		// contact node
		$response["contact"] = array();
	 
		while ($row = mysql_fetch_array($result)) {
			
			// temp user array
			$contact = array();
			
			$contact["id"] = $row["id"];
			$contact["address"] = $row["address"];
			$contact["phone"] = $row["phone"];
			$contact["mobile"] = $row["mobile"];
			$contact["email"] = $row["email"];
			$contact["instagram"] = $row["instagram"];
			$contact["twitter"] = $row["twitter"];
			$contact["facebook"] = $row["facebook"];
			$contact["website"] = $row["website"];

			// push single contact into final response array
			array_push($response["contact"], $contact);
			
		}
		// success
		$response["success"] = 1;
	 
		// echoing JSON response
		echo json_encode($response);
	
	} else {
			
		$response["contact"] = array();
			
		// temp user array
		$contact = array();

		// success
		$response["success"] = 1;
	 
		// echoing JSON response
		echo json_encode($response);

	}
}
	

?>