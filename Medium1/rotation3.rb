def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(numbers, digit)
  all_digits = numbers.to_s.chars
  all_digits[-digit..-1] = rotate_array(all_digits[-digit..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15
