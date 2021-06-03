=begin
Q: Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.


【Understing the Problem】

- Input: 
 - Integer number
 - Need to validate?
- Output: 
 - An array of numbers
 - list of each indivisual number in the number
- Rules: 
 - Positive number

【Examples: Test Cases】

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

【Deta Structure】 (Array? Number?...etc)
- Input: Number
- Rules:

【Algorithm】<steps>
1: Convert the number to a string (number.to_s)
2: Split it into an array of numeric characters. 
  (.chars returns an array of characters in str. This is a shorthand for str.each_char.to_a.)
3: Convert each characters in an array to integer number again. still in an array.
4:Use (.map) to change each elements(string) to integer number. 
  (Because there's no .to_i method for an array so I need to use alternative method.)

=end

def digit_list(number)
  number.to_s.chars.map do |char|  # number.to_s.chars.map(&:to_i)
    char.to_i
  end
end

p digit_list(123)

=begin

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

.map(&:to_i) is it's shorthand for: .map { |char| char.to_i }
=end