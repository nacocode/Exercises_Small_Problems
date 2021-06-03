=begin
Q: Write a program that asks the user to enter an integer greater than 0.
   And find out that the user's input is whether a string or a number first
   then check the number is greater than 0 or not.

=end

# 【methods】
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def positive_number?(number)
  number > 0
end

#def positive_number?(number)
#  if number <= 0
#    return false
#  end
#    
#  return true
#end

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

  number_string  #return number_string.to_i
end

number = get_number.to_i  #get_number

puts "#{number} is a valid number."
