def pangram?(sentence)
  # TODO: return true/false depending if the sentence is a pangram (contains every letter of the alphabet)
  alphabets = "abcdefghijklmnopqrstuvwxyz"
  sentence.downcase.gsub(/\W/, '').split('').sort.uniq.join == alphabets
end
