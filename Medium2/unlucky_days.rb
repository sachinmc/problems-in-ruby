def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    # Time.gm or Time.local
    count += 1 if Time.gm(year, month, 13).friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# LS Solution
require 'date'

def friday_13th(year)
 unlucky_count = 0
 thirteenth = Date.new(year, 1, 13)
 12.times do
   unlucky_count += 1 if thirteenth.friday?
   thirteenth.next_month
 end
 unlucky_count
end
