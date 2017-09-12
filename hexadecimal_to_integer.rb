# hexadecimal_to_integer.rb
# hex to int conversion formula:
# 4 * 16^3 + 13 * 16^2 + 9 * 16^1 + 15 * 16^0

HEXDIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
  hex_digits = string.chars.map {|element| HEXDIGITS[element.upcase]}
  hex_digits = hex_digits.reverse.map.with_index {|ele,idx| ele * (16**idx)}
  hex_digits.reduce(:+)
end


puts hexadecimal_to_integer('4D9f') == 19871
