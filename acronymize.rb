def acronymize(sentence)
  # TODO: return the acronym on the given sentence
  sentence.split.map { |letter| letter[0] }.join.upcase
end
