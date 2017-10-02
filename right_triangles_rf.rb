# right triangles

def triangle(n)
  m = 1
  n.times do
    puts "#{' ' * (n-m)}#{'*' * m}"
    m += 1
  end
end

triangle(1)
triangle(3)
triangle(10)
