def triangle(*angles)
  return :invalid if angles.reduce(:+) != 180 || angles.include?(0)
  return :acute if angles.all? { |x| x < 90 }
  return :obtuse if angles.one? { |x| x > 90 }
  return :right if angles.one? { |x| x == 90 }
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

#LS Solution
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end 
