# double the consonants

def double_consonants(string)
  result = string.split('').map do |char|
    char =~ /[^aeiou]/ ? char * 2 : char
  end
  result.join
end

puts double_consonants('superman')
