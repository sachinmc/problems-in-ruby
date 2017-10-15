# rotation_part1

# solution1:
# slice(index, length_of_array)
# def rotate_array(array)
#  array.slice(1, array.size) + array.slice(0,1)
# end

# solution2:
# def rotate_array(array)
#   new_array = []
#   for n in (1...array.size)
#     new_array[n-1] = array[n]
#   end
#   new_array + [array[0]]
# end

# slice(begin_idx..end_idx)
def rotate_array(array)
  array.slice(1...array.size) + array.slice(0...1)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
