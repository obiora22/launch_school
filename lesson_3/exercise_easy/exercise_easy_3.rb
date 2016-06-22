# Show an easier way to write this array:
flintstones = %W{Fred Barney Wilma Betty BamBam Pebbles}

# How can we add the family pet "Dino" to our usual array:
flintstones << "Dino"

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones + %W{ Dino Hoppy}

# Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
slice_from_index = advice.index('house')
advice.slice!(0,slice_from_index)

# Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
statement.count('t')
 # how could we easily center that title above the table with spaces?

 title = "Flintstone Family Members"
 title.center(40,'*')
