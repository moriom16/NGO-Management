<?php
ob_start();
$action = $_GET['action'];
$crud = new Action();


if($action == "save_settings"){
	$save = $crud->save_settings();
	if($save)
		echo $save;
}
if($action == "save_loan_type"){
	$save = $crud->save_loan_type();
	if($save)
		echo $save;
}
if($action == "delete_loan_type"){
	$save = $crud->delete_loan_type();
	if($save)
		echo $save;
}
if($action == "save_plan"){
	$save = $crud->save_plan();
	if($save)
		echo $save;
}
if($action == "delete_plan"){
	$save = $crud->delete_plan();
	if($save)
		echo $save;
}
if($action == "save_borrower"){
	$save = $crud->save_borrower();
	if($save)
		echo $save;
}
if($action == "delete_borrower"){
	$save = $crud->delete_borrower();
	if($save)
		echo $save;
}
if($action == "save_loan"){
	$save = $crud->save_loan();
	if($save)
		echo $save;
}
if($action == "delete_loan"){
	$save = $crud->delete_loan();
	if($save)
		echo $save;
}

if($action == "save_payment"){
	$save = $crud->save_payment();
	if($save)
		echo $save;
}
if($action == "delete_payment"){
	$save = $crud->delete_payment();
	if($save)
		echo $save;
}


