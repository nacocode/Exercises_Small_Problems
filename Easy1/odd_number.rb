=begin
Q:Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.

【Note】
- input = one argument [integer] > 0 < 
- output = boolean(true or false)
 -true = odd number 

-test case/example
  puts is_odd?(2)    # => false
  puts is_odd?(5)    # => true
  puts is_odd?(-17)  # => true
  puts is_odd?(-8)   # => false
  puts is_odd?(0)    # => false
  puts is_odd?(7)    # => true

=end

=begin
[以下.odd?を使ったメソッドの場合]

def is_odd?(number)
  number.odd?
end

puts is_odd?(2)    
puts is_odd?(5)  
puts is_odd?(-17)
puts is_odd?(-8)  
puts is_odd?(0)   
puts is_odd?(7) 

=end

def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)    
puts is_odd?(5)  
puts is_odd?(-17)
puts is_odd?(-8)  
puts is_odd?(0)   
puts is_odd?(7) 