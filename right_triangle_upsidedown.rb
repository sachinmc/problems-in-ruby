# right triangle upside down

def triangle(n)
  spaces = 0
  stars = n
  n.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

triangle(1)
triangle(3)
triangle(10)
