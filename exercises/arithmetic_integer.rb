puts "Please enter a positive integer:"
num1 = gets.chomp.to_f
puts "Please enter another positive integer:"
num2 = gets.chomp.to_f

puts "Adding ... #{num1 + num2}"
puts "Subtracting ... #{num1 - num2}"
puts "Multiplying ... #{num1 * num2}"
puts "Dividing ... #{num1 / num2}"
puts "Exponent ... #{num1 ** num2}"


def multiply(num1, num2)
  num1 ** num2
end

def power(num, exp)
  multiply(num, exp)
end

def xor?(condition1, condition2)
  if (condition1 == false && condition2 == true) || (condition1 == true && condition2 == false)
    true
  else
    false
  end
end
