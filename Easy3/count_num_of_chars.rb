puts "Please write word or multiple words:"
user_input = gets.chomp
number_of_chars = user_input.delete(" ").size

puts "There are #{number_of_chars} characters in '#{user_input}'."