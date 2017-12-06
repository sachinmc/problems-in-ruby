def after_midnight(time)
  hr_min = time.split(':').map(&:to_i)
  hr_min[0] = 0 if hr_min.first == 24
  hr_min.first * 60 + hr_min.last
end

def before_midnight(time)
  hr_min = time.split(':').map(&:to_i)
  return 0 if hr_min.first == 24
  hr_min[0] -= 1
  hr_min[-1] = 60 - hr_min[-1]
  hr_min.first * 60 + hr_min.last
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
