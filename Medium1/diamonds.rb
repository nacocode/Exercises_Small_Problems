def diamond(num)
  star = 1
  center_row = (num + 1) / 2

  (1..center_row - 1).each do
    puts ("*" * star).center(num)
    star += 2
  end

  ((center_row)..num).each do
    puts ("*" * star).center(num)
    star -= 2
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
