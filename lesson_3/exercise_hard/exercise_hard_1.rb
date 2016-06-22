# create  uuid
def create_uuid
   SecureRandom.uuid
end

def uuid
numbers = []
(0..9).to_a.each { |number| numbers << number.to_s}
letters = ('a'..'h').to_a
alpha_numeric = numbers.concat(letters)
blocks = [8,4,4,4,12]
uuid = []
blocks.each_with_index do |block,index|

   block.times { uuid << alpha_numeric.sample}
   uuid << '-' unless index > blocks.length - 1
end
p uuid.join

end

# is_a_number? to determine if a string is a number

def is_a_number?(number)
  return true if number.match(/\A\d+\z/)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  begin
    raise unless dot_separated_words.size == 4
  rescue
    puts "Input is not a valid IP address!"
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    # break if !is_a_number?(word)
    return false unless is_a_number?(word)
  end
  return true
end
