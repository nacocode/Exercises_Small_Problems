def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# def shout_out_to(name)
#   puts 'HEY ' + name.upcase
# end
