# puts vs p behavior with " and ', #format, %(), #divmod, degrees minutes seconds

DEGREE = "\xC2\xB0".freeze

def dms(degree)
  min = (degree - degree.to_i) * 60
  sec = (min - min.to_i) * 60
  %(#{degree.to_i}#{DEGREE}#{format('%02d', min.round(2))}') +
    %(#{format('%02d', sec.round(2))}")
end

# LS Solution
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
# puts dms(720)
