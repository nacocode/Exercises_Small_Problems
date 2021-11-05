# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

def print_in_box(message)
  hotizontal_line = "+-#{"-" * message.size}-+"
  empty_line = "| #{" " * message.size} |"
  string_line = "| #{message} |"

  puts hotizontal_line
  puts empty_line
  puts string_line
  puts empty_line
  puts hotizontal_line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box("")

#________Launch School Solution__________________________________

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end