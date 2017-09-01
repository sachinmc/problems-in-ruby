# count the number of characters in a word, spaces not included.

def count_characters(word)
  char_array = word.chars
  char_array.select {|char| char != ' '}.count
end

print "Please write a word or multiple words: "
word = gets.chomp
puts "There are #{count_characters(word)} characters in #{word}"
