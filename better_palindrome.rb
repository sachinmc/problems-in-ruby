def better_palindrome?(sentence)
  # TODO: return true/false depending if the *sentence* is a palindrome
  # #sentence.split.join.reverse == sentence.split.join
  rev_sentence = sentence.downcase.gsub(/\W/, '')
  rev_sentence.reverse == sentence.downcase.gsub(/\W/, '')
end
