# using double exclamation, ! forces a boolean context, !! returns the proper
# boolean value.

def include?(array, value)
  !!array.find_index(value)
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
