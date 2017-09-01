# a method that returns an array which contains every other element of the
# passed in Array

def oddities(array)
  new_array = []
  array.each_index {|idx| new_array << array[idx] if idx.even?}
  new_array
end

# all should return true 
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
