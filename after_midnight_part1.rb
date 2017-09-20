#
# -ve minutes, before midnight, move backward
# +ve minutes, after midnight, move forward
# if hours start couting days, discard days
# for string formating with sprintf, specify width, the fill it with zero: %02d

def time_of_day(time)
  hours = time.abs/60
  hours = hours%24 if hours >= 24
  minutes = time.abs%60
  if time < 0
    hours = 23 - hours
    minutes = 60 - minutes
  end
  [sprintf("%02d", hours), sprintf("%02d", minutes)].join(':')
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
