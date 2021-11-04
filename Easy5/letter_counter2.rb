def word_sizes(string)
  counts = Hash.new(0)
  string = remove_symbol(string)
  string.split.each do |word|
    counts[word.size] += 1
  end
  counts.sort.to_h
end

def remove_symbol(string)
  string = string.split.map do |word|
    word.gsub(/[\W]/, "")
  end
  string.join(" ")
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}