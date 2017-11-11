def fibonacci(nth)
  a = 1
  b = 1
  count = 3 # start counting from 3rd fib# since 1st and 2nd fib# is 1
  result = 1 # result is 1 for 1st and 2nd fib#'s
  return result if nth == 1 || nth == 2
  loop do
    a = b # a is previous b
    b = result # b is previous result
    result = a + b # result is sum of previous 2 numbers
    break if count == nth
    count += 1
  end
  return result
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
