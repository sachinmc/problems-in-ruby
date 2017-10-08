def word_frequency(sentence)
  # TODO: return a hash representing the number of apperances of words in the sentence
  hash = Hash.new(0)
  sentence.split.each do |word|
    hash[word.gsub(/\W/, '').downcase] += 1
  end
  hash
end
