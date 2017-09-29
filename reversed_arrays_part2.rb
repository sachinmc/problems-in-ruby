# reversed_arrays_part2.rb
# after each iteration, I am limiting on how far the index can go
# the variable last_index is the limiter

require 'benchmark'

def reverse(list)
  list = list.dup
  return list if list.size == 0 || list.size == 1
  last_index = 1
  until last_index == list.size
    idx = 0
    until idx == list.size - last_index
      list[idx], list[idx+1] = list[idx+1], list[idx]
      idx += 1
    end
    last_index += 1
  end
  list
end

time = Benchmark.measure do
  p reverse([1,2,3,4])
end

puts time

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
