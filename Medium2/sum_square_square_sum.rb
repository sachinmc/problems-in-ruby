def sum_square_difference(n)
  sum = sq_sum = 0
  1.upto(n) do |num|
    sum += num
    sq_sum += num**2
  end
  sum**2 - sq_sum
end

# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25_164_150
