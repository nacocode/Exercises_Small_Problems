=begin
Q:
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of 
all numbers between 1 and the entered integer.


【Understing the Problem】
- Input:
  - integer & string
- Output:
  string include the number
- Rules:
 - integer > 0
 - first I need to validate a number??
  -I need to keep looping until get a valid number.
 - if statement?? iterator??

【Examples: Test Cases】

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

【Deta Structure】 (Array? Number?...etc)
- Input: integer and string
- Rules:
 - first obtains the integer to be performed from the user.
 - (gets.chomp),store the input to "number_string"
 - use loops to check if the number is valid number(greater than 0) or anything else.
    - number(.to_i) because user input is always a string.
    - no string, no 0, no smaller than 0.
    - keep looping(asking again) until I get a valid number.  
 - ask to obtain the operation to be performed from the user
   (whether to compute sum or to product. "s" for sum, "p" for product.)
 - then we perform the requested operation using one of two methods: 
   compute_sum adds the numbers together, while compute_product multiplies them. 
   Once we have the result, we just print it.
    - (gets.chomp)
    - for "s" : from 1 up to (number) times keep summing the number. 
    - for "p" : from 1 up to (number) times keep producting the number.

【Algorithm】<steps>
-build a method to validate the integer 
 - 1: to check whether it is a string or integer.(add issue error messages as needed.)
 - 2: to check whether it is a greater than 0.(add issue error messages as needed.)
 - 3: to compute sum
 - 4: to compute product
-loop
 - ask ">> Please enter an integer greater than 0:"
   (gets.chomp) 
-loop
- valid_number
- positive_number?
-ask">> Enter 's' to compute the sum, 'p' to compute the product."
-oparation = gets.chomp
-if statement to do the oparation(sum or product)
  - depends on the user's request
  - add issue error messages as needed.
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def positive_number?(number)
  number > 0
end

def compute_sum(number)
  total = 0
  1.upto(number) {|i| total += i} # total = total + i 
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|i| total *= i} # total = total * i
  total
end

def get_number
  number_string = nil

  loop do
    puts ">> Please enter an integer greater than 0:"
    number_string = gets.chomp
    
    if !valid_number?(number_string)
      puts "Invalid input. Strings are not allowed."
    elsif !positive_number?(number_string.to_i)
      puts "Invalid input. Integer must be greater than 0."
    else
      break
    end
  end

  number_string 
end

def get_operation
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.downcase.chomp

  #operation
end


def calculate
  number = get_number.to_i # I added .to_i
  operation = get_operation

  if operation == "s"
    sum = compute_sum(number)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
  elsif operation == "p"
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}."
  else
    puts "Oops. Unknown operation."
  end
end

calculate
