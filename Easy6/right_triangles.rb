def triangle(num)
  count = 1
  num.times do
    puts "#{" " * (num - count)}#{"*" * count}"
    count += 1
  end
end

triangle(5)