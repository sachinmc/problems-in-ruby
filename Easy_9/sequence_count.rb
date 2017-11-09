# passing a block to Array.new
#
# def sequence(count, start)
#  array = Array.new(count) { |i| i + 1 }
#  array.map { |i| i * start }
# end

# LS solution using range
def sequence(count, first)
  (1..count).map { |idx| idx * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []




# generate an array of size count, with values starting from 1
# multiply the array by the starting number
