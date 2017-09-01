# searching_101.rb

numbers = []
prefix = ["1st", "2nd", "3rd", "4th", "5th"]
counter = 0

while counter < 5
  puts "=> Enter the #{prefix[counter]} number:"
  numbers << gets.chomp.to_i
  counter += 1
end

puts "=> Enter the last number:"
last_num = gets.chomp.to_i
if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}"
else
  puts "The number #{last_num} does not appear in #{numbers}"
end
