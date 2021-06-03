=begin
Q:
Write a program that will ask for user's name. 
The program will then greet the user. 
If the user writes "name!" then the computer yells back to the user.

【Understing the Problem】
- Input: string
- Output: string
- Rules: 
 -result includes user's name (Capitalize) 
 -when user writes name with "!" >> result will be all upper cases.
 -if (else) case?? for 2 ways to answer.
 -user's input should be print beside a question.

【Examples: Test Cases】
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

【Deta Structure】 (Array? Number?...etc)
- Input: string
- Rules: 
 - (.gets) to begin by asking for and obtaining the user's name.
 - store user's name to variable "name" 
 - (string[]) check the last character of the user's name (name[-1]) to see if it is an exclamation mark.
 - if it's true then remove the "!" with (.chop :this method removes the last character.)
 - puts result string.
 - use name(.capitalize) for just in case to make all the result will be the same. 

【Algorithm】<steps>
- ask user's name.(use print so that user's input will be printed on a side.)
- get the user's and store to "name"
- if case. if name[-1] == "!" , puts all upcase greeting.
- else  regular greeting : puts "Hello" + user's name.capitalize
=end

print "What is your name?"
name = gets.chomp

if name[-1] == "!"
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

