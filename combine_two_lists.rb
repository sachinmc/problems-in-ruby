# combine 2 lists
# 2 arrays passed in arguments are of the same size and will be non-empty

def interleave(array1, array2)
  result = []
  while array2.size > 0
    result << array1.shift << array2.shift
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
