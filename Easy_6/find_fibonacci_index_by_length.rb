def find_fibonacci_index_by_length(len)
  a = 1
  b = 1
  result = a + b
  nth = 3
  loop do
    a = b
    b = result
    result = a + b
    nth += 1
    break if result.to_s.size == len
  end
  nth
end


p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# generate fibonacci series
# check each number of the series for its size
# if size of num == len
# then return that number

# LS Solution:
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end
