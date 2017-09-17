# daily_double.rb
def crunch(string)
  array = []
  string.each_char do |ele|
    array << ele unless array.last == ele
  end
  array.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
