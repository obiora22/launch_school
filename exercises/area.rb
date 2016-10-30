# area.rb 

def area_of_room(length_meter, width_meter)
  CONVERT_TO_FEET = 10.7639
  area_in_square_meters = (length_meter * width_meter).round 3
  area_in_square_feet = (area_in_square_meters * CONVERT_TO_FEET).round 3
  p "#{area_in_square_meters} square meters"
  p "#{area_in_square_feet} square feet"
end

puts "Please enter length in meters:"
  length_meter = gets.chomp.to_i
puts "please enter width in meters"
  width_meter = gets.chomp.to_i

area_of_room(length_meter, width_meter)
