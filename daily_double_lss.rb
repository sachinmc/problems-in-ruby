# daily_double_lss.rb

def crunch(string)
  index = 0
  result = ''
  while index <= string.length
    result << string[index] unless string[index] == string[index + 1]
    index +=1
  end
  result
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
