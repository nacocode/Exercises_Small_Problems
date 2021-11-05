# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

def print_in_box(string)
  length = string.size
  
  holizental_line(length)
  empty_line(length)
  string_line(string)
  empty_line(length)
  holizental_line(length)
end

def holizental_line(length)
  puts "+-#{"-" * length}-+"
end

def empty_line(length)
  puts "| #{" " * length} |"
end

def string_line(string)
  puts "| #{string} |"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box("")