# write a method that takes this string of words and 
# returns a string in which the first and last letters of every word are swapped.

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

def swap_first_last_cheracters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  array = string.split.map do |word| 
    swap_first_last_cheracters(word)
  end
  array.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'