def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  result = []
  string.size.times do
    result << leading_substrings(string)
    string = string[1..-1]
  end
  result.flatten
end

def palindromes(string)
  palindromic_words = []
  substrings(string).each do |substring|
    if substring.size < 2
      next
    elsif substring == substring.reverse
      palindromic_words << substring
    end
  end
  palindromic_words
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
    '-madam-', 'madam', 'ada', 'oo'
  ]
p palindromes('knitting cassettes') == [
    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]