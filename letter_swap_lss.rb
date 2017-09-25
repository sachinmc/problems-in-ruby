# letter_swap_lss.rb

def swap_first_last_char(word)
  word[0], word[-1] = word[-1], word[0]
  word 
end

def swap(words)
  result =
  words.split.map do |word|
    swap_first_last_char(word)
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
