def reverse(number)
  string  = number.to_s
  string.reverse.to_i
end

reverse('1234')
reverse('123000')
reverse(12345) == 54321
reverse(12213) == 31221
reverse(456) == 654
reverse(12000) == 21 # Note that zeros get dropped!
reverse(1) == 1
