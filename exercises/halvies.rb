def half_array(arr)
  first_half = arr.slice(0, (arr.length / 2.0).ceil )
  second_half = arr.slice(first_half.size, arr.size - first_half.size)
  new_array = [first_half, second_half]
  p new_array
end

half_array([1,2,3,4,5,6,7,8,9])

data = [18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]

def find_dup(arr)
  p arr.detect { |i| arr.count(i) == 2  }
end

def find_dup2(arr)
  dup_array = []
  arr.each do |i|
    if dup_array.include? i
      p i
      break
    else
      dup_array << i
    end
  end
end
find_dup(data)
find_dup2(data)
