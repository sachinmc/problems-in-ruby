# return a hash with number of lower case, uppper case and neither counts

def letter_case_count(string)
  counts = {}
  character = string.chars
  counts[:lowercase] = character.count {|element| element =~ /[a-z]/}
  counts[:uppercase] = character.count {|element| element =~ /[A-Z]/}
  counts[:neither] = character.count {|element| element =~ /[^A-Za-z]/}
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
