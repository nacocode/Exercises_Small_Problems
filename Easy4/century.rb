def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + centuty_suffix(century)
end

def centuty_suffix(century)
  return "th" if [11, 12, 13].include?(century % 100)

  last_digit = century % 10

  case last_digit 
  when 1 
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
