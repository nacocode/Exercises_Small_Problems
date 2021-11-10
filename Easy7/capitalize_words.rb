def word_cap(string)
  result_array = string.split.map do |word|
    word.capitalize
  end
  result_array.join(" ")
end


p word_cap('four score and seven')#== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'