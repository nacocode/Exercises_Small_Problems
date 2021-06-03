=begin
Q:Write a method that takes one argument, a positive integer, 
  and returns a string of alternating 1s and 0s, always starting with 1. 
  The length of the string should match the given integer.

【Understing the Problem】
- Input: a positive integer
- Output: a string
- Rules:
 - integer > 0
 - Output is a string of alternating 1s and 0s, always starting with 1.
 - Given integer = the length of the string

【Examples: Test Cases】
puts stringy(1) == '1'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.

【Deta Structure】 (Array? Number?...etc)
- Input: integer
- Rules: I need to use Array? because it related to index. 


【Algorithm】<steps>
1: I need to know 
-
=end

def stringy(number)
  string = ""
  i = 1

  while i <= number do
    string += i.odd? ? '1' : '0' # 【 string += i.odd? ? '1' : '0'】 means: string = string + i.odd? ? '1' : '0'
    i += 1
  end
  string
end


puts stringy(5)
puts stringy(1) == '1'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin

【Launch School's Solution】

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

=end