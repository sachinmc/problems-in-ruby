# halvsies_rf.rb

def halvsies(array)
  return [array] << [] if array.size == 0 || array.size == nil
  if array.size.odd?
    return [array.slice(0..array.size/2)] << array.slice(array.size/2+1..array.size-1)
  else
    return [array.slice(0, array.size/2)] << array.slice(array.size/2, array.size-1)
  end
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
