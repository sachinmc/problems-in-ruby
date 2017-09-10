def multisum(number)
  array = (1..number).to_a.select {|num| num % 3 == 0 || num % 5 == 0}
  array.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
