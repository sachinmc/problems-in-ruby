# reversed_arrays_part1.rb
# the original argument is to be changed, verify with object_id
# i.e. mutate the list that is passed into this method
require 'pry'

def reverse!(list)
  swaps = 0
  counter1 = 0
  counter2 = list.size - 1
  loop do
    if list.size == 0 || list.size == 1
      break
    elsif swaps == list.size/2
      break
    else
      temp = list[counter1]
      list[counter1] = list[counter2]
      list[counter2] = temp
      swaps += 1
      counter1 += 1
      counter2 -= 1
    end
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
