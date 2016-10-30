NUMBERS = %w{zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

def sort_numbers(arr)
  sorted = NUMBERS.sort
  hash = {}
  arr.each do |i|
    hash[NUMBERS[i]] = i
  end
  result = hash.sort.map { |k| k[-1]}
  p result
end

def sort_numbers2(arr)
  p arr.sort_by { |num| NUMBERS[num]}
end
sort_numbers((2..13).to_a)
sort_numbers2((2..13).to_a)
