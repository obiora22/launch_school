def subs_array(str)
  result = []
  (0..str.length).each do |i|
    i.upto(str.length - 1) do |k|
      result << str[i..k]
    end
  end
    result
end


p subs_array('abcd')

def is_palindrome?(str)
  str.reverse == str && str.length > 1
end

def palindrome_subs(str)
  result = subs_array(str)
  result.select do |word|
    is_palindrome?(word)
  end
end
p palindrome_subs('adaada')
