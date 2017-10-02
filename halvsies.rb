# halvsies_rf_1.rb

def halvsies(array)
  result = []
  index = array.size/2
  length = array.size
  while index > 0
    result << array.shift
    index -= 1
  end
  result << array.shift if index == 0 && length.odd?
  [result, array]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
