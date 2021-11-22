def fizzbuzz(num1, num2)
  array = (num1..num2).to_a

  result = array.map do |num|
    if num % 3 == 0 && num % 5 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num
    end
  end
  result
end

#def fizzbuzz(num1, num2)
#  result = []
#  num1.upto(num2) do |num|
#   result << fizzbuzz_value(num)
#  end
#
#  result
#end
#
#def fizzbuzz_value(num)
#  case
#  when num % 3 == 0 && num % 5 == 0
#    "FizzBuzz"
#  when num % 3 == 0
#    "Fizz"
#  when num % 5 == 0
#    "Buzz"
#  else
#    num
#  end
#end

p fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
