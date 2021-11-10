def triangle(num)
  count = 1
  num.times do
    puts "#{" " * (num - count)}#{"*" * count}"       # or => puts (" " * (num - count)) + ("*" * count) also works
    count += 1
  end
end

triangle(5)

#_______Launch School Solution__________________

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
