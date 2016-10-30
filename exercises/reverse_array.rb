arr1 = [1,2,3,4,5,6,7,8]
def reverse_array!(arr)
  reverse = []
  until arr.size == 0
    reverse << arr.pop
  end
  p reverse
end

arr2 = [1,2,3,4,5,6,7,8]
def reverse_array2!(arr)
 left_index = 0
 right_index = -1
 while left_index < arr.size / 2
   arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
   left_index += 1
   right_index -= 1
 end
 p arr
end

arr3 = [1,2,3,4,5,6,7,8]
def reverse_array3(array)
 arr = array.dup
 left_index = 0
 right_index = -1
 while left_index < arr.size / 2
   arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
   left_index += 1
   right_index -= 1
 end
 p arr
end

def reverse_array4(arr3)
  reverse = []
  arr3.reverse_each { |i| reverse << i }
  p reverse
end

reverse_array!(arr1)
reverse_array2!(arr2)
reverse_array3(arr3)
reverse_array4(arr3)
p arr3
