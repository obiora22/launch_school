
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Figure out the total age of just the male members of the family.
munster_age_sum = 0
munsters.values.each do |member|
  next if member['gender'] == 'female'
  munster_age_sum += member['age']
end
p munster_age_sum

# print out the name, age and gender of each family member:
munsters.each do |name,details|
  puts "#{name} is a #{details['age']} old #{details['gender']}."
end

# refactor this exercise to make the result easier to predict and easier for the next programmer to maintain?
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Use this technique to break up the following string and put it back together with the words in reverse order:
sentence = "Humpty Dumpty sat on a wall."

sentence.split(/\W/).reverse!.join(" ") + '.'
