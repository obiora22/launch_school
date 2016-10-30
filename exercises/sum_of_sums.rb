def sum_of_sums(arr)
  n = 1
  sum_subs = 0
  while n <= arr.length
    sum_subs += arr.slice(0,n).inject(0, :+)
    n += 1
  end
  sum_subs
end
p sum_of_sums([1,2,3,4,5,6,7,8])


def sum_of_sums2(arr)
  sum = 0
  1.upto(arr.size) do |count|
    sum += arr.slice(0, count).inject(0, :+)
  end
  sum
end

p sum_of_sums2([1,2,3,4,5,6,7,8])
