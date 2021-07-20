def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('nami')
p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')
p ascii_value(' ')

# ____________Another solution__________________

def ascii_value2(string)
  sum = 0
  string.bytes.map { |value| sum += value }
  sum
end

p ascii_value2('nami')
p ascii_value2('Four score')
p ascii_value2('Launch School')
p ascii_value2('a')
p ascii_value2('')
p ascii_value2(' ')
