def interleave(arr1, arr2)
  result = []
  index = 0

  loop do
    result << arr1[index] << arr2[index]
    index += 1
    break if index == arr1.size
  end
  
  result
end

#______________LS Solution______________________

def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |element, index|
    result << element << arr2[index]
  result
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
