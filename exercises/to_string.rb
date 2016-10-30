DIGITS = {
  '0' => 1, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_number(decimal_str)
  sign = decimal_str.slice!(0)
  result = []
  decimal_str.each_char { |char| result << DIGITS[char] }
  p result
  integer = result.inject { |sum,item| sum*10 + item}
  p integer * -1 if sign == '-'
end

string_to_number('22')
string_to_number('283838')
string_to_number('-1234')

HEXADECIMAL_HASH = {
  '0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, 'a'=> 10, 'b'=> 11,
   'c' => 12 , 'd' => 13, 'e' => 14, 'f' => 15
}

def string_to_hexadecimal(hexadecimal_str)
  sign = hexadecimal_str.slice!(0)
  result = []
  result = hexadecimal_str.chars.map { |i|  HEXADECIMAL_HASH[i]}
  integer = result.inject(0) { |sum, elem| sum * 16 + elem }
  intgeger * -1 if sign == '-'
end

def find_all
  new_hash = Hash.new
  each{ |k,v| new_hash[k] = v if yield(k,v)}
  new_hash
end

{a: 1, b: 2, c: 3, d: 4}.find_all { |k,v| key > 1}
