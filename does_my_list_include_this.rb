# does_my_list_include_this.rb

def include?(array, item)
  array.select {|element| item == element} != []
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
