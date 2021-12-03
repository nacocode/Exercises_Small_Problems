words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value { |v| p v }
