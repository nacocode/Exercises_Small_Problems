def prompt(msg)
  print "Enter #{msg}: "
end

prompt("a noun")
noun = gets.chomp

prompt("a verb")
verb = gets.chomp

prompt("an adjective")
adjective = gets.chomp

prompt("an adverb")
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample
