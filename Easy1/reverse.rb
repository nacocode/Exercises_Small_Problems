=begin

Q: Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

【Understing the Problem】
- Input:
 - a string
- Output:
 - a new string with the input words in reverse order.
 - retuen as a loolean(true/false)
- Rules:
 - 1 argument.
 - output is the word in reverse order, not reverse the charactor of word.
 - string(.reverse!) can reverse an order of the words but also reverse the charactor of words as well.
 - Array (.reverse) can reverse the order of elements. 

【Examples: Test Cases】
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

The tests above should print true.

【Deta Structure】 (Array? Number?...etc)
- Input: string
- Rules: 

【Algorithm】<steps>
1:Using string(.split) to separate each word and place it in an array.
2:To reverse the order of the words, we then invoke array(.reverse) 
 (.reverse) creats a new array containing self's elements in reverse order.
3:Invoke array(.join) which joins every element in an array
 using the given argument as the delimiter and returns as a string.

=end

def reverse_sentence(string)
  string.split.reverse.join(" ")
end

p reverse_sentence('')
p reverse_sentence('Hello World') 
p reverse_sentence('Reverse these words') 

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
