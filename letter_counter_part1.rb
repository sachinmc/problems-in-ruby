# letter_counter_part1.rb
#  method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

# note:
# initializing hash values to zero, shown 2 ways 
# hash also sorted (optional)
# comparing 2 hashes with the same key value pair, returns true

def word_sizes(words)
  #hash = Hash.new {|h, k| h[k] = 0}
  hash = Hash.new(0)
  words.split.each {|word| hash[word.size] += 1}
  #hash.sort.to_h
  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
