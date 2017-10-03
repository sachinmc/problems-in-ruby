# capitalize first letter of every word

def word_cap(string)
  string.split.map(&:downcase).each { |word| word[0] = word[0].upcase }.join(' ')
end

puts word_cap('four score and seven') #== 'Four Score And Seven'
puts word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
