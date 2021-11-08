list = [1, 2, 3, 4]

def reverse!(arr)
  left_index = 0
  right_index = -1

  while left_index < arr.size / 2
  arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
  left_index += 1
  right_index -= 1
  end

  arr
end

p list.object_id
p result = reverse!(list)
p list
p list.object_id == result.object_id

list2 = %w(a b c d e)
p reverse!(list2) 
p list2
p list2.object_id == reverse!(list2).object_id

list3 = ["abc"]
p reverse!(list3)
p list3. == reverse!(list3)

list4 = []
p reverse!(list4)
p list4 == reverse!(list4)