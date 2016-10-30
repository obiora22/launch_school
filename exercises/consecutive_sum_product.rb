# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.
def compute_sum(number)
  sum = (1..number).inject(0) { |sum, elem| sum += elem }
  puts "The sum of your number is #{sum}"
end

def compute_product(number)
  product = (1..number).inject(1) { |product, elem| sum *= elem}
  puts "The product of your number is #{product}"
end

puts "Pleae enter a number greater than 0:"
number = gets.chomp.to_i

puts "Do you want 1) sum or 2) product of all numbers between 1 and entered number?"
answer = gets.chomp

if answer == '1'
  puts "calculating sum ..."
  compute_sum(number)
elsif answer == '2'
  puts "calculating product ..."
  compute_product(number)
else
  puts "Please choose from given options."
end
