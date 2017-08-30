# average of array elements

def average(an_array)
  (an_array.inject(:+))/an_array.length
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
