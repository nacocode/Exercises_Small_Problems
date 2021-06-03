=begin
Q:
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

【Understing the Problem】
- Input: number(positive integer)
- Output: number , the sum of its digits.
- Rules: 
 - integer > 0
 - I need to split the numbers into indivisual number.
 - We can't split an integer. How to make it able to do it??
 - how to deal with under score(_)??


【Examples: Test Cases】
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.

【Deta Structure】 (Array? Number?...etc)
- Input: number
- Rules: 
 -integer > string in array > integer in array again.
 -integer(.to_s) Converting integer to string to make it able to separate them.(23 > "23")
 -string(.chars) Returns an array of characters.("23" > ["2","3"])
 -using(.sum) here doesn't wowk because it's a string in this case, so that result would be (["23"])again.
  it is the same as adding 2 strings like ["a","b"] > ["ab"] 
 -to make it work, I need to change them back to an integer with (.map)
 -then finally I can use (.sum)to sum the numbers in  the arrray.
  
【Algorithm】<steps>
- First,integer(.to_s) 
- then split it with (.chars)
- Use(.map)to change the return value of those string to integer.
- lastly (.sum)

=end

def sum(numbers)
  numbers.to_s.chars.map {|number| number.to_i} .sum
end

puts sum(34)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin

【Launch School Solution】

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

* ["2", "3"].map(&:to_i) # => [2, 3] 
  ["2", "3"].map { |element| element.to_i } # => [2, 3]   These 2 syntax are the same method.

* It's possible to invoke all of these methods in one statement due to the return values of each method. 
All four of the methods used in the solution return the object we need to continue chaining methods. 
The following code shows the return value of each method:

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5
  
=end