def letter_counter(string)
  hash = Hash.new(0)
  string.each_char do |chr|
    if chr == chr.upcase && chr =~ /\w/
      hash[:upper_case] += 1
    elsif chr == chr.downcase && chr =~ /\w/
      hash[:lower_case] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end
p letter_counter('Hello Amigos!')

def letter_counter2(string)
  hash = Hash.new(0)
  characters = string.chars
  hash[:upper_case] = characters.count { |chr| chr =~ /[A-Z]/ }
  hash[:lower_case] = characters.count { |chr| chr =~ /[a-z]/ }
  hash[:neither] = characters.count { |chr| chr !~ /[A-Za-z]/}
  hash
end
p letter_counter2('Hello Amigos!')
