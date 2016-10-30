# Write a program that solicits 6 numbers from the user,
# then prints a message that describes
# whether or not the 6th number appears amongs the first 5 numbers.

puts "First number:"
number1 = gets.chomp.to_i
puts "Second number:"
number2 = gets.chomp.to_i
puts "Third number:"
number3 = gets.chomp.to_i
puts "Fourth number:"
number4 = gets.chomp.to_i
puts "Fifth number:"
number5 = gets.chomp.to_i
puts "Sixth number:"
number6 = gets.chomp.to_i

numbers = [number1, number2, number2, number4, number5]

if numbers.include? number6
  puts "The number #{number6} appears in #{numbers}"
else
  puts "The number #{number6} does not appear in #{numbers}"
end
