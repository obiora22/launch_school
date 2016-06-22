# Easy 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?('Spot')
ages.include?('Lily')
ages.member?('Herman')

# calculate sum of ages of Munster family
ages_sum = ages.values.reduce(:+)

puts ages_sum

# remove key-value pairs with values >= 100
younger_than_100 = ages.keep_if { |_,v| v < 100 }
puts younger_than_100

# modifiy string in different ways
munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
new_ages_hash = ages.merge(additional_ages)
puts new_ages_hash

# Pick out the minimum age from our current Munster family hash:
youngest = ages.min_by { |_,v| v }
puts youngest
# or
puts ages.values.min

# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
target_word = 'Dino'
result = advice.include?(target_word) ?  "#{target_word} was found" :  "#{target_word} was not found!"
p result
# or
puts "Word found" if advice.match(target_word)

# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.find_index { |i| puts i if i.match(/Be/) }

# Using array#map!, shorten each of these names to just 3 characters:
flintstones.map do |word|
  word.slice(0,3)
end
# or
flintstones.map do |word|
  word[0,2]
end 
