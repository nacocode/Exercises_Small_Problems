=begin
Q:
Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.

【Understing the Problem】
- Input: 2 arguments, (integer,boolean) 
- Output: integer
- Rules:
 - number > 0
 - If the boolean == true, it returns half of input integer.
 - If the boolean == false, it returns 0.

【Examples: Test Cases】

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

【Deta Structure】 (Array? Number?...etc)
- Input: integer & boolean
- Rules:
 - If statement(boolean) I can use the ternary operator.
   able to use bonus as the condition because it's a boolean, 
   which means its value will only be true or false. 
   ( condition ? execution when it's true:execution when it's false)
 -If it's true, then we divide salary by 2 and return the quotient. If it's false, then we return 0.

【Algorithm】<steps>
-
-
=end

def calculate_bonus(salary,bonus)
  bonus ? (salary / 2) : 0 
end

puts calculate_bonus(1000, true)
puts calculate_bonus(2000, false)
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000