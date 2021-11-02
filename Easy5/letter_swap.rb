# write a method that takes this string of words and 
# returns a string in which the first and last letters of every word are swapped.

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

def swap(string)
  array = string.split
  array = array.map {|word| switch_letters(word)}
  array.join(" ")
end

def switch_letters(word)
  sub_array = word.chars
  sub_array << sub_array[0]
  sub_array[0] = sub_array[-2]
  sub_array.delete_at(-2)
  sub_array.join
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'