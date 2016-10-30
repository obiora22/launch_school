puts "Please enter one or more words:"

input = gets.chomp
input_with_no_spaces = input.gsub(" ","")
puts "You have #{input_with_no_spaces.length} characters in\n#{input}!"
