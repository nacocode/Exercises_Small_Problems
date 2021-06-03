=begin
Q: 
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers.

【Understing the Problem】
- Input: array
- Output: integer
- Rules: 
 - one argument,an array containing integers.
 - intergers > 0
 - I don't know how many integers are inside of array but there is always at least one, never empty.
   so I need a method to count how many in it.
 - I need the sum of all the numbers in a the array.
 - And the lastly I need to devide those to get the average number.

【Examples: Test Cases】
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

【Deta Structure】 (Array? Number?...etc)
- Input: array
- Rules: 
 - array 
  - (.sum) Returns the sum of elements.
  - (.count) Returns the number of elements.
  

【Algorithm】<steps>
-Use (.sum) to add every number together in the array 
 and assign in to variable called "sum".
-Use (.count) to see how many elements are inside an array.
-Devide the sum by the number of elements to get an avarage number. 
=end

def average(array)
  sum = array.sum
  sum / array.count
end

p average([1,2,3,4,5,6])
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin

【Launch School Solution】

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }    #もしくは sum = numbers.reduce(:+) でもOK.
  sum / numbers.count
end

=end