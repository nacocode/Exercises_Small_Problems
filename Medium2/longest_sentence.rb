text = File.read("sample.txt")
sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
longest_sentence.strip
number_of_words = longest_sentence.split.size
puts "#{longest_sentence}"
puts "Containing #{number_of_words} words."
