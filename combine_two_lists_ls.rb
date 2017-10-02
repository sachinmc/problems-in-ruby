# combine 2 lists

def interleave(array1, array2)
  result = []
  array1.each_with_index do |item, index|
    result << item << array2[index]
  end
  result
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
