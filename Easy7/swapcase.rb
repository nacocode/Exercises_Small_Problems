def swapcase(string)
  result = string.chars.map do |char|
    if /[A-Z]/.match?(char)
      char.downcase
    elsif /[a-z]/.match?(char)
      char.upcase
    else
      char
    end
  end
  result.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'

#____________LS Solution_________________

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
