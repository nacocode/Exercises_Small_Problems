def reverse_words(string)
  words = string.split.each do |word|
          word.reverse! if word.size >= 5
  end

  words.join(" ")
end 

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS

#_____Another solution___________
#
# def reverse_words(string)
#   string.split.map do |word|
#     if word.size >= 5
#       word.reverse
#     else
#       word
#     end
#   end.join(" ")
# end
