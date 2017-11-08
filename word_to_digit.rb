# def build_hash
#   hash = {}
#   array = %w(zero one two three four five six seven eight nine)
#   array.each_with_index do |item, idx|
#     hash[item] = idx
#   end
#   hash
# end

# def word_to_digit(string)
#   hash = build_hash
#   result = string.split(' ').map do |word|
#     answer = word
#     dot_removed = word.delete '.'
#     if hash[dot_removed]
#       answer = word =~ /\./ ? hash[dot_removed].to_s + '.' : hash[word].to_s
#     end
#     answer
#   end
#   result.join(' ')
# end
#
#

# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# p word_to_digit('Please call me at zero seven nine two eight three three three. Thanks.')

# LS solution

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
