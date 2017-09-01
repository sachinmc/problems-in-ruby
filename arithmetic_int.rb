# arithmetic_int.rb

operations = ['+', '-', '*', '/', '%', '**']
puts "=> Enter the first number:"
num1 = gets.chomp.to_i
puts "=> Enter the second number:"
num2 = gets.chomp.to_i

operations.each {|opr| puts "=> #{num1} #{opr} #{num2} = #{num1.send opr, num2}"}
