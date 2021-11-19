def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  result = []
  string.size.times do
    result << leading_substrings(string)
    string = string[1..-1]
  end
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

#_________________LS Solution________________________
def substrings(string)
  result = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    result.concat(leading_substrings(this_substring))
  end
  result
end