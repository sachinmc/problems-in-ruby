# diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
# deconstruction:
# first, build a left justified right angle triangle, incrementing counter, check if odd
# then, build a left justified right angle triangle, decrementing counter, check if odd
# then, add ' ' to each row, check for incrementing or decrementing pattern 


def diamond(num)
  return unless num.odd?
  n = 0
  while n <= num
    puts " " * ((num - n)/2) + "*" * n if n.odd?
    n += 1
  end
  n = num - 1
  while n > 0
    puts " " * ((num-n)/2) + "*" * n if n.odd?
    n -= 1
  end
end
