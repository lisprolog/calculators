#!/usr/bin/perl

print "add  <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "subt <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "mul  <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "div  <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "exp  <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "mod  <ENTER> number1 <ENTER> number2 <ENTER>\n";
print "Operation:";
$operator = <STDIN>;
print "number 1: ";
$m = <STDIN>;
print "number 2: ";
$n = <STDIN>;
print "result: ";

if($operator eq "div\n" && $n == 0){
	print "Division through 0 not possible!",
}elsif($operator eq "add\n"){
	$c = $m + $n;
}elsif($operator eq "subt\n"){
	$c = $m - $n;
}elsif($operator eq "mul\n"){
	$c = $m * $n;
}elsif($operator eq "div\n"){
	$c = $m / $n;
}elsif($operator eq "exp\n"){
	$c = $m ** $n;
}elsif($operator eq "mod\n"){
	$c = $m % $n;
}else{
	print "Error!\n";
	print "add  <ENTER> number1 <ENTER> number2 <ENTER>\n";
	print "subt <ENTER> number1 <ENTER> number2 <ENTER>\n";
	print "mul  <ENTER> number1 <ENTER> number2 <ENTER>\n";
	print "div  <ENTER> number1 <ENTER> number2 <ENTER>\n";
	print "exp  <ENTER> number1 <ENTER> number2 <ENTER>\n";
	print "mod  <ENTER> number1 <ENTER> number2 <ENTER>\n";
}
print $c;
print "\n";
