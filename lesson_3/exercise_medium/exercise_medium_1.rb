# write a one-line program that creates the following output 10 times,
# with the subsequent line indented 1 space to the right:

10.times { |i| puts ("The Flintstones Rock!".prepend(" " * i)) }

# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"
hash = {}
letters = statement.downcase.split('')
letters.each do |letter|
   if !hash[letter]
     hash[letter] = 1
   else
     hash[letter] += 1
   end
end

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  hash[letter] = letter_frequency
end

p hash
# what will be the output
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p numbers
  numbers.shift(1)
end

# factors of a number
def factors(number)
  answer = []
  count = 1
  while count < (number + 1)
    result = number % count
    answer << count if result == 0
    count += 1
  end
  puts answer
end
# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# fibonacci
limit = 15

def fib(first_num, second_num,limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1,limit)
puts "result is #{result}"


# Write your own version of the rails titleize implementation.

def titleize(str)
 words = str.split
 result = words.map do |word|
   word.capitalize
 end
 result.join(" ")
end
# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  if v['age'] > 0 && v['age'] < 17
    v['age_group'] = 'kid'
  elsif v['age'] >= 18 && v['age'] <= 64
    v['age_group'] = 'adult'
  else
    v['age_group'] = 'old'
  end

end

# or

munsters.each do |name, details|

case details["age"]
when 0...18
  details['age_group'] = 'kid'
when 18..64
  details['age_group'] = 'adult'
else
  details['age_group'] = 'old' 
end

end
