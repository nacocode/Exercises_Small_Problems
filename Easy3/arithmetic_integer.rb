def prompt(msg)
  puts "==> #{msg}"
end

def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def reminder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

prompt("Enter the first number.")
first_num = gets.chomp.to_i

prompt("Enter the second number.")
second_num = gets.chomp.to_i

prompt("#{first_num} + #{second_num} = #{addition(first_num, second_num)}")
prompt("#{first_num} - #{second_num} = #{subtraction(first_num, second_num)}")
prompt("#{first_num} * #{second_num} = #{product(first_num, second_num)}")
prompt("#{first_num} / #{second_num} = #{quotient(first_num, second_num)}")
prompt("#{first_num} % #{second_num} = #{reminder(first_num, second_num)}")
prompt("#{first_num} ** #{second_num} = #{power(first_num, second_num)}")

# ANOTHER SOLUTION--------------------------------------------------
# prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
# prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
# prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
# prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
# prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
# prompt("#{first_num} ** #{second_num} = #{first_num**second_num}")
