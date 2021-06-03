=begin
Q:How big is the room?
Build a program that asks a user for the length and width of a room in meters
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.

【Understing the Problem】
- Input: number
- Output: string 
- Rules:
 -1 square meter == 10.7639 square feet.
 -答えの数字が割り切れへん数字やったときの表示方法はどうするんか？

【Examples: Test Cases】
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

【Deta Structure】 (Array? Number?...etc)
- Input:number
- Rules:
 -ask question to get a length and width of the room.
 -user's answer is always a string. 
 -(.to_f) I need to convert them to a number(float in this case) not (to_i)
  so that I can calculate to get a answer.
  but I can't use(.chomp) for integer so .chom first and change string to an integer.
 -assign the user input to a valiables.
 -multiply lenght by width and assign to "square_meters"
 -convert square meters to a square feet and assign to "square_feet"
 -print the result string.


【Algorithm】<steps>
- Ask user a question:"Enter the length of the room in meters:"
-.get.chomp.to_f and assign to "lenght"
- Ask user a question:"Enter the width of the room in meters:" 
- get.to_f.chomp and assign to "lenght"
- lenght ✕　width = square_meters
- square_feet = square meters ✕　10.7639
- print the result.

=end

puts "Enter the lenght of the room in meters:"
lenght = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = lenght * width
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)." 

=begin

【Launch School Solution】
SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + "square meters (#{square_feet} square feet)."

*Comment*
We use a constant, SQMETERS_TO_SQFEET to store the conversion factor between square meters and square feet. 
This is good practice any time you have a number whose meaning is not immediately obvious upon seeing it.

The only thing that may be unfamiliar here is the round method (a method of the Float class), 
which is used to round our results to the nearest 2 decimal places. 
(You can also use Kernel#format to format the results, but format is harder to use.)

【after modified my code】

puts "Enter the lenght of the room in meters:"
lenght = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (lenght * width).round(2)
square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)." 

=end