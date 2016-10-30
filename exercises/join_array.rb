def join(arr1, arr2)
  new_arr =  []
  arr1.each_with_index do |element, index|
     new_arr << element << arr2[index]
   end
   new_arr
end

p join([1,2,3], [4,5,6])

def join2(arr1, arr2)
  arr1.zip(arr2)
end

p join2([1,2,3], [4,5,6])
