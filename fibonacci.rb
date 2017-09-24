# fibonacci.rb
# nth fibonacci number

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(4)
puts fibonacci(7)
puts fibonacci(12)
puts fibonacci(11)
