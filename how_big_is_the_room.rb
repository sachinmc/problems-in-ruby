# calculate area of room in sqm and sqft

SQMETERS_TO_SQFEET = 10.7639
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
area_sqm = length * width
puts "The area of the room is #{area_sqm} square meters " + \
     "(#{(area_sqm*SQMETERS_TO_SQFEET).round(2)} square feet)"
