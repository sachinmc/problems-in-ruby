# a method that take an array of integers between 0 and 19, and returns an
# Array of those integers sorted based on the English words for each number

ALPHA_NUM = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
  "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
  "seventeen", "eighteen", "nineteen"]


def alphabetic_number_sort(array)
  array.map! {|num| ALPHA_NUM[num]}.sort!
  array.each_with_object([]) {|num, obj| obj << ALPHA_NUM.index(num)}
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
