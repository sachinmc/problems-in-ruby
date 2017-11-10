def get_grade(*args)
  score = args.reduce(:+) / 3
  case score
  when (100..Float::INFINITY) then 'A+'
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == 'A'
p get_grade(50, 50, 95) == 'D'
p get_grade(100, 110, 105) == 'A+'
