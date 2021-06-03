=begin
Q:
Build a program that displays when the user will retire 
and how many years she has to work till retirement.

【Understing the Problem】
- Input: number/integer
- Output: string 
- Rules: 
 - output should be a string include 2 result from the input.
  - the year they retire.
  - how long thay have left to work.

【Examples: Test Cases】

What is your age? 30
At what age would you like to retire? 70

It's 2018. You will retire in 2058.
You have only 40 years of work to go!

* Launch Schoolは２０１６年に設定してたけど、２０１８に変更。＊

【Deta Structure】 (Array? Number?...etc)
- Input: number/ integer
- Rules: 
 - get user's current age and retirement age.
 - (to_i) to convert user input to an integer.
 - assign to valiables."age" & "retirement_age"
 - retirement_age - age = remain of working year.
  - assign the result to "remain"
 - (Times.now.year) provides a current year, and assign it to "current_year" 
 - determine the retirement year based on current year and "remain" 

【Algorithm】<steps>
- ask user's age
- assign user input to "age" (get.chomp.to_i)
- ask an age that they want to retire.
- assign user input to "retirement_age" (get.chomp.to_i)
- get the "remain" : retirement_age - age 
- set a  current_year
- calculate the "retirement_year" : current year + remain
- print the result

=end

print "What is your age?"
age = gets.chomp.to_i

print "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

remain = retirement_age - age
current_year = Time.now.year
retirement_year = current_year + remain

puts "It's 2018. You will retire in #{retirement_year}." 
puts "You have only #{remain} years of work to go!"

=begin
【Launch School Solution】

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"

*Comment*
In this solution, we use Time.now to get the current date. 
This returns a Time object. The Time class has a fairly useful method, Time#year that gives us the current year.
From there we can determine the retirement year based on the two inputs and the current year.

=end