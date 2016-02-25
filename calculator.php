<?php

$num1 = $_POST["num1"];
$num2 = $_POST["num2"];
$operator = $_POST["operations"];

if($operator == "add"){
	$answer_add = $num1 + $num2;
	echo $num1." + ".$num2." = ";
	echo $answer_add;
}
if($operator == "sub"){
	$answer_sub = $num1 - $num2;
	echo $num1." - ".$num2." = ";
	echo $answer_sub;
}
if($operator == "mul"){
	$answer_mul = $num1 * $num2;
	echo $num1." * ".$num2." = ";
	echo $answer_mul;
}
if($operator == "div"){
	$answer_div = $num1 / $num2;
	echo $num1." / ".$num2." = ";
	echo $answer_div;
}

?>

