<!DOCTYPE html>
<html>
<body>

<form action="welcome.php" method="post">
Zahl1: <br>   
<input type="text" name="zahl1"><br>
Operator: <br>
<input type="text" name="operator"><br>
Zahl2:<br>    
<input type="text" name="zahl2"><br>
<input type="submit">
</form>


<?php
$zahl1 = zahl1;
$zahl2 = zahl2;
$operator = operator;
$result = 0;
$txtResult = "Resultat ist $result";

switch ($operator) {
    case "+":
    	$result = $zahl1 + $zahl2;
        break;
    case "-":
  	$result = $zahl1 - $zahl2;
        break;
    case "*":
    	$result = $zahl1 * $zahl2;
        break;
    case "/":
        $result = $zahl1 / $zahl2;
        break;
    default:
      
}

echo "Result = $result";
?> 

</body>
</html>
