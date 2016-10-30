# convert a number to a string
DIGITS = %w{0 1 2 3 4 5 6 7 8 9}
def number_to_string(number)
  result = ''
  # result.prepend('-') if number < 0
  loop do
    number, remainder = (number).divmod(10)
    result.prepend (DIGITS[remainder])
    break if number == 0
  end
  result 
end


def signed_integer_to_string(number)
  case number <=> 0
  when -1 then p "-#{number_to_string(-number)}"
  when +1 then p "#{number_to_string(number)}"
  end
end

signed_integer_to_string(-234)
