# Write a method that takes two strings as arguments, determines the longest of the two strings,
# and then returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again. You may assume that the strings are of different lengths.


def compare_length(str1, str2)
  str1_len = str1.length
  str2_len = str2.length
  if str1_len > str2_len
    str1
  elsif str1_len < str2_len
    str2
  end
end

def short_long_short(str1, str2)
  longer = compare_length(str1, str2)
  case longer
  when str1
    puts "#{str2} #{str1} #{str2}"
  when str2
    puts "#{str1} #{str2} #{str1}"
  end
end

short_long_short("hello", "hi")

def s_l_s(str1, str2)
  str1.length > str2.length ? puts("#{str2} #{str1} #{str2}") : puts("#{str1} #{str2} #{str1}")
end 
