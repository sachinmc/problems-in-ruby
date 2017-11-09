# regex solution:
#
# def twice(num)
#   num_str = num.to_s
#   pattern_size = num_str.size
#   match = /(\d{#{pattern_size / 2}})\1/.match(num_str)
#   pattern_size.odd? || match.nil? ? num * 2 : num
# end


# def twice(num)
#   num_str = num.to_s
#   size = num_str.chars.size
#   idx = size/2
#   first_half = num_str[0..idx - 1]
#   second_half = num_str[idx..-1]
#   size == 1 || first_half != second_half ? num * 2 : num
# end

# LS Solution
def twice(number)
  string_number = number.to_s
  center = string_number.size/2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]
  return number if left_side == right_side
  return number * 2
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
