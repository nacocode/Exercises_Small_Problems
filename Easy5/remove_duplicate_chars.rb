def remove_duplicater(text)
  clean_text = []
  text.chars.each do |char|
    clean_text << char unless clean_text[-1] == char
  end
  clean_text.join
end

p remove_duplicater('ddaaiillyy ddoouubbllee') == 'daily double'
p remove_duplicater('4444abcabccba') == '4abcabcba'
p remove_duplicater('ggggggggggggggg') == 'g'
p remove_duplicater('a') == 'a'
p remove_duplicater('') == ''
