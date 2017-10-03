# return a hash with number of lower case, uppper case and neither count

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |char|
    hash[:lowercase] += 1 if /[a-z]/.match?(char)
    hash[:uppercase] += 1 if /[A-Z]/.match?(char)
    hash[:neither] += 1 if /[^a-zA-Z]/.match?(char)
  end
  hash
end

puts letter_case_count('abCdef 123') # == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
