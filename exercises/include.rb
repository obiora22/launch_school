# linear search
def include?(array, query)
  result = false
  array.each do |i|
    if i == query
      result = true
      break
    end
  end
  p result
end

include?([1,2,3,4,5,6,7], 10)


def bi_search(arr, query, from=0, to=nil)
  if to == nil
    to = arr.count - 1
  end

  mid = (from + to) / 2

  if query < arr[mid]
    return bi_search(arr, query, from, mid - 1)
  elsif query > arr[mid]
    return bi_search(arr, query, mid + 1, to)
  else
    p mid
  end
end
bi_search([1,2,3,4,5,6,7],3)
