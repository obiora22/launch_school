# Write a method that computes the sum of all numbers between 1 and some other number
# that are a multiple of 3 or 5. For instance, if the supplied number is 20,
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(number)

  mult_array = (1..number).select { |n| n % 3 == 0 || n % 5 == 0 }
  p mult_array
  sum = mult_array.inject(0,:+)
  p sum
end

multisum(20)
multisum(12)


def multisum2(number)
  p "This MULTISUM2 .. "
  numbers = multiples(number)
  p numbers
  sum = 0
  index = 0
  while index < numbers.size
    sum += numbers[index]
    index += 1
  end
  p sum
end


def multiples(number)
  multiples = []
  (1..number).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0  }
  multiples
end

multisum2(15)
