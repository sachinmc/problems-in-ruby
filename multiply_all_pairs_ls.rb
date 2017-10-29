# multiply_all_pairs

def multiply_all_pairs(array1, array2)
  product = []
  array1.each do |arr1|
    array2.each do |arr2|
      product << arr1 * arr2
    end
  end
  product.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
