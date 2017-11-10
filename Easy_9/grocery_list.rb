# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# def buy_fruit(array)
#   array.map{ |x| (x[0] + " ") * x[1] }.map(&:split).flatten
# end

# LS solution
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# using Enumerable#flat_map
def buy_fruit(array)
  array.flat_map { |fruit, quantity| [fruit] * quantity }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
