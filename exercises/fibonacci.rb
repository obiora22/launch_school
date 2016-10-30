# Write a method that calculates and returns the index of the first Fibonacci number
# that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)

def fib(pos)
  p1, p2 = 1, 1
  result_arr = []
  index_arr = []
  index = 0
  while result_arr.length < pos
    result_arr << p1
    p1, p2 = p2, p1 +p2
    index += 1
    break if p1 > 9
  end
  p result_arr
  p index
end

fib(10)
