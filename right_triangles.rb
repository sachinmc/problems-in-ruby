# right_triangles.rb

def triangle(n)
  string = '*' * n
  m = 1
  while m <= n
    puts format("%#{n}.#{m}s", "#{string}")
    m += 1
  end
end

triangle(3)
triangle(10)
