# clean_up_the_words.rb

def cleanup(words)
  words.gsub(/\W+/, ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
