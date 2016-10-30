def fizzbuzz(start, finish)
  (start..finish).each do |number|
    if number % 3 == 0 && number % 5 == 0
      p "FizzBuzz : #{number}"
    elsif number % 3 == 0
      p "Fizz : #{number}"
    elsif number % 5 == 0
      p "Buzz : #{number}"
    end
  end
end

 p fizzbuzz(1, 100)


def fizzbuzz_value(number)
  case
    when number % 3 == 0 && number % 5 == 0 then 'FizzBuzz'
    when number % 3 == 0 then 'Fizz'
    when number % 5 == 0 then 'Buzz'
    else number
  end
end

def fizzbuzz2(start, finish)
  result = []
  (start..finish).each do |index|
    result << fizzbuzz_value(index)
  end
  result.join " "
end

p fizzbuzz2(2, 30)


def double(str)
  result = ''
  str.each_char do |chr|
    result += chr * 2
  end
  result
end

def is_consonant?(character)
  !(character =~ /[aeiou\s]/)
end

def double2(str)
  result = ''
  str.each_char do |chr|
    result += chr * 2 if is_consonant?(chr)
  end
  result
end
p double("hello")
p double2('hello america')
