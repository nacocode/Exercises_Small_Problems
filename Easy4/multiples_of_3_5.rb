def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |num|
    if multiple?(num, 3) || multiple?(num, 5)
      sum += num
    end
  end
  sum
end

p multisum(3)
p multisum(5)
p multisum(3)
p multisum(10)
p multisum(1000)
