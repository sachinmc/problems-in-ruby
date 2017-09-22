# letter_counter_part2.rb

def word_sizes(words)
  hash = Hash.new(0)
  words.gsub!(/[\W&&[^\s]]/, '')
  words.split.each {|word| hash[word.size] += 1}
  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
