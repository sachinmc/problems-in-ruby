# arithmetic_int.rb

# array can accept symbols or strings 
operations = ['+', '-', '*', '/', '%', '**']
puts "=> Enter the first number:"
num1 = gets.chomp.to_i
puts "=> Enter the second number:"
num2 = gets.chomp.to_i

# Object#send when the method is identified by a string, the string is
# converted to a symbol
operations.each {|opr| puts "=> #{num1} #{opr} #{num2} = #{num1.send opr, num2}"}
