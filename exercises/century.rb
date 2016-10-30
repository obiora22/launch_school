# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.


NUM = %W{11 12 13}
def what_century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century = century.to_s
  p century
  p NUM
  # if  NUM.include?(century[-1]) || (century[-1] == "3" && century[-2] == "1") || (century[-1] == "1" && century[-2] == "1")
  result = if NUM.include? century
    "#{century}th"
  elsif century[-1] == "2"
    "#{century}nd"
  elsif century[-1] == "3"
    "#{century}rd"
  elsif century[-1] == "1"
    "#{century}st"
  else
    "#{century}th"
  end
  p result
end

what_century(1912)
what_century(1013)
