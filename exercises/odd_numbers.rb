# odd_number.rb

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

def odd_number_generator(start, finish)
   puts "Printing out odd numbers..."
   sleep 2
   (start..finish).each do |number|
     next if number % 2 == 0
     puts number
   end
end

odd_number_generator(1,99)

result = (1..25).select { |n| n % 2 != 0 }

p result


number = 2

while number <= 99
  p number
  number += 2
end

(1..99).select { |n| n.even?}
