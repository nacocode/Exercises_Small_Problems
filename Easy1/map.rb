def reverse_words(string)
  words = []

  words = string.split
  words.map do |word|
    word.reverse! if word.size >= 5
  end

  p words
  words.join(" ")
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS

=begin
def numbers(number)
  number if number > 5
end

p numbers(2)
p numbers(8)

def numbers(number)
  number if number > 5
  number if number < 5
end

p numbers(2)
p numbers(8)

def numbers(number)
  number if number < 5
  number if number > 5
end

p numbers(2)
p numbers(8)

=end