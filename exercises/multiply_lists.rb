require 'pry'
def multipy(arr1, arr2)
  combined_arr = arr1.zip(arr2)
  result = combined_arr.each.map do |elem|
    elem.first * elem.last
  end
end

p multipy([1,2,3],[1,2,3])


def multipy2(arr1, arr2)
  result = []
  arr1.each_with_index do |elem, index|
    result << elem * arr2[index]
  end
  result
end

p multipy2([2,3,4],[2,3,4])


def multiply3(arr1, arr2)

end
