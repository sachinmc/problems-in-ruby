# prompt user for sum or product

def sum(number)
  (1..number).inject(:+)
end

def product(number)
  (1..number).inject(:*)
end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

if choice == 's'
  puts "The sum of the integers between 1 and #{number}" + \
       " is #{sum(number)}"
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number}" + \
       " is #{product(number)}"
else
  puts "Unknown selection" 
end
