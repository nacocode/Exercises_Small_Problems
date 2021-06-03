=begin
Q:
Print all odd numbers from 1 to 99, inclusive. 
All numbers should be printed on separate lines.

【Understing the Problem】
- Input: integers
- Output:integers
- Rules:
 - integer(1..100) or (1...99)
 - print only odd numbers
 - print them on separate lines.(means use puts)
 - there are several ways to find if the number is odd ot not.
  - odd? , number % 2 = 1, number % 2 != 0 eat...

【Examples: Test Cases】

1
3
5
7
9



【Deta Structure】 (Array? Number?...etc)
- Input: number : integer
- Rules: 
 - use for loop 
 -(.odd?) checks whether the number is odd
 - print odd numbers, use puts to make the result will be on separate line.

【Algorithm】<steps>
- for loop (1..100)
- number .odd?
-puts number

=end

for n in 1..100
  puts n if n.odd?
end

=begin
【Launch School Solution】

value = 1
while value <= 99
  puts value
  value += 2
end

* Repeat this exercise with a technique different from the one you just used,
  You may want to explore the use Integer#upto or Array#select methods
　以下　別のやり方一覧

- 1.upto(99) { |n| puts n if n.odd? }

- (1..100).each { |n| puts n if n % 2 != 0 }

- n = [*(1..100)]
  puts n.select { |n| n % 2 == 1 }

- n = [*(1..100)]
  odds = n.select { |n| n.odd?}

  puts odds

- value = 1
  while value <= 99
  puts value if value.odd?
  value += 1
  end

=end

