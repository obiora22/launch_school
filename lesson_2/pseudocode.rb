
=begin
Given two numbers

Find the sum of both

After PRINT sum

=end



START

# Given 2 numbers

SET number_1 = first number

SET number_2 = second argument

SET sum  = number_1 + number_2

PRINT sum



END


def sum(number1,number2)

  result = number1 + number2

  puts result

end

START

SET largest_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract largest number from collection"
  largest_numbers.push(largest_number)
  GET "enter another collection"
  if "yes"
    keep_going  == true
  else
    keep_going == false
    if keep_going == false
      exit the loop
PRINT large_numbers



loop do
  # code goes here
end while keep_going == true 
