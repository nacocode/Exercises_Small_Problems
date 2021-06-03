=begin
Q:
Build a program that randomly generates and prints Teddy's age. 
To get the age, you should generate a random number between 20 and 200.

【Understing the Problem】
- Input: integer
- Output: string
- Rules: 
 - age(integer) will be generated randomly every time when the program runs.
 - age range is 20-200

【Examples: Test Cases】
 Teddy is 69 years old!

【Deta Structure】 (Array? Number?...etc)
- Input: integer
- Rules: 
 - Use rand method with a range (20..200) as an argument to generate a random integer between 20-200
 - assain generated number to a variable.
 - make a string and print.

【Algorithm】<steps>
- rand(20..200)
- print "Teddy is #{age} years old!"
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"

=begin

Q:Further Exploration
Modify this program to ask for a name, and then print the age for that person. 
For an extra challenge, use "Teddy" as the name if no name is entered.

【Understing the Problem】
- Input: string
- Output: string
- Rules: 
 - age(integer) will be generated randomly every time when the program runs.
 - age range is 20-200
 - name from the user input and random age will be assign to an output string. 
 - Set the default name to "Teddy" when thers is no input.  

【Examples: Test Cases】
 Nami is 12 years old! 
 Teddy is 69 years old!

【Deta Structure】 (Array? Number?...etc)
- Input: string 
- Rules: 
 - ask user name >>  get the input and capitalize the name and assign to a valiable "name" .
 - Use rand method with a range (20..200) as an argument to generate a random integer between 20-200
 - assain generated number to a variable "age"
 - make a string and print.

【Algorithm】<steps>
- Ask user's name.
- .get.chomp.capitalize
- assign to "name" valiable
- rand(20..200)
- print string.
=end

def how_old
  puts "What's your name?"
  name = gets.chomp.capitalize
  name = "Teddy" if name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!" 
end

how_old