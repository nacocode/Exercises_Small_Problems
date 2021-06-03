=begin
Q:Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

【Understing the Problem】
- Input: number
- Output: string
- Rules: 
 - It should be better to use float more than integer in this case when I culculate a tip rate.
 -

【Examples: Test Cases】

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

【Deta Structure】 (Array? Number?...etc)
- Input:number
- Rules:
 -get a user's bill and tip percentage 
 -and change string(user input) to a number(.to_f) for later to calculate. 
 -assign those input to each valiable.
 -math : calculate a tip based on the tip percentage
 -math : add the tip to the bill to get the total.
 -output the result string.

【Algorithm】<steps>
- ask a question: user's bill.
- assign input to "bill" (get.chomp.to_f)
- ask a question : tip percentege.
- assign input to "tip_percentage" (get.chomp.to_f)
- tip = bill * tip_percentage
- total = the bill + tip.

=end

print "What is the bill?"
bill = gets.chomp.to_f

print "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = bill * (tip_percentage / 100)
total = bill + tip

puts "The tip is $#{tip}\nThe total is $#{total}"

=begin

【Launch School Solution】

print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

=end