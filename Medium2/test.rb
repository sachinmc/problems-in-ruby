def bubble_sort!(array)
  length = array.size - 1
  loop do
    swapped = false
    array.each_index do |idx|
      break if idx + 1 >= length
      if array[idx] > array[idx + 1]
        swap(array, idx)
        swapped = true
      end
    end
    break if swapped == false
    length -= 1
  end
  array
end

def swap(array, idx)
  array[idx], array[idx + 1] = array[idx + 1], array[idx]
end

p bubble_sort!([5, 3]) == [3, 5]
p bubble_sort!([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
