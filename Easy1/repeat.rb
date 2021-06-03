=begin
(note)
Q: Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
>>input 
--- 2 arguments(string,number)
--- number > 0
>>output 
--- string (passed as an argument * number passed as an argument)
=end


def repeat(string, number)
  number.times do
  puts string
  end
end

repeat("Hello",5)