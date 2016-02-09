# Calculator.rb

$result = 0

def add (a, b)
	$result = a + b
end

def sub (a, b)
	$result = a - b
end

def mul (a, b)
	$result = a * b
end

def div (a, b)
	$result = a / b
end

puts "Zahl1 eingeben: "
number1 = gets.to_i

puts "Zahl2 eingeben: "
number2 = gets.to_i

puts "Operator [+]|[-]|[*]|[/] eingeben"
operator = gets.chomp

case operator
	when "+" then add(number1, number2);
	when "-" then sub(number1, number2);
	when "*" then mul(number1, number2);
	when "/" then div(number1, number2);
end

print $result
print "\n"
