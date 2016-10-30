def ascii_value(string)
  ascii_values = string.split("").map { |char| char.ord}
  p ascii_values
  p ascii_values.inject(0) { |sum,item| sum += item }
end

ascii_value("I am a Rubyist!")


def ascii_values2(string)
  sum = 0
  string.each_char { |i| sum += i.ord}
  p sum
end

ascii_values2('Hello:')
