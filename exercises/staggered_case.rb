def staggered_case(string)
  letters = string.downcase.chars
  # result = []
  result = letters.each_with_index.map do |chr, index| # map
    if index.odd? && chr =~ /\w+/
      # result << chr.upcase
      chr.upcase
    else
      # result << chr
      chr
    end
  end
  # result.join
  result.join 
end

def staggered_case2(string, need_upper=false)
  result = ''
  need_upper
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
p staggered_case("I am the greatest!")
p staggered_case2("I am the greatest!")
