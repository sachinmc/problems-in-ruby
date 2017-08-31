# tip calculator

print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
percent = (gets.chomp.to_f)/100

tip = bill * percent
total = bill + tip

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"
