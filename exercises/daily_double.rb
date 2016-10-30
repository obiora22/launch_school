def compress(str)
  compressed_str = ''
  index = 0
  p str.length
  while index < str.length 
    p str[index]
    compressed_str << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  p compressed_str
end

compress("Helllllo ppppppeopllle!")
