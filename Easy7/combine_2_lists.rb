def interleave(arr1, arr2)
  index = 0
  result = []

  loop do
    result << arr1[index]
    result << arr2[index]
    index += 1
    break if index == arr1.size
  end

  result
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
