def multiplicative_average(arr)
  product = arr.inject(1) { |product, elem| product *= elem }
  average = (product/ arr.length.to_f)
  format("%.3d", average)
end

p multiplicative_average([1,2,3,4,5,6,7,8,9,10])
