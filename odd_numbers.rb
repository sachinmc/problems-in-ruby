# print all odd numbers from 1 to 99, inclusive, numbers to be printed on
# separate lines

def odd_number_each
  (1..99).each {|num| puts num if num%2 != 0}
end


=begin
# Also:
1.upto(99) {|i| puts i if i.odd?}
=end 
