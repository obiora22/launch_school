def iq_test(numbers_string)
  even = []
  odd = []
  numbers_string = numbers_string.split
  numbers_string.each do |i|
    even << i if i.to_i.even?
    odd  << i if i.to_i.odd?
  end
  binding.pry
  even.size < odd.size ? numbers_string.index(even.first) + 1  : numbers_string.index(odd.first) + 1
end
p iq_test "2 4 7 8 10"
