# Enumerable#max_by, String#strip, File::read, sorting
# \n character in a string is read for IO methods or regex, not by String#some_method

# def longest_sentence(txt)
#   text = File.read(txt)
#   sentences = text.split(/[?.!]/)

#   max_words = 0
#   longest_sentence = ''
#   sentences.each do |line|
#     a = line.gsub(/\n/, ' ' ).split.length
#     if a > max_words
#       max_words = a
#       longest_sentence = line
#     end
#   end
#   [longest_sentence.gsub(/\n/, ' ').strip, "#{max_words} words"]
# end

# puts longest_sentence('./pg84.txt')


# refactor
def longest_sentence(txt)
  text = File.read(txt)
  sentences = text.split(/[?.!]/).map(&:strip)
  # old code:
  # sentences = text.split(/[?.!]/).map do |sentence|
  #   sentence.gsub('\n', ' ').strip
  # end
  longest = sentences.max_by(&:length)
  [longest, "#{longest.split.length} words"]
end

puts longest_sentence('./pg84.txt')

# LS solution
# text = File.read('pg84.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"
