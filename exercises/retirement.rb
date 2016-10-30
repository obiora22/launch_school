RETIREMENT_AGE = 65

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + (retirement_age - age)

puts "It's #{current_year}. You will retire in #{retirement_year}.\nYou only have #{retirement_age - age} years of work left."
