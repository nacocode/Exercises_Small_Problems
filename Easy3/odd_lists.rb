def oddities(ary)
  odd_elements = []
  index = 0
  while index < ary.size
    odd_elements << ary[index]
    index += 2
  end
  odd_elements
end


p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])

def even_lists(ary)
  even_elements = []
  index = 1
  while index < ary.size
    even_elements << ary[index]
    index += 2
  end
  even_elements
end

p even_lists([2, 3, 4, 5, 6])
p even_lists([1, 2, 3, 4, 5, 6])
p even_lists(['abc', 'def'])
p even_lists([123])
p even_lists([])
