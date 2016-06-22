
# EASY 1
arr1 = [1,2,3,3]

arr.unique

puts arr

arr.uniq!

advice = "Few things in life are as important as house training your pet dinosaur."

# replace the word 'important' with 'urgent'

advice.gsub!('important','urgent')


arr2 = [1,2,3,4,5]

arr2.delete

arr2.delete_at

# Programmatically determine if 42 lies between 10 and 100.

puts 'true' if 42 > 10 && 42 < 100

famous_words = "seven years ago..."
extra_words = "Four scores and "

puts extra_words + famous_words
puts famous_words.prepend(extra_words)

nested_array = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

un_nested_array = nested_array.flatten

puts un_nested_array

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

result = []

flintstones.each_pair do |k,v|
  if k == 'Barney'
    result << k
    result << v
  end
end

p result

# don't be a masochist and do this instead

flintstones.assoc('Barney')


flintstones2 = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones2_hash = {}
flintstones2.each_index do |i|
  flintstones2_hash[flintstones2[i]] = i
end
