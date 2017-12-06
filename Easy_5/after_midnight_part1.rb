def time_of_day(min)
  days, min = min.divmod(1440)
  hrs, min = min.divmod(60)
  format("%.2d:%.2d", hrs, min)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
