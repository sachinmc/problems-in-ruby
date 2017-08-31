# greeting_user.rb

print "What is your name? "
name = gets.chomp
if name.include?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}"
end
