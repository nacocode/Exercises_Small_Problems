def halvsies(array)
  half = ((array.size / 2.0).round) - 1
  first = array[0..half] 
  second = array[(half + 1)..-1]
  result = [first, second]
end


p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) 
p halvsies([5])
p halvsies([])