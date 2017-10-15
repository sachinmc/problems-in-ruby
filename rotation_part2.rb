# rotate_rightmost_digits

def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_rightmost_digits(number, n)
  str = number.to_s
  result = str[0...str.size - n] + rotate_string(str[-n..-1])
  result.to_i
end


puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
