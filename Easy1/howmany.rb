=begin

Q:Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

【Understing the Problem】
- Input: 
 - a string (will be a key for hash)
- Output: 
 - hash {car => 4, truck => 3, SUV => 1,motorcycle => 2}
 - how to change from an array to a hash ?

- Rules:


【Examples: Test Cases】



【Deta Structure】 (Array? Number?...etc)
- Input:  
 - a string (will be a key for hash)
- Rules:


【Algorithm】<steps>
1: Take each element of the array as an argument and count how many of them are contained.
 (array.count("element"))
 - Make a hash takes each elements as a key and the number of each elements as a value. 
 - Hash[key]= value : creates a new key-value pair or modifies an existing one based on the given key and value.

=end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)