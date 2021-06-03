=begin
Q:Write a method that takes one argument, a string containing one or more words,
  and returns the given string with all five or more letter words reversed. 
  Each string will consist of only letters and spaces.
  Spaces should be included only when more than one word is present.

  【Understing the Problem】
- Input:
 - a string
- Output:
 - a string
 - the given string with all five or more letter words reversed. 
 - the same order as given string.
- Rules:
 - Only If it has five or more characters, reverse the word.
 - Do not need to reverse the order of the string. 
 - Spaces is needed when more than 2 word is present.

【Examples: Test Cases】
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

words = ["a","ab","abc","abcd","abcde","abcdef"]

words.each do |word|
 word.reverse! if word.size >= 5
end

p words

【Deta Structure】 (Array? Number?...etc)
- Input:
- Rules:


【Algorithm】<steps>
-Using string(.split) to separate each word and place it in an array.
-Assign the array called Words
-Ivoke array(.each)and to it iterates through, check the length of each element(.size)  
- If it has five or more characters then we'll reverse the word. 
 (rerurn the original string which is nothing changed when string is > 5.)
-Use the destructive method (.reverse!) to reverse the word.
-Mutate word then add it to "words"
-Invoke array(.join) which joins every element in an array
 using the given argument as the delimiter and returns as a string.
 
=end

def reverse_words(string)
  words = string.split.each do |word|
          word.reverse! if word.size >= 5
  end

  words.join(" ")
end 

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS


=begin 

*Launch School solution

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

=end
