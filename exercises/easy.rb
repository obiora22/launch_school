# generate random number between 1 and 20

def generate_age(min,max)
  random_age = rand(min..max)
  puts "Teddy is #{random_age} years old!"
end
generate_age(20,200)
