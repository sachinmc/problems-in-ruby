# string_to_integer.rb

def string_to_integer(num_str)
  num_str.bytes.reduce(0) do |accu, char|
    # 48 is the byte code for character '0'
    accu * 10 + char - 48
  end
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
