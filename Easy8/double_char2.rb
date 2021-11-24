def double_consonants(string)
  result = ""
  string.each_char do |char|
    if char.match?(/[^aeiou\W\d]/)
    result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""