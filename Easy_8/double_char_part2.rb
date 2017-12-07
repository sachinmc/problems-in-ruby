# every consonant character is doubled.

def double_consonants(string)
  result = string.chars.map do |chr|
    /[b-df-hj-np-tv-z]/ =~ chr.downcase ? chr * 2 : chr
  end
  result.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
