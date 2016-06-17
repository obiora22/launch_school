arr = [1,2,344,4,44]

largest = 0
arr.each do |n|

  if n > largest
    largest = n
  end
end

puts largest

def largest_number(array)
  count = 1
  largest = array[0]
  while count < array.length
    current_number = array[count]
    # if current_number >= largest
    #   largest = array[count]
    # end
    next unless current_number >= largest
    largest = array[count]
    count += 1
  end
    puts largest
end
