# string_to_integer ls solution

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map {|char| DIGITS[char]}

  value = 0
  digits.each do |number|
    value = value * 10 + number
  end
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
