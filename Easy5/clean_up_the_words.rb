# Given a string that consists of some words (all lowercased) 
# and an assortment of non-alphabetic characters, write a method 
# that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result 
# (the result should never have consecutive spaces).

# cleanup("---what's my +*& line?") == ' what s my line '

def cleanup(string)
  string.gsub(/[^a-z]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '

#_______________________________________________________

ALPHABET = ('a'..'z').to_a

def clearnup(text)
  clean_chars = []
  
  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << " " unless clean_chars.last == (" ")
    end
  end

  clean_chars.join
end

p clearnup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '
