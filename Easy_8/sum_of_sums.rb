# sum of sums
# sum_of_sums([3,4,5]) => (3) + (3+4) + (3+4+5)

def sum_of_sums(array)
  sum, result = [], []
  array.each do |ele|
    sum += [ele]
    result << sum
  end
  result.flatten.reduce(:+)
end

puts sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) #== 4
puts sum_of_sums([1, 2, 3, 4, 5]) #== 35
