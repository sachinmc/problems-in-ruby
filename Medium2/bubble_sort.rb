def bubble_sort!(array)
  loop do
    idx = 0
    swap = false
    while idx < array.size - 1
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = true
      end
      idx += 1
    end
    break if swap == false
  end
  array
end

p bubble_sort!([5, 3]) == [3, 5]
p bubble_sort!([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


# refactor for recursive solution
def bubble_sort!(array)
  swap = false
  array.each_index do |idx|
    break if idx + 1 >= array.size
    if array[idx] > array[idx + 1]
      array[idx], array[idx + 1] = array[idx + 1], array[idx]
      swap = true
    end
  end
  return array if swap == false
  bubble_sort!(array)
end

# refactor for optimization
# after a full sweep the largest item finds its place in the last slot
# after a full sweep the size of the search is reduced by 1

def bubble_sort!(array)
  itr = 0
  loop do
    idx = 0
    swap = false
    while idx < array.size - 1 - itr
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        swap = true
      end
      idx += 1
    end
    break if swap == false
    itr += 1
  end
  array
end

# refactor optimized bubble sort

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


# LS Solution
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# Optimized LS solution
# Further exploration: I've optimised LS solution. BS optimisation comes 
# from reducing the no. of iterations (i.e length of array traversed) by one
# after a sweep (full traversal). After each sweep, the largest element takes
# the last position in the array, so on the next sweep you only have to sort
# the remaining items.
# [6, 2, 7, 1, 4], after one sweep, [2, 6, 1, 4, 7], new search index 0 - 3
# [2, 6, 1, 4, 7], after two sweeps, [2, 1, 4, 6, 7], new search index 0 - 2
# and so on ..

def bubble_sort!(array)
  length = array.size - 1
  loop do
    swapped = false
    1.upto(length) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    break unless swapped
    length -= 1
  end
  nil
end
