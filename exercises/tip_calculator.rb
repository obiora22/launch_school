# tip_calculator.rb


def calculate_tip(tip_rate, bill)
  tip_rate_to_percent = tip_rate / 100
  tip = (bill * tip_rate_to_percent).round(2)
  total_bill = (bill + tip).round(2)
  puts "Your total bill is: $#{total_bill}"
  puts "Your tip was: $#{tip}"
end

puts "Please enter bill amount:"
bill = gets.chomp.to_f

puts "Please enter tip rate:"
tip_rate = gets.chomp.to_f

calculate_tip(tip_rate, bill)
