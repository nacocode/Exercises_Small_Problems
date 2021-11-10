def letter_case_count(text)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  text.chars.each do |value|
    if /[a-z]/.match?(value)
      hash[:lowercase] += 1
    elsif /[A-Z]/.match?(value)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }