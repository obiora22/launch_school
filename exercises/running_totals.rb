# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the original Array.

array = [1, 2, 3, 4, 5, 6]

def total1(array)
  total_array = []
  index = 0
  sum = 0
  while index < array.size
    sum += array[index]
    total_array << sum
    index += 1
  end
  p total_array
end

def total2(array)
  sum = 0
  p array.map { |value| sum += value  }
end

def total3(array)
  sum = 0
  result = array.each_with_object([]) { |value,obj|  obj << sum += value }
  p result
end

total1(array)
total2(array)
total3(array)
total4(array)


x = %w[cat dogs bear sheep rhinocerous]
arr = []
longest = x.inject do  |memo,i|
  arr << memo
  (memo.length > i.length ? memo : i)
end
p arr
