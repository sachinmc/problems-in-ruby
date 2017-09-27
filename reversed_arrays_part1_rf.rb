# reversed_arrays_part1.rb
# the original argument is to be changed, verify with object_id
# i.e. mutate the list that is passed into this method
require 'pry'

def reverse!(list)
  swaps = 0
  index_1 = 0
  index_2 = list.size -  1
  return list if list.size == 0 
  loop do
    list[index_1], list[index_2] = list[index_2], list[index_1]
    index_1 += 1
    index_2 -= 1
    break if swaps == list.size/2
    swaps += 1
  end
  list
end

p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # => []
p list == []
