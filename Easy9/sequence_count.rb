def sequence(count_num, first_num)
  (1..count_num).map { |value| first_num * value }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# ________LS Solution_________

def sequence(count_num, first_num)
  sequence = []
  number = first_num

  count_num.times do
    sequence << number
    number += first_num
  end

  sequence
end
