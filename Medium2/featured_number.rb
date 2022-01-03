def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0
  loop do
    return number if number.to_s.chars.uniq == number.to_s.chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

# def featured(number)
#   loop do
#     number += 1
#     if number.odd?
#       if number % 7 == 0
#         if number.to_s.chars.uniq == number.to_s.chars
#           break
#         end
#       end
#     end
#     next
#   end
#   number
# end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987
p featured(9_999_999_999)
