def merge_array(arr1, arr2)
  p (arr1 | arr2)
end

merge_array([1,2,3,4],[1,2,7,8])

def merge(arr1, arr2)
  new_array = arr1.concat(arr2)
  p new_array.uniq!
end

merge([1,2,3,4],[1,2,7,8])
