def swap_case(string)
  swap_str = string.chars.map do |w|
    if w =~ /[A-Z]/
      w.downcase
    elsif w =~ /[a-z]/
      w.upcase
    else
      w
    end
  end
  p swap_str.join
end

swap_case("Hello Amigos!")
