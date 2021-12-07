def diamond(num)
  star = 1
  center_row = (num + 1) / 2

  (1..center_row).each do
    puts ("*" * star).center(num)
    star += 2
  end
  star -= 2
  ((center_row + 1)..num).each do
    star -= 2
    puts ("*" * star).center(num)
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
