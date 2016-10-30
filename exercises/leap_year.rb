
def leap_year(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else 
    year % 4 == 0
  end
end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      false
    else
      true
    end
  else
    year % 400 == 0
  end
end
