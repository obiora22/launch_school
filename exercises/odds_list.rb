# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def every_other_array(array)
  result = []
  array.each_with_index { |item, index| result << item if (index + 1).odd?}
  p result
end

def oddities(array)
  odd_array = []
  index = 0
  while index < array.length
    odd_array << array[index]
    index += 2
  end
  p odd_array
end
