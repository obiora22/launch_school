def leading_subs(string)
  subs = []
  1.upto(string.length) do |index|
    subs << string.slice(0, index)
  end
  subs
end

p leading_subs("warriors")
