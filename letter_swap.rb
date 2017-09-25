# swap
# notes:
# default String#split splits on whitespaces split same as split(' ')

def swap(string)
  string =
  string.split.map do |word|
    array = word.chars
    first = array[0]
    array[0] = array[-1]
    array[-1] = first
    array.join
  end
  string.join(' ')
end


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
