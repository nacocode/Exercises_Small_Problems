def include?(array, value)
  array.any? {|element| element == value }
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)

#_______Launch School Solution below________

def include?(array, value)
  !!array.find_index(value)
end
