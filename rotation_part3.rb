# max rotation

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  n = number.to_s.size
  def rotate(number, n)
    return number if n == 1
    rotate(rotate_rightmost_digits(number,n), n-=1)
  end
  rotate(number, n)
end

# another solution:
# def max_rotation(number)
#   n = number.to_s.size
#   loop do
#     number = rotate_rightmost_digits(number, n)
#     n -=1
#     break if n == 0
#   end
#   number
# end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845



# 735291, 6,(352917), 5
# 352917,5,(329175), 4
# 329175,4,(321759), 3
# 321759,3,(321597), 2
# 321597,2,(321579), 1
# 321579
