# palindrome.rb

def string_reverse(string)
  string = string.downcase.gsub(/\W+/, "")
  str_array = string.split("") # make method case-insensitive
  reverse_array = []
  str_array.length.times do
    reverse_array << str_array.pop
  end
  reverse_array.join
end

def palindrome?(string)
  if string_reverse(string) == string
    true
  else
    false
  end
end


def number_palindrome?(number)
  palindrome?(number.to_s)
end

p number_palindrome?(54145)
